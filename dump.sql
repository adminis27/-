--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: currencys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.currencys (
    id integer NOT NULL,
    name character(64),
    value numeric
);


ALTER TABLE public.currencys OWNER TO postgres;

--
-- Name: currencys_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.currencys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.currencys_id_seq OWNER TO postgres;

--
-- Name: currencys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.currencys_id_seq OWNED BY public.currencys.id;


--
-- Name: currencys id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currencys ALTER COLUMN id SET DEFAULT nextval('public.currencys_id_seq'::regclass);


--
-- Data for Name: currencys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.currencys (id, name, value) FROM stdin;
1	USD                                                             	28.2
2	UAH                                                             	1.0
3	EUR                                                             	28.22
4	GBP                                                             	35.7
5	RUB                                                             	0.40
6	CHF                                                             	28.5
7	PLN                                                             	7.4
8	CAD                                                             	21.0
9	CNY                                                             	4.1
10	NOK                                                             	3.3
\.


--
-- Name: currencys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.currencys_id_seq', 2, true);


--
-- Name: currencys currencys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currencys
    ADD CONSTRAINT currencys_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

