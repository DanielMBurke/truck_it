--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: reviews; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.reviews (
    review_id integer NOT NULL,
    username character varying(100) NOT NULL,
    rating integer NOT NULL,
    review_title character varying(200) NOT NULL,
    review_text character varying(1000) NOT NULL,
    review_date timestamp without time zone DEFAULT now()
);


--
-- Name: reviews_review_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.reviews_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: reviews_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.reviews_review_id_seq OWNED BY public.reviews.review_id;


--
-- Name: reviews review_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reviews ALTER COLUMN review_id SET DEFAULT nextval('public.reviews_review_id_seq'::regclass);


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.reviews (review_id, username, rating, review_title, review_text, review_date) FROM stdin;
1	dwintrich	5	Changed my life	Before reading this book, my squirrel parties were always lackluster (I never had enough cigars!).  Thanks to Craig's insightful advice, my squirrel parties are now at the top of everyone's social calendar!	2018-07-11 11:21:34.314528
2	jtucholski	4	No party complete without it	There's no way to hold a succesful party without first looking at this book!	2018-07-11 11:21:34.352224
3	ccastelaz	2	Slow read	I fell asleep a few times because it was a slow read	2018-07-11 11:21:34.359129
4	cborders	5	I knew nothing about squirrel parties	After reading this, I am not the master on squirrel parties!	2018-07-11 11:21:34.369603
5	BusastaClusterblast	1	WOOT!	beautiful!	2018-07-11 14:05:07.446
6	My mom	5	Wonderful!	I'm so proud! A book about squirrel parties with cigars. What could possibly go wrong?	2018-07-11 16:46:11.249
\.


--
-- Name: reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.reviews_review_id_seq', 6, true);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (review_id);


--
-- PostgreSQL database dump complete
--

