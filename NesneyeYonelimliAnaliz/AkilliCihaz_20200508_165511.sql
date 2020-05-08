--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6
-- Dumped by pg_dump version 12rc1

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

--
-- Name: Urun; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Urun" (
    "K_id" integer NOT NULL,
    "kullaniciAdi" character varying(50) NOT NULL,
    sifre character varying(50) NOT NULL
);


ALTER TABLE public."Urun" OWNER TO postgres;

--
-- Name: Urun_K_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Urun_K_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Urun_K_id_seq" OWNER TO postgres;

--
-- Name: Urun_K_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Urun_K_id_seq" OWNED BY public."Urun"."K_id";


--
-- Name: Urun K_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Urun" ALTER COLUMN "K_id" SET DEFAULT nextval('public."Urun_K_id_seq"'::regclass);


--
-- Data for Name: Urun; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Urun" VALUES (1, 'emine', '123456');
INSERT INTO public."Urun" VALUES (2, 'elif', '456123');
INSERT INTO public."Urun" VALUES (3, 'berna', '123789');


--
-- Name: Urun_K_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Urun_K_id_seq"', 3, true);


--
-- Name: Urun UrunPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Urun"
    ADD CONSTRAINT "UrunPK" PRIMARY KEY ("K_id");


--
-- PostgreSQL database dump complete
--

