--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: unpaudit; Type: SCHEMA; Schema: -; Owner: unpaudit
--

CREATE SCHEMA unpaudit;


ALTER SCHEMA unpaudit OWNER TO unpaudit;

--
-- Name: SCHEMA unpaudit; Type: COMMENT; Schema: -; Owner: unpaudit
--

COMMENT ON SCHEMA unpaudit IS 'Ref. Muni';


SET default_tablespace = '';

--
-- Name: audit_archive; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying,
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(80),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
)
PARTITION BY RANGE ("timestamp");


ALTER TABLE unpaudit.audit_archive OWNER TO unpaudit;

SET default_table_access_method = heap;

--
-- Name: audit_archive_y2020m09; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2020m09 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2020m09 OWNER TO unpaudit;

--
-- Name: audit_archive_y2020m10; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2020m10 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2020m10 OWNER TO unpaudit;

--
-- Name: audit_archive_y2020m11; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2020m11 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2020m11 OWNER TO unpaudit;

--
-- Name: audit_archive_y2020m12; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2020m12 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2020m12 OWNER TO unpaudit;

--
-- Name: audit_archive_y2021m01; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2021m01 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2021m01 OWNER TO unpaudit;

--
-- Name: audit_archive_y2021m02; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2021m02 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2021m02 OWNER TO unpaudit;

--
-- Name: audit_archive_y2021m03; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2021m03 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2021m03 OWNER TO unpaudit;

--
-- Name: audit_archive_y2021m04; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2021m04 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2021m04 OWNER TO unpaudit;

--
-- Name: audit_archive_y2021m05; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2021m05 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2021m05 OWNER TO unpaudit;

--
-- Name: audit_archive_y2021m06; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2021m06 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2021m06 OWNER TO unpaudit;

--
-- Name: audit_archive_y2021m07; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2021m07 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2021m07 OWNER TO unpaudit;

--
-- Name: audit_archive_y2021m08; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2021m08 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2021m08 OWNER TO unpaudit;

--
-- Name: audit_archive_y2021m09; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2021m09 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2021m09 OWNER TO unpaudit;

--
-- Name: audit_archive_y2021m10; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2021m10 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2021m10 OWNER TO unpaudit;

--
-- Name: audit_archive_y2021m11; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2021m11 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2021m11 OWNER TO unpaudit;

--
-- Name: audit_archive_y2021m12; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2021m12 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2021m12 OWNER TO unpaudit;

--
-- Name: audit_archive_y2022m01; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit_archive_y2022m01 (
    id bigint DEFAULT '0'::numeric NOT NULL,
    uuid character varying(36) NOT NULL,
    x_request_id character varying(60) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    client_name character varying(60) DEFAULT 'UNKNOWN'::character varying,
    resource character varying(255) NOT NULL,
    http_method character varying(30) NOT NULL,
    query_params character varying(255),
    body text,
    http_protocol character varying(10),
    forwarded character varying(255),
    from_header character varying(255),
    host character varying(255),
    origin character varying(255),
    user_agent character varying(255),
    x_forwarded_for character varying(255),
    x_forwarded_host character varying(255),
    x_forwarded_proto character varying(255),
    headers text,
    http_status character varying(3),
    request_ip_address character varying(50),
    server_name character varying(50),
    server_ipaddress character varying(50),
    server_port character varying(6),
    app_name character varying(50)
);


ALTER TABLE unpaudit.audit_archive_y2022m01 OWNER TO unpaudit;

--
-- Name: lock_audit_archive; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.lock_audit_archive (
    id bigint NOT NULL,
    data_update timestamp with time zone,
    owner_lock character varying(30),
    note text
);


ALTER TABLE unpaudit.lock_audit_archive OWNER TO unpaudit;

--
-- Name: audit_archive_y2020m09; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2020m09 FOR VALUES FROM ('2020-09-01 00:00:00+02') TO ('2020-10-01 00:00:00+02');


