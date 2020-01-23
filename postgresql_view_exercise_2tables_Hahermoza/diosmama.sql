--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2020-01-23 12:05:23

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
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2851 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 206 (class 1259 OID 16414)
-- Name: agent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agent (
    id integer NOT NULL,
    agent_fname character varying(45) NOT NULL,
    agent_lname character varying(45) NOT NULL,
    agent_cnum character varying(45) NOT NULL
);


ALTER TABLE public.agent OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16412)
-- Name: agent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agent_id_seq OWNER TO postgres;

--
-- TOC entry 2852 (class 0 OID 0)
-- Dependencies: 205
-- Name: agent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agent_id_seq OWNED BY public.agent.id;


--
-- TOC entry 208 (class 1259 OID 16422)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    id integer NOT NULL,
    cus_fname character varying(45) NOT NULL,
    cus_lname character varying(45) NOT NULL,
    cus_cnum character varying(45) NOT NULL,
    cus_count character varying(45) NOT NULL,
    cus_type character varying(45) NOT NULL
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16420)
-- Name: customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_id_seq OWNER TO postgres;

--
-- TOC entry 2853 (class 0 OID 0)
-- Dependencies: 207
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;


--
-- TOC entry 204 (class 1259 OID 16395)
-- Name: photographer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.photographer (
    id integer NOT NULL,
    photo_lname character varying(45) NOT NULL,
    photo_fname character varying(45) NOT NULL,
    photo_num character varying(45) NOT NULL
);


ALTER TABLE public.photographer OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16428)
-- Name: photo_cus_agent; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.photo_cus_agent AS
 SELECT agent.agent_fname,
    agent.agent_lname,
    agent.agent_cnum,
    photographer.photo_fname,
    photographer.photo_lname,
    photographer.photo_num,
    customer.cus_fname,
    customer.cus_lname,
    customer.cus_cnum,
    customer.cus_count,
    customer.cus_type
   FROM public.agent,
    public.customer,
    public.photographer;


ALTER TABLE public.photo_cus_agent OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16393)
-- Name: photographer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.photographer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photographer_id_seq OWNER TO postgres;

--
-- TOC entry 2854 (class 0 OID 0)
-- Dependencies: 203
-- Name: photographer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.photographer_id_seq OWNED BY public.photographer.id;


--
-- TOC entry 2705 (class 2604 OID 16417)
-- Name: agent id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agent ALTER COLUMN id SET DEFAULT nextval('public.agent_id_seq'::regclass);


--
-- TOC entry 2706 (class 2604 OID 16425)
-- Name: customer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);


--
-- TOC entry 2704 (class 2604 OID 16398)
-- Name: photographer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.photographer ALTER COLUMN id SET DEFAULT nextval('public.photographer_id_seq'::regclass);


--
-- TOC entry 2843 (class 0 OID 16414)
-- Dependencies: 206
-- Data for Name: agent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agent (id, agent_fname, agent_lname, agent_cnum) FROM stdin;
1	Garen	Crownguard	0917938796
2	Luxanna	Crownguard	09173985754
\.


--
-- TOC entry 2845 (class 0 OID 16422)
-- Dependencies: 208
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (id, cus_fname, cus_lname, cus_cnum, cus_count, cus_type) FROM stdin;
1	Harold	Hermoza	090909090	12	Walk in
2	Ethan	Deprezon	090909090	12	Walk in
\.


--
-- TOC entry 2841 (class 0 OID 16395)
-- Dependencies: 204
-- Data for Name: photographer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.photographer (id, photo_lname, photo_fname, photo_num) FROM stdin;
1	Sama	Benio	09173101010
2	Ababao	Rebecca	091793101015
\.


--
-- TOC entry 2855 (class 0 OID 0)
-- Dependencies: 205
-- Name: agent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agent_id_seq', 2, true);


--
-- TOC entry 2856 (class 0 OID 0)
-- Dependencies: 207
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_id_seq', 2, true);


--
-- TOC entry 2857 (class 0 OID 0)
-- Dependencies: 203
-- Name: photographer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.photographer_id_seq', 2, true);


--
-- TOC entry 2710 (class 2606 OID 16419)
-- Name: agent agent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agent
    ADD CONSTRAINT agent_pkey PRIMARY KEY (id);


--
-- TOC entry 2712 (class 2606 OID 16427)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- TOC entry 2708 (class 2606 OID 16400)
-- Name: photographer photographer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.photographer
    ADD CONSTRAINT photographer_pkey PRIMARY KEY (id);


-- Completed on 2020-01-23 12:05:24

--
-- PostgreSQL database dump complete
--

