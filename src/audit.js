var commons = require("../../commons/src/commons");
const conf = commons.merge(require('./conf/audit'), require('./conf/audit-' + (process.env.ENVIRONMENT || 'localhost')));
const obj = commons.obj(conf);

const logger = obj.logger();
const db = obj.db();
const queryBuilder = obj.query_builder();

var to_continue_insert = true;

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

function checkAudit(payload) {
    var result = [];
    if (!payload) {
        result.push("payload of the body is mandatory");
        return result;
    }

    if (typeof payload !== 'object' || Array.isArray(payload)) {
        result.push("payload of the body must be an object");
        return result;
    }

    var pl = payload;
    if (!pl.uuid) result.push("uuid is mandatory");
    if (!pl.timestamp) result.push("timestamp is mandatory");
    return result;
}

var bulk = [];
async function insert(data) {
    var audit = data.payload;
    
    Object.keys(audit).filter( e=> typeof audit[e] === 'object').forEach(e => audit[e] = JSON.stringify(audit[e]));
    bulk.push(queryBuilder.insert().table("audit").values(audit).sql);
    while(bulk.length >= 500) await sleep(1000);
}

async function doInsert() {
    if(!to_continue_insert) return;

    if(bulk.length == 0) return setTimeout(doInsert, 1000);
    try {
        logger.info("bulk of " + bulk.length + " audits");
        let sql = bulk.join(";");
        bulk = [];
        await db.execute(sql);
        logger.debug("insert audits completed");
    } catch (e) {
        logger.error("error in query: ", e.message);
    }
    setTimeout(doInsert, 0);
}

doInsert();

logger.debug(JSON.stringify(process.env, null, 4));
logger.debug(JSON.stringify(conf, null, 4));
obj.consumer("audit", checkAudit, null, insert, true)();

async function shutdown() {
    to_continue_insert = false;
    try {
        await sleep(2000);
        logger.debug("STOPPING DATABASE");
        await db.end();
        logger.debug("STOPPED DATABASE");
    } catch(e) {
        logger.error("error closing connection: ", e.message);
        process.exit(1);
    }
}

process.on("SIGINT", shutdown);
process.on("SIGTERM", shutdown);