--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: web_logs; Type: TABLE; Schema: public; Owner: etl_user
--

CREATE TABLE public.web_logs (
    id integer NOT NULL,
    log_line text
);


ALTER TABLE public.web_logs OWNER TO etl_user;

--
-- Name: web_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: etl_user
--

CREATE SEQUENCE public.web_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.web_logs_id_seq OWNER TO etl_user;

--
-- Name: web_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: etl_user
--

ALTER SEQUENCE public.web_logs_id_seq OWNED BY public.web_logs.id;


--
-- Name: web_logs id; Type: DEFAULT; Schema: public; Owner: etl_user
--

ALTER TABLE ONLY public.web_logs ALTER COLUMN id SET DEFAULT nextval('public.web_logs_id_seq'::regclass);


--
-- Data for Name: web_logs; Type: TABLE DATA; Schema: public; Owner: etl_user
--

COPY public.web_logs (id, log_line) FROM stdin;
1	127.0.0.1 - - [12/Apr/2025:11:30:00] "GET /index.html HTTP/1.1" 200 2326
\.


--
-- Name: web_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: etl_user
--

SELECT pg_catalog.setval('public.web_logs_id_seq', 1, true);


--
-- Name: web_logs web_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: etl_user
--

ALTER TABLE ONLY public.web_logs
    ADD CONSTRAINT web_logs_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT USAGE ON SCHEMA public TO etl_user;


--
-- PostgreSQL database dump complete
--

