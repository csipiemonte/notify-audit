--
-- PostgreSQL database
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

SET default_tablespace = '';

--
-- Name: audit; Type: TABLE; Schema: unpaudit; Owner: unpaudit
--

CREATE TABLE unpaudit.audit (
    id bigint NOT NULL,
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
    app_name character varying(50),
    tenant character varying(16) NOT NULL
);


ALTER TABLE unpaudit.audit OWNER TO unpaudit;

--
-- Name: audit_id_seq; Type: SEQUENCE; Schema: unpaudit; Owner: unpaudit
--

CREATE SEQUENCE unpaudit.audit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE unpaudit.audit_id_seq OWNER TO unpaudit;

--
-- Name: audit_id_seq; Type: SEQUENCE OWNED BY; Schema: unpaudit; Owner: unpaudit
--

ALTER SEQUENCE unpaudit.audit_id_seq OWNED BY unpaudit.audit.id;


--
-- Name: audit id; Type: DEFAULT; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit ALTER COLUMN id SET DEFAULT nextval('unpaudit.audit_id_seq'::regclass);


--
-- Name: audit idx_3010622_primary; Type: CONSTRAINT; Schema: unpaudit; Owner: unpaudit
--

ALTER TABLE ONLY unpaudit.audit
    ADD CONSTRAINT idx_3010622_primary PRIMARY KEY (id);


--
-- Name: idx_3010622_timestamp_index; Type: INDEX; Schema: unpaudit; Owner: unpaudit
--

CREATE INDEX idx_3010622_timestamp_index ON unpaudit.audit USING btree ("timestamp");
