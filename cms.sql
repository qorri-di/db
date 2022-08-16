--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-08-16 16:02:00

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
-- TOC entry 244 (class 1255 OID 49797)
-- Name: get_all_talent(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.get_all_talent() RETURNS TABLE(id_talent text, name_talent text, gender text, age bigint, expected_salary bigint, work_experience bigint, latest_position text, latest_company text, status_salary boolean, latest_work_periode text, location_work text, name_skill text, name_industry text, name_level text, name_location text, name_position text, name_status text, start_date date, end_date date, name_edu text, status_edu text, periode_edu text)
    LANGUAGE sql
    AS $$
select distinct
	a.id_talent,
    a.name_talent,
    a.gender,
	a.age,
	a.expected_salary,
	a.work_experience,
	a.latest_position,
	a.latest_company,
	a.status_salary,
	a.latest_work_periode,
	a.location_work,
    c.name_skill,
    e.name_industry,
    g.name_level,
    i.name_location,
    k.name_position,
    m.name_status,
    n.start_date,
    n.end_date,
	o.name_edu,
	o.status_edu,
	o.periode_edu
from
    cms_talent a
left join cms_skill_talent b on b.id_talent = a.id_talent
left join cms_skill c on c.id_skill = b.id_skill
left join cms_industry_talent d on d.id_talent = a.id_talent
left join cms_industry e on e.id_industry = d.id_industry
left join cms_level_talent f on f.id_talent = a.id_talent
left join cms_level g on g.id_level = f.id_level
left join cms_location_talent h on h.id_talent = a.id_talent
left join cms_location i on i.id_location = h.id_location
left join cms_position_talent j on j.id_talent = a.id_talent
left join cms_position k on k.id_position = j.id_position
left join cms_status_talent l on l.id_talent = a.id_talent
left join cms_status m on m.id_status = l.id_status
left join cms_contract n on n.idtalent = a.id_talent
left join cms_education o on o.id_talent = a.id_talent

$$;


ALTER FUNCTION public.get_all_talent() OWNER TO postgres;

--
-- TOC entry 245 (class 1255 OID 49798)
-- Name: get_talent_by_id(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.get_talent_by_id(idtalent text) RETURNS TABLE(id_talent text, name_talent text, gender text, age bigint, expected_salary bigint, work_experience bigint, latest_position text, latest_company text, status_salary boolean, latest_work_periode text, location_work text, name_skill text, name_industry text, name_level text, name_location text, name_position text, name_status text, start_date date, end_date date, name_edu text, status_edu text, periode_edu text)
    LANGUAGE sql
    AS $_$
select distinct
	a.id_talent,
    a.name_talent,
    a.gender,
	a.age,
	a.expected_salary,
	a.work_experience,
	a.latest_position,
	a.latest_company,
	a.status_salary,
	a.latest_work_periode,
	a.location_work,
    c.name_skill,
    e.name_industry,
    g.name_level,
    i.name_location,
    k.name_position,
    m.name_status,
    n.start_date,
    n.end_date,
	o.name_edu,
	o.status_edu,
	o.periode_edu
from
    cms_talent a
left join cms_skill_talent b on b.id_talent = a.id_talent
left join cms_skill c on c.id_skill = b.id_skill
left join cms_industry_talent d on d.id_talent = a.id_talent
left join cms_industry e on e.id_industry = d.id_industry
left join cms_level_talent f on f.id_talent = a.id_talent
left join cms_level g on g.id_level = f.id_level
left join cms_location_talent h on h.id_talent = a.id_talent
left join cms_location i on i.id_location = h.id_location
left join cms_position_talent j on j.id_talent = a.id_talent
left join cms_position k on k.id_position = j.id_position
left join cms_status_talent l on l.id_talent = a.id_talent
left join cms_status m on m.id_status = l.id_status
left join cms_contract n on n.idtalent = a.id_talent
left join cms_education o on o.id_talent = a.id_talent

where a.id_talent = $1

$_$;


ALTER FUNCTION public.get_talent_by_id(idtalent text) OWNER TO postgres;

--
-- TOC entry 246 (class 1255 OID 49799)
-- Name: get_talent_by_masterdata(text, text, text, text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.get_talent_by_masterdata(name_skill text, name_industry text, name_level text, name_location text, name_position text) RETURNS TABLE(id_talent text, name_talent text, gender text, age bigint, expected_salary bigint, work_experience bigint, latest_position text, latest_company text, status_salary boolean, latest_work_periode text, location_work text, name_skill text, name_industry text, name_level text, name_location text, name_position text, name_status text, start_date date, end_date date, name_edu text, status_edu text, periode_edu text)
    LANGUAGE sql
    AS $_$
select distinct
	a.id_talent,
    a.name_talent,
    a.gender,
	a.age,
	a.expected_salary,
	a.work_experience,
	a.latest_position,
	a.latest_company,
	a.status_salary,
	a.latest_work_periode,
	a.location_work,
    c.name_skill,
    e.name_industry,
    g.name_level,
    i.name_location,
    k.name_position,
    m.name_status,
    n.start_date,
    n.end_date,
	o.name_edu,
	o.status_edu,
	o.periode_edu
from
    cms_talent a
left join cms_skill_talent b on b.id_talent = a.id_talent
left join cms_skill c on c.id_skill = b.id_skill
left join cms_industry_talent d on d.id_talent = a.id_talent
left join cms_industry e on e.id_industry = d.id_industry
left join cms_level_talent f on f.id_talent = a.id_talent
left join cms_level g on g.id_level = f.id_level
left join cms_location_talent h on h.id_talent = a.id_talent
left join cms_location i on i.id_location = h.id_location
left join cms_position_talent j on j.id_talent = a.id_talent
left join cms_position k on k.id_position = j.id_position
left join cms_status_talent l on l.id_talent = a.id_talent
left join cms_status m on m.id_status = l.id_status
left join cms_contract n on n.idtalent = a.id_talent
left join cms_education o on o.id_talent = a.id_talent

where c.name_skill = $1 and e.name_industry = $2 and g.name_level = $3 and i.name_location = $4 and k.name_position = $5

$_$;


ALTER FUNCTION public.get_talent_by_masterdata(name_skill text, name_industry text, name_level text, name_location text, name_position text) OWNER TO postgres;

--
-- TOC entry 247 (class 1255 OID 49800)
-- Name: get_talent_by_name(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.get_talent_by_name(nametalent text) RETURNS TABLE(id_talent text, name_talent text, gender text, age bigint, expected_salary bigint, work_experience bigint, latest_position text, latest_company text, status_salary boolean, latest_work_periode text, location_work text, name_skill text, name_industry text, name_level text, name_location text, name_position text, name_status text, start_date date, end_date date, name_edu text, status_edu text, periode_edu text)
    LANGUAGE sql
    AS $_$
select distinct
	a.id_talent,
    a.name_talent,
    a.gender,
	a.age,
	a.expected_salary,
	a.work_experience,
	a.latest_position,
	a.latest_company,
	a.status_salary,
	a.latest_work_periode,
	a.location_work,
    c.name_skill,
    e.name_industry,
    g.name_level,
    i.name_location,
    k.name_position,
    m.name_status,
    n.start_date,
    n.end_date,
	o.name_edu,
	o.status_edu,
	o.periode_edu
from
    cms_talent a
left join cms_skill_talent b on b.id_talent = a.id_talent
left join cms_skill c on c.id_skill = b.id_skill
left join cms_industry_talent d on d.id_talent = a.id_talent
left join cms_industry e on e.id_industry = d.id_industry
left join cms_level_talent f on f.id_talent = a.id_talent
left join cms_level g on g.id_level = f.id_level
left join cms_location_talent h on h.id_talent = a.id_talent
left join cms_location i on i.id_location = h.id_location
left join cms_position_talent j on j.id_talent = a.id_talent
left join cms_position k on k.id_position = j.id_position
left join cms_status_talent l on l.id_talent = a.id_talent
left join cms_status m on m.id_status = l.id_status
left join cms_contract n on n.idtalent = a.id_talent
left join cms_education o on o.id_talent = a.id_talent

where a.name_talent = $1

$_$;


ALTER FUNCTION public.get_talent_by_name(nametalent text) OWNER TO postgres;

--
-- TOC entry 248 (class 1255 OID 49801)
-- Name: get_talent_by_status(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.get_talent_by_status(statustalent text) RETURNS TABLE(id_talent text, name_talent text, gender text, age bigint, expected_salary bigint, work_experience bigint, latest_position text, latest_company text, status_salary boolean, latest_work_periode text, location_work text, name_skill text, name_industry text, name_level text, name_location text, name_position text, name_status text, start_date date, end_date date, name_edu text, status_edu text, periode_edu text)
    LANGUAGE sql
    AS $_$
select distinct
	a.id_talent,
    a.name_talent,
    a.gender,
	a.age,
	a.expected_salary,
	a.work_experience,
	a.latest_position,
	a.latest_company,
	a.status_salary,
	a.latest_work_periode,
	a.location_work,
    c.name_skill,
    e.name_industry,
    g.name_level,
    i.name_location,
    k.name_position,
    m.name_status,
    n.start_date,
    n.end_date,
	o.name_edu,
	o.status_edu,
	o.periode_edu
from
    cms_talent a
left join cms_skill_talent b on b.id_talent = a.id_talent
left join cms_skill c on c.id_skill = b.id_skill
left join cms_industry_talent d on d.id_talent = a.id_talent
left join cms_industry e on e.id_industry = d.id_industry
left join cms_level_talent f on f.id_talent = a.id_talent
left join cms_level g on g.id_level = f.id_level
left join cms_location_talent h on h.id_talent = a.id_talent
left join cms_location i on i.id_location = h.id_location
left join cms_position_talent j on j.id_talent = a.id_talent
left join cms_position k on k.id_position = j.id_position
left join cms_status_talent l on l.id_talent = a.id_talent
left join cms_status m on m.id_status = l.id_status
left join cms_contract n on n.idtalent = a.id_talent
left join cms_education o on o.id_talent = a.id_talent

where m.name_status = $1

$_$;


ALTER FUNCTION public.get_talent_by_status(statustalent text) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 49808)
-- Name: cms_contract; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_contract (
    idcontract bigint NOT NULL,
    end_date date,
    idtalent character varying(255),
    start_date date
);


ALTER TABLE public.cms_contract OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 49813)
-- Name: cms_education; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_education (
    id_edu bigint NOT NULL,
    id_talent character varying(255),
    name_edu character varying(255),
    periode_edu character varying(255),
    status_edu character varying(255)
);


ALTER TABLE public.cms_education OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 57562)
-- Name: cms_file_upload; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_file_upload (
    file_id character varying(255) NOT NULL,
    file_name character varying(255),
    file_path character varying
);


ALTER TABLE public.cms_file_upload OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 49820)
-- Name: cms_industry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_industry (
    id_industry character varying(255) NOT NULL,
    name_industry character varying(255)
);


ALTER TABLE public.cms_industry OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 49827)
-- Name: cms_industry_talent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_industry_talent (
    id_industry_talent bigint NOT NULL,
    create_date date,
    delete_date date,
    id_industry character varying(255),
    id_talent character varying(255),
    status character varying(255)
);