--
-- Name: audit_archive_y2020m10; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2020m10 FOR VALUES FROM ('2020-10-01 00:00:00+02') TO ('2020-11-01 00:00:00+01');


--
-- Name: audit_archive_y2020m11; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2020m11 FOR VALUES FROM ('2020-11-01 00:00:00+01') TO ('2020-12-01 00:00:00+01');


--
-- Name: audit_archive_y2020m12; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2020m12 FOR VALUES FROM ('2020-12-01 00:00:00+01') TO ('2021-01-01 00:00:00+01');


--
-- Name: audit_archive_y2021m01; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2021m01 FOR VALUES FROM ('2021-01-01 00:00:00+01') TO ('2021-02-01 00:00:00+01');


--
-- Name: audit_archive_y2021m02; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2021m02 FOR VALUES FROM ('2021-02-01 00:00:00+01') TO ('2021-03-01 00:00:00+01');


--
-- Name: audit_archive_y2021m03; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2021m03 FOR VALUES FROM ('2021-03-01 00:00:00+01') TO ('2021-04-01 00:00:00+02');


--
-- Name: audit_archive_y2021m04; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2021m04 FOR VALUES FROM ('2021-04-01 00:00:00+02') TO ('2021-05-01 00:00:00+02');


--
-- Name: audit_archive_y2021m05; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2021m05 FOR VALUES FROM ('2021-05-01 00:00:00+02') TO ('2021-06-01 00:00:00+02');


--
-- Name: audit_archive_y2021m06; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2021m06 FOR VALUES FROM ('2021-06-01 00:00:00+02') TO ('2021-07-01 00:00:00+02');


--
-- Name: audit_archive_y2021m07; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2021m07 FOR VALUES FROM ('2021-07-01 00:00:00+02') TO ('2021-08-01 00:00:00+02');


--
-- Name: audit_archive_y2021m08; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2021m08 FOR VALUES FROM ('2021-08-01 00:00:00+02') TO ('2021-09-01 00:00:00+02');


--
-- Name: audit_archive_y2021m09; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2021m09 FOR VALUES FROM ('2021-09-01 00:00:00+02') TO ('2021-10-01 00:00:00+02');


--
-- Name: audit_archive_y2021m10; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2021m10 FOR VALUES FROM ('2021-10-01 00:00:00+02') TO ('2021-11-01 00:00:00+01');


--
-- Name: audit_archive_y2021m11; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2021m11 FOR VALUES FROM ('2021-11-01 00:00:00+01') TO ('2021-12-01 00:00:00+01');


--
-- Name: audit_archive_y2021m12; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2021m12 FOR VALUES FROM ('2021-12-01 00:00:00+01') TO ('2022-01-01 00:00:00+01');


--
-- Name: audit_archive_y2022m01; Type: TABLE ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit_archive ATTACH PARTITION unpaudit.audit_archive_y2022m01 FOR VALUES FROM ('2022-01-01 00:00:00+01') TO ('2022-02-01 00:00:00+01');


--
-- Name: lock_audit_archive idx_10515909_primary; Type: CONSTRAINT; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.lock_audit_archive
    ADD CONSTRAINT idx_10515909_primary PRIMARY KEY (id);


--
-- Name: audit_archive_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_id_idx ON ONLY unpaudit.audit_archive USING btree (id);


--
-- Name: audit_archive_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_timestamp_idx ON ONLY unpaudit.audit_archive USING btree ("timestamp");


--
-- Name: audit_archive_y2020m09_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2020m09_id_idx ON unpaudit.audit_archive_y2020m09 USING btree (id);


--
-- Name: audit_archive_y2020m09_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2020m09_timestamp_idx ON unpaudit.audit_archive_y2020m09 USING btree ("timestamp");


--
-- Name: audit_archive_y2020m10_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2020m10_id_idx ON unpaudit.audit_archive_y2020m10 USING btree (id);


