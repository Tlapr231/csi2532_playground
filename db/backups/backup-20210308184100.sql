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
-- Name: artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artists (
    name character varying(20) NOT NULL,
    birthplace character varying(20),
    style character varying(20),
    dateofbirth date,
    country character varying(100)
);


ALTER TABLE public.artists OWNER TO postgres;

--
-- Name: artworks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artworks (
    title character varying(20) NOT NULL,
    year integer,
    type character varying(20),
    price numeric(8,2),
    artist_name character varying(20)
);


ALTER TABLE public.artworks OWNER TO postgres;

--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    name character varying(20),
    address character varying(20),
    amount numeric(8,2),
    rating integer,
    CONSTRAINT customers_rating_check CHECK (((rating >= 1) AND (rating <= 10)))
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: likeartists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.likeartists (
    customer_id integer NOT NULL,
    artist_name character varying(20) NOT NULL
);


ALTER TABLE public.likeartists OWNER TO postgres;

--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artists (name, birthplace, style, dateofbirth, country) FROM stdin;
Caravaggio	Milan	Baroque	1571-09-28	\N
Smith	Ottawa	Modern	1977-12-12	\N
Picasso	Malaga	Cubism	1881-10-25	\N
Leonardo	Florence	Renaissance	1452-04-15	Italy
Michelangelo	Arezzo	Renaissance	1475-03-06	Italy
Josefa	Seville	Baroque	1630-09-09	Spain
Hans Hofmann	Weisenburg	Modern	1966-02-17	Germany
John	San Francisco	Modern	1920-02-17	USA
\.


--
-- Data for Name: artworks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artworks (title, year, type, price, artist_name) FROM stdin;
Blue	2000	Modern	10000.00	Smith
The Cardsharps	1594	Baroque	40000.00	Caravaggio
Waves	2000	\N	4000.00	Smith
Three Musicians	1921	Modern	11000.00	Picasso
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, name, address, amount, rating) FROM stdin;
2	Amy	Orleans	9.00	\N
3	Peter	Gatineau	9.80	\N
4	Emre	Preston	20000.00	5
5	Saeid	\N	40000.00	6
\.


--
-- Data for Name: likeartists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.likeartists (customer_id, artist_name) FROM stdin;
4	Picasso
5	Picasso
5	Leonardo
\.


--
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (name);


--
-- Name: artworks artworks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artworks
    ADD CONSTRAINT artworks_pkey PRIMARY KEY (title);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: likeartists likeartists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likeartists
    ADD CONSTRAINT likeartists_pkey PRIMARY KEY (artist_name, customer_id);


--
-- Name: artworks artworks_artist_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artworks
    ADD CONSTRAINT artworks_artist_name_fkey FOREIGN KEY (artist_name) REFERENCES public.artists(name);


--
-- Name: likeartists likeartists_artist_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likeartists
    ADD CONSTRAINT likeartists_artist_name_fkey FOREIGN KEY (artist_name) REFERENCES public.artists(name);


--
-- Name: likeartists likeartists_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likeartists
    ADD CONSTRAINT likeartists_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- PostgreSQL database dump complete
--