ALTER TABLE public.cms_industry_talent OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 49834)
-- Name: cms_level; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_level (
    id_level character varying(255) NOT NULL,
    name_level character varying(255)
);


ALTER TABLE public.cms_level OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 49841)
-- Name: cms_level_talent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_level_talent (
    id_level_talent bigint NOT NULL,
    create_date date,
    delete_date date,
    id_level character varying(255),
    id_talent character varying(255),
    status character varying(255)
);


ALTER TABLE public.cms_level_talent OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 49848)
-- Name: cms_location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_location (
    id_location character varying(255) NOT NULL,
    name_location character varying(255)
);


ALTER TABLE public.cms_location OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 49855)
-- Name: cms_location_talent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_location_talent (
    id_location_talent bigint NOT NULL,
    create_date date,
    delete_date date,
    id_location character varying(255),
    id_talent character varying(255),
    status character varying(255)
);


ALTER TABLE public.cms_location_talent OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 49862)
-- Name: cms_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_menu (
    id_menu bigint NOT NULL,
    id_role character varying(255),
    name_menu character varying(255)
);


ALTER TABLE public.cms_menu OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 49869)
-- Name: cms_page; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_page (
    id_page bigint NOT NULL,
    id_role character varying(255),
    page character varying(255),
    status character varying(255),
    title character varying(255)
);


