--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Ubuntu 15.3-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.3 (Ubuntu 15.3-1.pgdg20.04+1)

-- Started on 2023-09-04 19:48:55 -03

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
-- TOC entry 224 (class 1259 OID 16506)
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    id bigint NOT NULL,
    nome character varying(255) NOT NULL,
    tipo character varying(255) NOT NULL,
    valor numeric(10,2) NOT NULL,
    descricao text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16505)
-- Name: produto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produto_id_seq OWNER TO postgres;

--
-- TOC entry 3353 (class 0 OID 0)
-- Dependencies: 223
-- Name: produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;


--
-- TOC entry 3201 (class 2604 OID 16509)
-- Name: produto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);


--
-- TOC entry 3347 (class 0 OID 16506)
-- Dependencies: 224
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produto (id, nome, tipo, valor, descricao, created_at, updated_at) FROM stdin;
1	Produto Teste	Tipo X	19.99	Descrição do produto de teste	2023-08-31 00:15:18	2023-08-31 00:15:18
2	Produto Teste 2	Tipo X	19.50	Descrição do produto de teste	2023-08-31 00:22:23	2023-08-31 00:22:23
3	Produto Teste 2	Tipo X	19.50	Descrição do produto de teste	2023-08-31 00:26:23	2023-08-31 00:26:23
4	Produto Teste 2	Tipo X	19.50	Descrição do produto de teste	2023-08-31 00:27:25	2023-08-31 00:27:25
5	Produto Teste 2	Tipo X	19.50	Descrição do produto de teste	2023-08-31 00:27:52	2023-08-31 00:27:52
6	Produto Teste 2	Tipo X	19.50	Descrição do produto de teste	2023-08-31 00:31:19	2023-08-31 00:31:19
7	Produto Teste 2	Tipo X	19.50	Descrição do produto de teste	2023-08-31 00:32:55	2023-08-31 00:32:55
8	Produto Teste 2	Tipo X	19.50	Descrição do produto de teste	2023-08-31 00:33:11	2023-08-31 00:33:11
9	Produto Teste	Tipo X	19.99	Descrição do Produto Teste	2023-08-31 00:45:44	2023-08-31 00:45:44
10	Produto Teste	Eletronico	19.99	Descrição xxxx	2023-08-31 00:47:51	2023-08-31 00:47:51
11	Produto Teste	Eletronico	19.99	Descrição xxxx	2023-08-31 00:50:02	2023-08-31 00:50:02
12	Produto Teste	Eletronico	19.99	Descrição xxxx	2023-08-31 00:50:24	2023-08-31 00:50:24
13	Produto Teste	Eletronico	19.99	Descrição xxxx	2023-08-31 00:55:08	2023-08-31 00:55:08
14	Produto Teste	Eletronico	19.99	Descrição xxxx	2023-08-31 00:55:22	2023-08-31 00:55:22
15	Produto Original	Tipo A	29.99	Descrição original	2023-08-31 01:05:08	2023-08-31 01:05:08
16	Produto Original	Tipo A	29.99	Descrição original	2023-08-31 01:07:22	2023-08-31 01:07:22
17	Produto Atualizado	Tipo B	39.99	Descrição atualizada	2023-08-31 01:08:00	2023-08-31 01:08:00
18	Produto Atualizado	Tipo B	39.99	Descrição atualizada	2023-08-31 01:10:39	2023-08-31 01:10:39
19	Produto para Deletar	Tipo Z	9.99	Descrição para deletar	2023-08-31 01:10:57	2023-08-31 01:10:57
\.


--
-- TOC entry 3354 (class 0 OID 0)
-- Dependencies: 223
-- Name: produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produto_id_seq', 21, true);


--
-- TOC entry 3203 (class 2606 OID 16513)
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);


-- Completed on 2023-09-04 19:48:55 -03

--
-- PostgreSQL database dump complete
--

