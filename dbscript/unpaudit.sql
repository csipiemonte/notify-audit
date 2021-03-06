CREATE TABLE unpaudit.audit (
	id bigserial NOT NULL,
	uuid varchar(36) NOT NULL,
	x_request_id varchar(60) NOT NULL,
	"timestamp" timestamptz NOT NULL DEFAULT now(),
	client_name varchar(60) NULL DEFAULT 'UNKNOWN'::character varying,
	resource varchar(255) NOT NULL,
	http_method varchar(30) NOT NULL,
	query_params varchar(255) NULL,
	body text NULL,
	http_protocol varchar(10) NULL,
	forwarded varchar(255) NULL,
	from_header varchar(255) NULL,
	host varchar(255) NULL,
	origin varchar(255) NULL,
	user_agent varchar(255) NULL,
	x_forwarded_for varchar(255) NULL,
	x_forwarded_host varchar(255) NULL,
	x_forwarded_proto varchar(255) NULL,
	headers text NULL,
	http_status varchar(3) NULL,
	request_ip_address varchar(50) NULL,
	server_name varchar(50) NULL,
	server_ipaddress varchar(50) NULL,
	server_port varchar(6) NULL,
	app_name varchar(50) NULL,
	CONSTRAINT idx_10515422_primary PRIMARY KEY (id)
);
CREATE INDEX idx_10515422_timestamp_index ON unpaudit.audit USING btree ("timestamp");