ALTER TABLE public.cms_page OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 57546)
-- Name: cms_partner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_partner (
    file_name character varying,
    file_path character varying,
    status_partner character varying,
    partner_id bigint NOT NULL
);


ALTER TABLE public.cms_partner OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 49876)
-- Name: cms_position; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_position (
    id_position character varying(255) NOT NULL,
    name_position character varying(255)
);


ALTER TABLE public.cms_position OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 49883)
-- Name: cms_position_talent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_position_talent (
    id_position_talent bigint NOT NULL,
    create_date date,
    delete_date date,
    id_position character varying(255),
    id_talent character varying(255),
    status character varying(255)
);


ALTER TABLE public.cms_position_talent OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 49890)
-- Name: cms_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_post (
    id_post bigint NOT NULL,
    create_date date,
    id_role character varying(255),
    image character varying(255),
    post character varying(255),
    status character varying(255),
    title character varying(255)
);


ALTER TABLE public.cms_post OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 49897)
-- Name: cms_roleuser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_roleuser (
    id_role character varying(255) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.cms_roleuser OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 49904)
-- Name: cms_setting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_setting (
    id_setting bigint NOT NULL,
    email character varying(255),
    id_role character varying(255),
    image character varying(255),
    no character varying(255),
    tagline character varying(255),
    title character varying(255)
);


