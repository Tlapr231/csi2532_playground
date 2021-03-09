--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: athletes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.athletes (
    id integer NOT NULL,
    name character varying(70),
    dob date,
    gender character(1)
);


ALTER TABLE public.athletes OWNER TO postgres;

--
-- Name: competitions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.competitions (
    id integer NOT NULL,
    name character varying(255),
    venue character varying(255),
    start_date date,
    start_time time without time zone,
    duration integer
);


ALTER TABLE public.competitions OWNER TO postgres;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    migration character varying(255) NOT NULL,
    migrated_at time without time zone
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Data for Name: athletes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.athletes (id, name, dob, gender) FROM stdin;
1	Paulina	1975-12-01	f
2	Riley	1987-04-21	m
3	Lois	1945-07-23	f
4	Adem	1976-04-02	m
\.


--
-- Data for Name: competitions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.competitions (id, name, venue, start_date, start_time, duration) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (migration, migrated_at) FROM stdin;
20210222181300-create-athletes.sql	18:13:00
20210222182800_create_migrations.sql	18:28:00
20210222183500-update-athletes.sql	18:35:00
20210222185400-create-competitions.sql	18:54:00
\.


--
-- Name: athletes athletes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.athletes
    ADD CONSTRAINT athletes_pkey PRIMARY KEY (id);


--
-- Name: competitions competitions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competitions
    ADD CONSTRAINT competitions_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (migration);


--
-- PostgreSQL database dump complete
--

