--
-- PostgreSQL database cluster dump
--

-- Started on 2024-06-14 14:59:50

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE b2h;
ALTER ROLE b2h WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:53ImdIeta3UIopzB8PqLow==$WiL4h4SnTHj0HJaZ/IJoIXI0+EmaqYZ2ByVv1hzPRCo=:uVopmF6g2lJPMn/dtU3XEfr7zsLr9D4Nr/G7OegL7so=';
CREATE ROLE "backend-user";
ALTER ROLE "backend-user" WITH NOSUPERUSER INHERIT NOCREATEROLE CREATEDB LOGIN REPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:yyeuUrgGVeyksbwYqU3kPA==$KUeuU9kkxOXKnbC9zY/K2LIBdp8AuTfkUEb0t454Fi0=:5rstUErm1+YHJpuXu9ISjkayAHxAiqu73hI/VvzBpzA=';

--
-- User Configurations
--


--
-- Role memberships
--

GRANT "backend-user" TO pg_create_subscription WITH INHERIT TRUE GRANTED BY b2h;
GRANT "backend-user" TO pg_execute_server_program WITH INHERIT TRUE GRANTED BY b2h;
GRANT "backend-user" TO pg_read_all_data WITH INHERIT TRUE GRANTED BY b2h;
GRANT "backend-user" TO pg_write_all_data WITH INHERIT TRUE GRANTED BY b2h;






-- Completed on 2024-06-14 14:59:50

--
-- PostgreSQL database cluster dump complete
--