ALTER TABLE public.cms_setting OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 49911)
-- Name: cms_skill; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_skill (
    id_skill character varying(255) NOT NULL,
    name_skill character varying(255)
);


ALTER TABLE public.cms_skill OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 49918)
-- Name: cms_skill_talent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_skill_talent (
    id_skill_talent bigint NOT NULL,
    id_skill character varying(255),
    id_talent character varying(255)
);


ALTER TABLE public.cms_skill_talent OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 49925)
-- Name: cms_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_status (
    id_status character varying(255) NOT NULL,
    name_status character varying(255)
);


ALTER TABLE public.cms_status OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 49933)
-- Name: cms_status_talent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_status_talent (
    id_status_talent bigint NOT NULL,
    create_date date,
    delete_date date,
    id_status character varying(255),
    id_talent character varying(255)
);


ALTER TABLE public.cms_status_talent OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 49932)
-- Name: cms_status_talent_id_status_talent_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.cms_status_talent ALTER COLUMN id_status_talent ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.cms_status_talent_id_status_talent_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 229 (class 1259 OID 49940)
-- Name: cms_talent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_talent (
    id_talent character varying(255) NOT NULL,
    age bigint,
    expected_salary bigint,
    gender character varying(255),
    id_user character varying(255),
    latest_company character varying(255),
    latest_position character varying(255),
    latest_work_periode character varying(255),
    location_work character varying(255),
    name_talent character varying(255),
    status_salary boolean,
    work_experience bigint
);


ALTER TABLE public.cms_talent OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 49947)
-- Name: cms_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_users (
    id_user character varying(255) NOT NULL,
    email character varying(255),
    id_role character varying(255),
    password character varying(255),
    username character varying(255),
    status character varying
);


ALTER TABLE public.cms_users OWNER TO postgres;

--
-- TOC entry 3442 (class 0 OID 49808)
-- Dependencies: 209
-- Data for Name: cms_contract; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_contract (idcontract, end_date, idtalent, start_date) FROM stdin;
1	2024-02-01	TLNT10001	2022-02-01
\.


--
-- TOC entry 3443 (class 0 OID 49813)
-- Dependencies: 210
-- Data for Name: cms_education; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_education (id_edu, id_talent, name_edu, periode_edu, status_edu) FROM stdin;
1	TLNT10001	Univ	January 2021 - January 2025	S1 jurusan
\.