--
-- Name: audit_archive_y2020m10_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2020m10_timestamp_idx ON unpaudit.audit_archive_y2020m10 USING btree ("timestamp");


--
-- Name: audit_archive_y2020m11_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2020m11_id_idx ON unpaudit.audit_archive_y2020m11 USING btree (id);


--
-- Name: audit_archive_y2020m11_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2020m11_timestamp_idx ON unpaudit.audit_archive_y2020m11 USING btree ("timestamp");


--
-- Name: audit_archive_y2020m12_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2020m12_id_idx ON unpaudit.audit_archive_y2020m12 USING btree (id);


--
-- Name: audit_archive_y2020m12_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2020m12_timestamp_idx ON unpaudit.audit_archive_y2020m12 USING btree ("timestamp");


--
-- Name: audit_archive_y2021m01_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m01_id_idx ON unpaudit.audit_archive_y2021m01 USING btree (id);


--
-- Name: audit_archive_y2021m01_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m01_timestamp_idx ON unpaudit.audit_archive_y2021m01 USING btree ("timestamp");


--
-- Name: audit_archive_y2021m02_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m02_id_idx ON unpaudit.audit_archive_y2021m02 USING btree (id);


--
-- Name: audit_archive_y2021m02_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m02_timestamp_idx ON unpaudit.audit_archive_y2021m02 USING btree ("timestamp");


--
-- Name: audit_archive_y2021m03_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m03_id_idx ON unpaudit.audit_archive_y2021m03 USING btree (id);


--
-- Name: audit_archive_y2021m03_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m03_timestamp_idx ON unpaudit.audit_archive_y2021m03 USING btree ("timestamp");


--
-- Name: audit_archive_y2021m04_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m04_id_idx ON unpaudit.audit_archive_y2021m04 USING btree (id);


--
-- Name: audit_archive_y2021m04_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m04_timestamp_idx ON unpaudit.audit_archive_y2021m04 USING btree ("timestamp");


--
-- Name: audit_archive_y2021m05_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m05_id_idx ON unpaudit.audit_archive_y2021m05 USING btree (id);


--
-- Name: audit_archive_y2021m05_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m05_timestamp_idx ON unpaudit.audit_archive_y2021m05 USING btree ("timestamp");


--
-- Name: audit_archive_y2021m06_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m06_id_idx ON unpaudit.audit_archive_y2021m06 USING btree (id);


--
-- Name: audit_archive_y2021m06_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m06_timestamp_idx ON unpaudit.audit_archive_y2021m06 USING btree ("timestamp");


--
-- Name: audit_archive_y2021m07_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m07_id_idx ON unpaudit.audit_archive_y2021m07 USING btree (id);


--
-- Name: audit_archive_y2021m07_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m07_timestamp_idx ON unpaudit.audit_archive_y2021m07 USING btree ("timestamp");


--
-- Name: audit_archive_y2021m08_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m08_id_idx ON unpaudit.audit_archive_y2021m08 USING btree (id);


--
-- Name: audit_archive_y2021m08_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m08_timestamp_idx ON unpaudit.audit_archive_y2021m08 USING btree ("timestamp");


--
-- Name: audit_archive_y2021m09_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m09_id_idx ON unpaudit.audit_archive_y2021m09 USING btree (id);


--
-- Name: audit_archive_y2021m09_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m09_timestamp_idx ON unpaudit.audit_archive_y2021m09 USING btree ("timestamp");


--
-- Name: audit_archive_y2021m10_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m10_id_idx ON unpaudit.audit_archive_y2021m10 USING btree (id);


--
-- Name: audit_archive_y2021m10_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m10_timestamp_idx ON unpaudit.audit_archive_y2021m10 USING btree ("timestamp");


--
-- Name: audit_archive_y2021m11_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m11_id_idx ON unpaudit.audit_archive_y2021m11 USING btree (id);