--
-- TOC entry 3465 (class 0 OID 57562)
-- Dependencies: 232
-- Data for Name: cms_file_upload; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_file_upload (file_id, file_name, file_path) FROM stdin;
PRTR10001	mcs.png	C:/Users/user/Documents/cms/multi_cloud/assets/file/mcs.png
\.


--
-- TOC entry 3444 (class 0 OID 49820)
-- Dependencies: 211
-- Data for Name: cms_industry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_industry (id_industry, name_industry) FROM stdin;
IDY40001	TAP
IDY40002	IND3
\.


--
-- TOC entry 3445 (class 0 OID 49827)
-- Dependencies: 212
-- Data for Name: cms_industry_talent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_industry_talent (id_industry_talent, create_date, delete_date, id_industry, id_talent, status) FROM stdin;
1	2022-07-28	\N	IDY40001	TLNT10001	ACTIVE
\.


--
-- TOC entry 3446 (class 0 OID 49834)
-- Dependencies: 213
-- Data for Name: cms_level; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_level (id_level, name_level) FROM stdin;
LVL50001	JUNIOR PROGRAMMER 1
LVL50002	JUNIOR PROGRAMMER 2
\.


--
-- TOC entry 3447 (class 0 OID 49841)
-- Dependencies: 214
-- Data for Name: cms_level_talent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_level_talent (id_level_talent, create_date, delete_date, id_level, id_talent, status) FROM stdin;
1	2022-07-28	\N	LVL50001	TLNT10001	ACTIVE
\.


--
-- TOC entry 3448 (class 0 OID 49848)
-- Dependencies: 215
-- Data for Name: cms_location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_location (id_location, name_location) FROM stdin;
LCTN60001	JAKARTA
\.


--
-- TOC entry 3449 (class 0 OID 49855)
-- Dependencies: 216
-- Data for Name: cms_location_talent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_location_talent (id_location_talent, create_date, delete_date, id_location, id_talent, status) FROM stdin;
1	2022-07-28	\N	LCTN60001	TLNT10001	ACTIVE
\.


--
-- TOC entry 3450 (class 0 OID 49862)
-- Dependencies: 217
-- Data for Name: cms_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_menu (id_menu, id_role, name_menu) FROM stdin;
1	R001	Dashboard
2	R001	Setting
3	R001	Page
4	R001	Post
5	R001	Master Data
6	R001	Client
7	R001	Talent Manage
8	R002	Find Talent
9	R002	Hired
10	R002	My Employee
\.


--
-- TOC entry 3451 (class 0 OID 49869)
-- Dependencies: 218
-- Data for Name: cms_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_page (id_page, id_role, page, status, title) FROM stdin;
3	R001	string	ACTIVE	string
4	R001	string	ACTIVE	string
5	R001	lat	ACTIVE	lat
6	R001	coba	ACTIVE	coba
7	R001	coba 2	ACTIVE	coba 2
8	R001	coba 3	ACTIVE	coba 3
9	R001	coba 4	ACTIVE	coba 4
10	R001	ini latihan	ACTIVE	ini lat
11	R001	ngikut	ACTIVE	ngikut
1	R001	Isi Page trial	ACTIVE	Ini Page trial
2	R001	string	ACTIVE	string
13	R001	mencoba	INACTIVE	coba123
12	R001	Misal	INACTIVE	misal
\.


--
-- TOC entry 3464 (class 0 OID 57546)
-- Dependencies: 231
-- Data for Name: cms_partner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_partner (file_name, file_path, status_partner, partner_id) FROM stdin;
sjdnsl.jpg	kasncklklsac	ACTIVE	1
\.


--
-- TOC entry 3452 (class 0 OID 49876)
-- Dependencies: 219
-- Data for Name: cms_position; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_position (id_position, name_position) FROM stdin;
PSTN30001	POS4
\.


--
-- TOC entry 3453 (class 0 OID 49883)
-- Dependencies: 220
-- Data for Name: cms_position_talent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_position_talent (id_position_talent, create_date, delete_date, id_position, id_talent, status) FROM stdin;
1	2022-07-28	\N	PSTN30001	TLNT10001	ACTIVE
\.


--
-- TOC entry 3454 (class 0 OID 49890)
-- Dependencies: 221
-- Data for Name: cms_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_post (id_post, create_date, id_role, image, post, status, title) FROM stdin;
1	2022-07-28	R001	/assets/image.jpg	Isi Post	ACTIVE	Isi Post
2	2022-08-03	R001	/assets/image.jpg	Isi Post	ACTIVE	Isi Post
3	2022-08-03	R001	/assets/image.jpg	jsbjdbjsk	ACTIVE	ganti
\.


--
-- TOC entry 3455 (class 0 OID 49897)
-- Dependencies: 222
-- Data for Name: cms_roleuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_roleuser (id_role, name) FROM stdin;
R001	ADMIN
R002	CLIENT
\.


--
-- TOC entry 3456 (class 0 OID 49904)
-- Dependencies: 223
-- Data for Name: cms_setting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_setting (id_setting, email, id_role, image, no, tagline, title) FROM stdin;
\.


--
-- TOC entry 3457 (class 0 OID 49911)
-- Dependencies: 224
-- Data for Name: cms_skill; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_skill (id_skill, name_skill) FROM stdin;
SKL20001	JAVA
SKL20002	C++
SKL20003	PYTHON
\.


--
-- TOC entry 3458 (class 0 OID 49918)
-- Dependencies: 225
-- Data for Name: cms_skill_talent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_skill_talent (id_skill_talent, id_skill, id_talent) FROM stdin;
1	SKL20002	TLNT10001
\.


--
-- TOC entry 3459 (class 0 OID 49925)
-- Dependencies: 226
-- Data for Name: cms_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_status (id_status, name_status) FROM stdin;
STS70001	AVAILABLE
STS70002	PRE-HIRED
STS70003	HIRED
STS70004	STATUS2
\.


--
-- TOC entry 3461 (class 0 OID 49933)
-- Dependencies: 228
-- Data for Name: cms_status_talent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_status_talent (id_status_talent, create_date, delete_date, id_status, id_talent) FROM stdin;
2	2022-07-28	\N	STS70001	TLNT10001
1	2022-07-28	2022-07-28	STS70001	TLNT10001
\.


--
-- TOC entry 3462 (class 0 OID 49940)
-- Dependencies: 229
-- Data for Name: cms_talent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_talent (id_talent, age, expected_salary, gender, id_user, latest_company, latest_position, latest_work_periode, location_work, name_talent, status_salary, work_experience) FROM stdin;
TLNT10001	28	10000000	M	R002	asas	masd	juli 2002-juli 2010	jakarta	Qorri	t	1
TLNT10002	23	10000000	M	123	Eksad	Developer	January 2021 - January 2022	Jakarta	Andreas Cristian Manik	t	1
TLNT10003	23	10000000	M	123	Eksad	Developer	January 2021 - January 2022	Jakarta	Andreas Cristian Manik	t	1
\.


--
-- TOC entry 3463 (class 0 OID 49947)
-- Dependencies: 230
-- Data for Name: cms_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_users (id_user, email, id_role, password, username, status) FROM stdin;
CLNT60001	asca@sdad.com	R002	string	string	ACTIVE
\.


--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 227
-- Name: cms_status_talent_id_status_talent_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_status_talent_id_status_talent_seq', 2, true);


--
-- TOC entry 3258 (class 2606 OID 49812)
-- Name: cms_contract cms_contract_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_contract
    ADD CONSTRAINT cms_contract_pkey PRIMARY KEY (idcontract);


--
-- TOC entry 3260 (class 2606 OID 49819)
-- Name: cms_education cms_education_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_education
    ADD CONSTRAINT cms_education_pkey PRIMARY KEY (id_edu);


--
-- TOC entry 3302 (class 2606 OID 57568)
-- Name: cms_file_upload cms_file_upload_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_file_upload
    ADD CONSTRAINT cms_file_upload_pkey PRIMARY KEY (file_id);


--
-- TOC entry 3262 (class 2606 OID 49826)
-- Name: cms_industry cms_industry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_industry
    ADD CONSTRAINT cms_industry_pkey PRIMARY KEY (id_industry);