--
-- Name: audit_archive_y2021m11_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m11_timestamp_idx ON unpaudit.audit_archive_y2021m11 USING btree ("timestamp");


--
-- Name: audit_archive_y2021m12_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m12_id_idx ON unpaudit.audit_archive_y2021m12 USING btree (id);


--
-- Name: audit_archive_y2021m12_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2021m12_timestamp_idx ON unpaudit.audit_archive_y2021m12 USING btree ("timestamp");


--
-- Name: audit_archive_y2022m01_id_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2022m01_id_idx ON unpaudit.audit_archive_y2022m01 USING btree (id);


--
-- Name: audit_archive_y2022m01_timestamp_idx; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX audit_archive_y2022m01_timestamp_idx ON unpaudit.audit_archive_y2022m01 USING btree ("timestamp");


--
-- Name: audit_archive_y2020m09_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2020m09_id_idx;


--
-- Name: audit_archive_y2020m09_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2020m09_timestamp_idx;


--
-- Name: audit_archive_y2020m10_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2020m10_id_idx;


--
-- Name: audit_archive_y2020m10_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2020m10_timestamp_idx;


--
-- Name: audit_archive_y2020m11_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2020m11_id_idx;


--
-- Name: audit_archive_y2020m11_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2020m11_timestamp_idx;


--
-- Name: audit_archive_y2020m12_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2020m12_id_idx;


--
-- Name: audit_archive_y2020m12_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2020m12_timestamp_idx;


--
-- Name: audit_archive_y2021m01_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2021m01_id_idx;


--
-- Name: audit_archive_y2021m01_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2021m01_timestamp_idx;


--
-- Name: audit_archive_y2021m02_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2021m02_id_idx;


--
-- Name: audit_archive_y2021m02_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2021m02_timestamp_idx;


--
-- Name: audit_archive_y2021m03_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2021m03_id_idx;


--
-- Name: audit_archive_y2021m03_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2021m03_timestamp_idx;


--
-- Name: audit_archive_y2021m04_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2021m04_id_idx;


--
-- Name: audit_archive_y2021m04_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2021m04_timestamp_idx;


--
-- Name: audit_archive_y2021m05_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2021m05_id_idx;


--
-- Name: audit_archive_y2021m05_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2021m05_timestamp_idx;


--
-- Name: audit_archive_y2021m06_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2021m06_id_idx;


--
-- Name: audit_archive_y2021m06_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2021m06_timestamp_idx;


--
-- Name: audit_archive_y2021m07_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2021m07_id_idx;


--
-- Name: audit_archive_y2021m07_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2021m07_timestamp_idx;


--
-- Name: audit_archive_y2021m08_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2021m08_id_idx;


--
-- Name: audit_archive_y2021m08_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2021m08_timestamp_idx;


--
-- Name: audit_archive_y2021m09_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2021m09_id_idx;


--
-- Name: audit_archive_y2021m09_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2021m09_timestamp_idx;


--
-- Name: audit_archive_y2021m10_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2021m10_id_idx;


--
-- Name: audit_archive_y2021m10_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2021m10_timestamp_idx;


--
-- Name: audit_archive_y2021m11_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2021m11_id_idx;


--
-- Name: audit_archive_y2021m11_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2021m11_timestamp_idx;


--
-- Name: audit_archive_y2021m12_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2021m12_id_idx;


--
-- Name: audit_archive_y2021m12_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2021m12_timestamp_idx;


--
-- Name: audit_archive_y2022m01_id_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_id_idx ATTACH PARTITION unpaudit.audit_archive_y2022m01_id_idx;


--
-- Name: audit_archive_y2022m01_timestamp_idx; Type: INDEX ATTACH; Schema: unpaudit; Owner: unpaudit
--

ALTER INDEX unpaudit.audit_archive_timestamp_idx ATTACH PARTITION unpaudit.audit_archive_y2022m01_timestamp_idx;