--
-- TOC entry 3264 (class 2606 OID 49833)
-- Name: cms_industry_talent cms_industry_talent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_industry_talent
    ADD CONSTRAINT cms_industry_talent_pkey PRIMARY KEY (id_industry_talent);


--
-- TOC entry 3266 (class 2606 OID 49840)
-- Name: cms_level cms_level_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_level
    ADD CONSTRAINT cms_level_pkey PRIMARY KEY (id_level);


--
-- TOC entry 3268 (class 2606 OID 49847)
-- Name: cms_level_talent cms_level_talent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_level_talent
    ADD CONSTRAINT cms_level_talent_pkey PRIMARY KEY (id_level_talent);


--
-- TOC entry 3270 (class 2606 OID 49854)
-- Name: cms_location cms_location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_location
    ADD CONSTRAINT cms_location_pkey PRIMARY KEY (id_location);


--
-- TOC entry 3272 (class 2606 OID 49861)
-- Name: cms_location_talent cms_location_talent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_location_talent
    ADD CONSTRAINT cms_location_talent_pkey PRIMARY KEY (id_location_talent);


--
-- TOC entry 3274 (class 2606 OID 49868)
-- Name: cms_menu cms_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_menu
    ADD CONSTRAINT cms_menu_pkey PRIMARY KEY (id_menu);


--
-- TOC entry 3276 (class 2606 OID 49875)
-- Name: cms_page cms_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_pkey PRIMARY KEY (id_page);


--
-- TOC entry 3300 (class 2606 OID 57560)
-- Name: cms_partner cms_partner_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_partner
    ADD CONSTRAINT cms_partner_pkey PRIMARY KEY (partner_id);


--
-- TOC entry 3278 (class 2606 OID 49882)
-- Name: cms_position cms_position_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_position
    ADD CONSTRAINT cms_position_pkey PRIMARY KEY (id_position);


--
-- TOC entry 3280 (class 2606 OID 49889)
-- Name: cms_position_talent cms_position_talent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_position_talent
    ADD CONSTRAINT cms_position_talent_pkey PRIMARY KEY (id_position_talent);


--
-- TOC entry 3282 (class 2606 OID 49896)
-- Name: cms_post cms_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_post
    ADD CONSTRAINT cms_post_pkey PRIMARY KEY (id_post);


--
-- TOC entry 3284 (class 2606 OID 49903)
-- Name: cms_roleuser cms_roleuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_roleuser
    ADD CONSTRAINT cms_roleuser_pkey PRIMARY KEY (id_role);


--
-- TOC entry 3286 (class 2606 OID 49910)
-- Name: cms_setting cms_setting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_setting
    ADD CONSTRAINT cms_setting_pkey PRIMARY KEY (id_setting);


--
-- TOC entry 3288 (class 2606 OID 49917)
-- Name: cms_skill cms_skill_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_skill
    ADD CONSTRAINT cms_skill_pkey PRIMARY KEY (id_skill);


--
-- TOC entry 3290 (class 2606 OID 49924)
-- Name: cms_skill_talent cms_skill_talent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_skill_talent
    ADD CONSTRAINT cms_skill_talent_pkey PRIMARY KEY (id_skill_talent);


--
-- TOC entry 3292 (class 2606 OID 49931)
-- Name: cms_status cms_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_status
    ADD CONSTRAINT cms_status_pkey PRIMARY KEY (id_status);


--
-- TOC entry 3294 (class 2606 OID 49939)
-- Name: cms_status_talent cms_status_talent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_status_talent
    ADD CONSTRAINT cms_status_talent_pkey PRIMARY KEY (id_status_talent);


--
-- TOC entry 3296 (class 2606 OID 49946)
-- Name: cms_talent cms_talent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_talent
    ADD CONSTRAINT cms_talent_pkey PRIMARY KEY (id_talent);


--
-- TOC entry 3298 (class 2606 OID 49953)
-- Name: cms_users cms_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_users
    ADD CONSTRAINT cms_users_pkey PRIMARY KEY (id_user);


-- Completed on 2022-08-16 16:02:00

--
-- PostgreSQL database dump complete
--

