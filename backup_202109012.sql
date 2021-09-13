--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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
-- Name: scholarhillsdb; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA scholarhillsdb;


ALTER SCHEMA scholarhillsdb OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course (
    id bigint NOT NULL,
    brief_description character varying(255),
    course_price double precision NOT NULL,
    course_teacher character varying(255),
    name character varying(255),
    reason character varying(255),
    schedule character varying(255),
    suitable_students character varying(255),
    syllabus character varying(255),
    teacher_description character varying(255),
    type character varying(255)
);


ALTER TABLE public.course OWNER TO postgres;

--
-- Name: course_page_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.course_page_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_page_sequence OWNER TO postgres;

--
-- Name: course_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.course_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_sequence OWNER TO postgres;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    id bigint NOT NULL,
    avatar character varying(255),
    gender character varying(255),
    last_contacted character varying(255),
    level character varying(255),
    name character varying(255),
    prefer_contact character varying(255),
    status character varying(255),
    telephone character varying(255),
    we_chat character varying(255),
    xiaoe_user_id character varying(255),
    children bytea
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Name: customer_activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_activity (
    id bigint NOT NULL,
    content character varying(255),
    current_step integer NOT NULL,
    history bytea,
    status character varying(255),
    submitter character varying(255),
    "timestamp" character varying(255),
    customer_id bigint
);


ALTER TABLE public.customer_activity OWNER TO postgres;

--
-- Name: customer_activity_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_activity_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_activity_sequence OWNER TO postgres;

--
-- Name: customer_connection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_connection (
    id bigint NOT NULL,
    channel_name character varying(255),
    connection_type character varying(255),
    date bigint,
    connect_by_id bigint,
    self_id bigint
);


ALTER TABLE public.customer_connection OWNER TO postgres;

--
-- Name: customer_relationship_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_relationship_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_relationship_sequence OWNER TO postgres;

--
-- Name: customers_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_sequence OWNER TO postgres;

--
-- Name: event; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event (
    id bigint NOT NULL,
    by_week_day character varying(255),
    color character varying(255),
    dt_start character varying(255),
    duration character varying(255),
    event_name character varying(255),
    event_student character varying(255),
    ex_date text,
    freq character varying(255),
    teacher character varying(255),
    until character varying(255)
);


ALTER TABLE public.event OWNER TO postgres;

--
-- Name: event_response; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event_response (
    id bigint NOT NULL,
    date bigint NOT NULL,
    event_id bigint NOT NULL,
    responded_ha boolean,
    feedback text
);


ALTER TABLE public.event_response OWNER TO postgres;

--
-- Name: event_response_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.event_response_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_response_sequence OWNER TO postgres;

--
-- Name: event_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.event_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_sequence OWNER TO postgres;

--
-- Name: event_student_envolved; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event_student_envolved (
    event_envolved_id bigint NOT NULL,
    student_envolved_id bigint NOT NULL
);


ALTER TABLE public.event_student_envolved OWNER TO postgres;

--
-- Name: question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.question (
    id bigint NOT NULL,
    accuracy double precision,
    answer character varying(255),
    choice character varying(255),
    pick_times integer,
    question character varying(255),
    question_type character varying(255),
    topic character varying(255)
);


ALTER TABLE public.question OWNER TO postgres;

--
-- Name: question_bank; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.question_bank (
    id bigint NOT NULL,
    accuracy double precision,
    answer character varying(255),
    choice character varying(255),
    pick_times integer,
    question character varying(255),
    question_type character varying(255),
    topic character varying(255)
);


ALTER TABLE public.question_bank OWNER TO postgres;

--
-- Name: question_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.question_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.question_sequence OWNER TO postgres;

--
-- Name: questionbank_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questionbank_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questionbank_sequence OWNER TO postgres;

--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    id bigint NOT NULL,
    dob date,
    email character varying(255),
    name character varying(255),
    gender character varying(255),
    profile_image_type character varying(255),
    open_id character varying(255),
    we_chat_nick_name character varying(255),
    grade character varying(255),
    customer_id bigint
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Name: student_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_sequence OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    password character varying(255),
    privilege integer,
    true_name character varying(255),
    username character varying(255),
    type character varying(255)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_sequence OWNER TO postgres;

--
-- Data for Name: course; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.course (id, brief_description, course_price, course_teacher, name, reason, schedule, suitable_students, syllabus, teacher_description, type) FROM stdin;
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (id, avatar, gender, last_contacted, level, name, prefer_contact, status, telephone, we_chat, xiaoe_user_id, children) FROM stdin;
1	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6127393e3762b_9T2zASfIF3.png			normal	G·w·B	weChat	active		G·w·B	u_6127393e3762b_9T2zASfIF3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
2	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_611899cb10ffd_ycSI2novUa.png			normal	茉莉丫头	weChat	active		茉莉丫头	u_611899cb10ffd_ycSI2novUa	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
3	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_611494d618109_pywiE7PKbB.png			normal	Nepenthe	weChat	active		Nepenthe	u_611494d618109_pywiE7PKbB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
4	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6113886c15602_Yfn8V4MWe5.png			normal	Angela	weChat	active		Angela	u_6113886c15602_Yfn8V4MWe5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
5	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_61137c926150b_0loXCux7JO.png			normal	燕子	weChat	active		燕子	u_61137c926150b_0loXCux7JO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
6	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6111ea966c413_litMyux2Wb.png			normal	lal	weChat	active		lal	u_6111ea966c413_litMyux2Wb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
7	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_61060cb1831d4_tEacZGyTDe.png			normal	joyce	weChat	active		joyce	u_61060cb1831d4_tEacZGyTDe	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
8	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60fe1d3078814_dXlihV4ptW.png			normal	YY	weChat	active		YY	u_60fe1d3078814_dXlihV4ptW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
9	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60fc0072541b0_8S2bYq35u2.png			normal	栾笑姝	weChat	active		栾笑姝	u_60fc0072541b0_8S2bYq35u2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
10	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60efedf173fd5_W8sJuiZZic.png			normal	Elsa黄筱雅	weChat	active		Elsa黄筱雅	u_60efedf173fd5_W8sJuiZZic	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
11	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60e907d5575e3_R2TLZej3Cd.png			normal	春华秋实🐆	weChat	active		春华秋实🐆	u_60e907d5575e3_R2TLZej3Cd	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
12	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60e715264f7f3_aycbKBFDmB.png			normal	人鱼公主	weChat	active		人鱼公主	u_60e715264f7f3_aycbKBFDmB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
13	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60e43fcb4fb59_JSNQsD89To.png			normal	文静	weChat	active		文静	u_60e43fcb4fb59_JSNQsD89To	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
14	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60e3fa696708e_DrBbicVH1B.png			normal	微乎其微	weChat	active		微乎其微	u_60e3fa696708e_DrBbicVH1B	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
15	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60e2753b3465c_LJb7xH3lrA.png			normal	俏燕	weChat	active		俏燕	u_60e2753b3465c_LJb7xH3lrA	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
16	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60dfe49946944_hldCniK9mC.png			normal	美月	weChat	active		美月	u_60dfe49946944_hldCniK9mC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
17	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoqfN5zibokKwlIWXRsBKe8GvLujkB2xDp8bTibmbr4oshsRAq5TqIr0MiaJYsUyqfKaaRQvXibMibXtlQ/132			normal	甜酒果果errrr	weChat	active		甜酒果果errrr	u_60dd84f96ba25_qWwh9AhWbJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
18	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60dc44fa1b559_nbVwp9KFut.png			normal	Uni	weChat	active		Uni	u_60dc44fa1b559_nbVwp9KFut	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
19	https://thirdwx.qlogo.cn/mmopen/vi_32/6TGln7ZqtYug6OpHibgxRSfZ1t8q6XEibpuv6pG4obgDVTEms9zvsTVxz0RNMf1CDayEAaGNj1hm9kN5o24DhlGw/132			normal	关耳月巴子	weChat	active		关耳月巴子	u_60daed065a736_lptCCTyVRp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
20	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI34ZlT6HSOtFFYnxwHAvyr02rKg9DTdXibYYPvgTWI2nHJ1jqONLxwGOJib0sqAGl1eWMaCuY2lmtQ/132			normal	V.W	weChat	active		V.W	u_60d8777d51bff_OzfKh5DMmx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
21	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60d2d63b55685_FheF3kGRqp.png			normal	ZR	weChat	active		ZR	u_60d2d63b55685_FheF3kGRqp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
22	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60d1d9e4248b2_QjdSteMqQZ.png			normal	张楠	weChat	active		张楠	u_60d1d9e4248b2_QjdSteMqQZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
23	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60d0308355af7_CNlOq9Nzcp.png			normal	盛世烟火🎆	weChat	active		盛世烟火🎆	u_60d0308355af7_CNlOq9Nzcp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
24	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60c9a9fd6b24d_QksrHRcQQc.png			normal	XT	weChat	active		XT	u_60c9a9fd6b24d_QksrHRcQQc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
25	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60c8b2a5692e0_3syNsxGiBm.png			normal	雅心🐾	weChat	active		雅心🐾	u_60c8b2a5692e0_3syNsxGiBm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
26	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq0oia5f2z0XaqJedicIRrxtBsoV25PRT0B7iaXWXsTX7CXtHLCsjVia25g3fhh0ibh4mLtcQQ49YVrUKQ/132			normal	🍀漫漫一生 🍀	weChat	active		🍀漫漫一生 🍀	u_60b9d370665cc_0lALdjWfCD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
27	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60adf3885ecc9_xOUrfRlpb6.png			normal	尤铭燕	weChat	active		尤铭燕	u_60adf3885ecc9_xOUrfRlpb6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
28	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60ab0a89475a8_i52zEPJJZo.png			normal	林之玮	weChat	active		林之玮	u_60ab0a89475a8_i52zEPJJZo	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
29	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60a498ca44b04_foH2KmFnhn.png			normal	哄哄	weChat	active		哄哄	u_60a498ca44b04_foH2KmFnhn	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
30	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_609e6cc16c56c_5wEFxoF3AP.png			normal	Jia haojun	weChat	active		Jia haojun	u_609e6cc16c56c_5wEFxoF3AP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
31	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_609d02795fc37_kyJgPgJUjL.png			normal	玲	weChat	active		玲	u_609d02795fc37_kyJgPgJUjL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
32	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_609b4dbd82312_Z9NndKrZhU.png			normal	阿春	weChat	active		阿春	u_609b4dbd82312_Z9NndKrZhU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
33	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6098ee187b91b_xeuOABEU9X.png			normal	Amy Liu（福）	weChat	active		Amy Liu（福）	u_6098ee187b91b_xeuOABEU9X	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
34	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_608548b57085d_FnBEcSwgYW.png			normal	龙哥	weChat	active		龙哥	u_608548b57085d_FnBEcSwgYW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
35	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60817d8c5dd15_rOEJpI9Rkl.png			normal	似水流年	weChat	active		似水流年	u_60817d8c5dd15_rOEJpI9Rkl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
36	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_608148b685e32_1lAKFzUqvX.png			normal	Iain	weChat	active		Iain	u_608148b685e32_1lAKFzUqvX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
37	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_607fb4537a9fb_IEHzYHe6zG.png			normal	momo	weChat	active		momo	u_607fb4537a9fb_IEHzYHe6zG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
38	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_607e84064569f_eGNJgKzisM.png			normal	小鱼	weChat	active		小鱼	u_607e84064569f_eGNJgKzisM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
39	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_607d8d7c2d88d_WuyqEroE7O.png			normal	小雨儿	weChat	active		小雨儿	u_607d8d7c2d88d_WuyqEroE7O	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
40	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_607a498079884_I4980ZQuxc.png			normal	事在人为	weChat	active		事在人为	u_607a498079884_I4980ZQuxc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
41	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6076774d36890_0crxgjIB22.png			normal	Tong	weChat	active		Tong	u_6076774d36890_0crxgjIB22	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
42	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ9oIRvWZARRiaNHPkEGw5Gzu6SH68M8nMhyg5QXIn6W2RvZVVSY2YbP0Z1GGL3gnNZcOwLFf9GkfQ/132			normal	Hong	weChat	active		Hong	u_607115ba6ed56_KnWY8uwjH0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
43	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_606ffaa165147_SN3yZMcBlM.png			normal	羽	weChat	active		羽	u_606ffaa165147_SN3yZMcBlM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
44	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83ersV2J9vYO4qibL2gdOJ1z3DRiat3Q5nk08qMeqvxmjFTwTVxCSk4F5CQF3tluEzQB3MZP5X4VlMX3g/132			normal	xdy	weChat	active		xdy	u_6066d125772f2_vnNxn2XXQm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
45	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_605fdb782bd84_sxw0vadFrd.png			normal	Tata	weChat	active		Tata	u_605fdb782bd84_sxw0vadFrd	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
46	https://thirdwx.qlogo.cn/mmopen/vi_32/petsz7bmadj2096sNaoRJPOxZ01cahVnfQiaXz2O5VWhSM0NwBYpOO5eIR7xWCMnU4USfHub3JicRAkfJQliaKIlw/132			normal	🌿	weChat	active		🌿	u_605c7d4462897_T0nRx2irh7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
47	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60572c8326eff_mbk4Gix9iJ.png			normal	黄河jeff	weChat	active		黄河jeff	u_60572c8326eff_mbk4Gix9iJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
48	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60541cc2559bf_ipreZHMEea.png			normal	小红	weChat	active		小红	u_60541cc2559bf_ipreZHMEea	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
49	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83equL3IZT3a6FyagmAqAcYy6d2bEiaeE0bqfbd6s0B2ib5R7amGkSlRv2q5iavXZqB4hVQSrzZOc05SFg/132			normal	郭燕军	weChat	active		郭燕军	u_605365671a554_RlUQBgPfnh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
51	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_605166f6289d1_rC9FwtnyBo.png			normal	yao	weChat	active		yao	u_605166f6289d1_rC9FwtnyBo	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
52	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_604f36c58f08f_mbG9RQ4a9q.png			normal	⁽⁽ଘ(🎀)ଓ⁾⁾	weChat	active		⁽⁽ଘ(🎀)ଓ⁾⁾	u_604f36c58f08f_mbG9RQ4a9q	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
53	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_604cd5f18c9af_XV1lN0UQ69.png			normal	jane	weChat	active		jane	u_604cd5f18c9af_XV1lN0UQ69	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
54	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6046dac548a7a_b4BjT3oEmG.png			normal	王伟	weChat	active		王伟	u_6046dac548a7a_b4BjT3oEmG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
55	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60442dcf836d4_JL1jt8ZOKW.png			normal	SHI	weChat	active		SHI	u_60442dcf836d4_JL1jt8ZOKW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
56	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60409d13880e9_JJoZ1SVc0h.png			normal	橄榄树	weChat	active		橄榄树	u_60409d13880e9_JJoZ1SVc0h	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
57	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6040408461282_F933DGwYwi.png			normal	吃🐱的🐟（Kenny & Yassel）	weChat	active		吃🐱的🐟（Kenny & Yassel）	u_6040408461282_F933DGwYwi	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
58	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_603ee95c7f38a_JSK6pynl7K.png			normal	雪彥	weChat	active		雪彥	u_603ee95c7f38a_JSK6pynl7K	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
59	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6039f4e43e994_1W1V6wQjuw.png			normal	孙莉	weChat	active		孙莉	u_6039f4e43e994_1W1V6wQjuw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
60	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6037b26d4e6bb_l6UB2BLXoD.png			normal	苏杰Clark	weChat	active		苏杰Clark	u_6037b26d4e6bb_l6UB2BLXoD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
61	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6031cb6f7ca85_FGux3VKHLt.png			normal	玲	weChat	active		玲	u_6031cb6f7ca85_FGux3VKHLt	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
62	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_602775647cc58_J1WC1fnP5J.png			normal	没毛的狗	weChat	active		没毛的狗	u_602775647cc58_J1WC1fnP5J	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
63	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60276bb06f792_clWIvleuTK.png			normal	Champaign problems	weChat	active		Champaign problems	u_60276bb06f792_clWIvleuTK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
64	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60276a037cc0d_pX3k7ihged.png			normal	🍞	weChat	active		🍞	u_60276a037cc0d_pX3k7ihged	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
65	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_602559a671cd1_eLivq4J3Dv.png			normal	Denuo.	weChat	active		Denuo.	u_602559a671cd1_eLivq4J3Dv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
66	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6023b37b314a9_FPyQCn43iI.png			normal	NA陈	weChat	active		NA陈	u_6023b37b314a9_FPyQCn43iI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
67	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_601d405d4aed0_4tZf2zTbuJ.png			normal	EY	weChat	active		EY	u_601d405d4aed0_4tZf2zTbuJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
68	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_601d245f7154a_Dq8qB56qOa.png			normal	期末的樊小小宁	weChat	active		期末的樊小小宁	u_601d245f7154a_Dq8qB56qOa	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
69	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_601be3a27075c_f8UZKctvFy.png			normal	章岚 Cindy Zhang	weChat	active		章岚 Cindy Zhang	u_601be3a27075c_f8UZKctvFy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
70	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_601b8e584988b_qHv5Wg5CEJ.png			normal	每天都在做热爱的事	weChat	active		每天都在做热爱的事	u_601b8e584988b_qHv5Wg5CEJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
71	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_601b53bc6b8b4_N6NA5rMP58.png			normal	同尘	weChat	active		同尘	u_601b53bc6b8b4_N6NA5rMP58	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
72	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6018b94928164_WlIH76QKSD.png			normal	藿香正气水	weChat	active		藿香正气水	u_6018b94928164_WlIH76QKSD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
73	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60168abc31280_Id8KmFdAVb.png			normal	Sharon檀	weChat	active		Sharon檀	u_60168abc31280_Id8KmFdAVb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
74	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60161a6725bca_tyqpYAVnBW.png			normal	浮世浮沉	weChat	active		浮世浮沉	u_60161a6725bca_tyqpYAVnBW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
75	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6014febc195c7_gNIw4t4ctf.png			normal	glass	weChat	active		glass	u_6014febc195c7_gNIw4t4ctf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
76	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60138304bfe2f_KGlCIhHCnK.png			normal	Mina	weChat	active		Mina	u_60138304bfe2f_KGlCIhHCnK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
77	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6012882d6f13d_sWDsEKhytH.png			normal	Ed.	weChat	active		Ed.	u_6012882d6f13d_sWDsEKhytH	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
78	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6011841b1c142_di5eDC4I4d.png			normal	HKH	weChat	active		HKH	u_6011841b1c142_di5eDC4I4d	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
79	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6011228e3dfb8_zL9yPpp34X.png			normal	柯维涛	weChat	active		柯维涛	u_6011228e3dfb8_zL9yPpp34X	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
80	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6011212e576ad_6fL7Sv8aNp.png			normal	Lixia	weChat	active		Lixia	u_6011212e576ad_6fL7Sv8aNp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
81	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_601030d630faf_1H1LwZ7zyq.png			normal	工藤馨怡🌟	weChat	active		工藤馨怡🌟	u_601030d630faf_1H1LwZ7zyq	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
82	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_600ff6ce30a53_bXk0Pm2F5z.png			normal	MYH	weChat	active		MYH	u_600ff6ce30a53_bXk0Pm2F5z	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
83	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_600f92753bfa7_Ozbj75xMt6.png			normal	来自花海深处的小浪花🌊 🌸	weChat	active		来自花海深处的小浪花🌊 🌸	u_600f92753bfa7_Ozbj75xMt6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
84	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_600ed9dd42330_Ypy8NuQAqY.png			normal	Olaf	weChat	active		Olaf	u_600ed9dd42330_Ypy8NuQAqY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
85	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_600ed84a92ab2_YexzPkyvhQ.png			normal	Hilla ᐕ	weChat	active		Hilla ᐕ	u_600ed84a92ab2_YexzPkyvhQ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
86	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_600d739f3932d_yqhxpJawPR.png			normal	遇见	weChat	active		遇见	u_600d739f3932d_yqhxpJawPR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
87	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_600d60b44b6dc_J2rGxzF1g7.png			normal	黑化后的蔓越莓猪	weChat	active		黑化后的蔓越莓猪	u_600d60b44b6dc_J2rGxzF1g7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
88	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_600d5bd267da3_DvXpBJS32A.png			normal	无忧无虑	weChat	active		无忧无虑	u_600d5bd267da3_DvXpBJS32A	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
89	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_600ce96f3e1e6_0ImpbKQPvU.png			normal	该加备注了	weChat	active		该加备注了	u_600ce96f3e1e6_0ImpbKQPvU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
90	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_600b9744253e7_6oMWkvFLP1.png			normal	🙊Awesome  Miracle	weChat	active		🙊Awesome  Miracle	u_600b9744253e7_6oMWkvFLP1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
91	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_600adaf237401_29JqM3yxjE.png			normal	琦琦	weChat	active		琦琦	u_600adaf237401_29JqM3yxjE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
92	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60096fce6caf9_1CIFG4P0K4.png			normal	肉丝	weChat	active		肉丝	u_60096fce6caf9_1CIFG4P0K4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
93	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_600911d213cbb_jg0SKJ4irt.png			normal	安琪	weChat	active		安琪	u_600911d213cbb_jg0SKJ4irt	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
94	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6008fc656c241_UIUxdWQqnk.png			normal	 	weChat	active		 	u_6008fc656c241_UIUxdWQqnk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
95	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6008cadf71f9e_gozB4TYFc4.png			normal	瑀浛	weChat	active		瑀浛	u_6008cadf71f9e_gozB4TYFc4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
96	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60052c435eeb2_rdU56QYcMB.png			normal	Sammi	weChat	active		Sammi	u_60052c435eeb2_rdU56QYcMB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
97	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6003b88a58c26_DhYlayiWTW.png			normal	670	weChat	active		670	u_6003b88a58c26_DhYlayiWTW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
98	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6002b4cc4234c_6aIq4DueiU.png			normal	一去二三里	weChat	active		一去二三里	u_6002b4cc4234c_6aIq4DueiU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
99	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6002b4c8758b3_nhz3Kg5i35.png			normal	NEVER	weChat	active		NEVER	u_6002b4c8758b3_nhz3Kg5i35	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
100	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60016abf4052b_RSykzLbGhM.png			normal	唐莹	weChat	active		唐莹	u_60016abf4052b_RSykzLbGhM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
101	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6001619853dfc_HhX1v6wZCM.png			normal	爱的战士	weChat	active		爱的战士	u_6001619853dfc_HhX1v6wZCM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
102	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60015d2562886_QfioRHuegk.png			normal	阿布	weChat	active		阿布	u_60015d2562886_QfioRHuegk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
103	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_600151de17879_knzcj9aZQP.png			normal	好运来那个好运来	weChat	active		好运来那个好运来	u_600151de17879_knzcj9aZQP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
104	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6000d23b49d20_9SoK4Av965.png			normal	李明栋	weChat	active		李明栋	u_6000d23b49d20_9SoK4Av965	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
105	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6000653461f27_e4xmXLFvV7.png			normal	吃掉不开心	weChat	active		吃掉不开心	u_6000653461f27_e4xmXLFvV7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
106	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_60004c1d3f368_zYF8695tVf.png			normal	严栩菀莘	weChat	active		严栩菀莘	u_60004c1d3f368_zYF8695tVf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
107	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ffec77f60f3d_W7zXTCV7fi.png			normal	van in vain	weChat	active		van in vain	u_5ffec77f60f3d_W7zXTCV7fi	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
108	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ffe9fba1b306_s1WMMfDUVD.png			normal	陈小林	weChat	active		陈小林	u_5ffe9fba1b306_s1WMMfDUVD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
109	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ffe7e4a5e52b_ShNFmIrlHs.png			normal	PeGasUS	weChat	active		PeGasUS	u_5ffe7e4a5e52b_ShNFmIrlHs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
110	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ffe70d3701f9_3o3UjcmjNS.png			normal	Jane	weChat	active		Jane	u_5ffe70d3701f9_3o3UjcmjNS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
111	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ffe65532d856_5WBWI8urx5.png			normal	wizard	weChat	active		wizard	u_5ffe65532d856_5WBWI8urx5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
112	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ffd965b29d00_5yrCvPXWoO.png			normal	Bo bo	weChat	active		Bo bo	u_5ffd965b29d00_5yrCvPXWoO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
113	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ffd93953add6_X7718piz6a.png			normal	68	weChat	active		68	u_5ffd93953add6_X7718piz6a	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
114	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ffc7c9247f45_CD6exBiZki.png			normal	球球	weChat	active		球球	u_5ffc7c9247f45_CD6exBiZki	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
115	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLhXVnLiaY10nRQAaK2e2Cun3kq3u1ib6IZlSllUXf7JI2O7Tk8RCvYOxic4psRJCQCqBhDk4xqcBPLA/132			normal	哼	weChat	active		哼	u_5ffc5f616d133_22qDedAclb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
116	https://thirdwx.qlogo.cn/mmopen/vi_32/iaxgvyIjNFolKNicDsJgJYbDOMbW5ebelnEaaV0E70lf31Wpeaq7nFzUnkXIu5vBE9Xfu7J87yIbRv4SpEYpXialw/132			normal	胡祥龙	weChat	active		胡祥龙	u_5ffaf38962ef3_Rfgk6RAVdR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
117	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epwxWvlNcd9xIhzzrzBs61Ibvnd8bicfM94GTykuJ6WmEnrNe1EIV7r9NjHjDF3bb7Njy6AJianplhw/132			normal	LETL	weChat	active		LETL	u_5ffac16a35d44_u4PXKCNpp7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
118	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epibUHicrt9ecnoHeA5B5avfqYdxiaNduhudOLUf2j8QHYSgBPM4iczmCD0ia7Hct8iak4KDF6zW3f06HEg/132			normal	Glacier	weChat	active		Glacier	u_5ffabf5b6bbe1_6jcnRmAPR4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
119	https://thirdwx.qlogo.cn/mmopen/vi_32/fCD4dubtrXjKwjAFficb8CvSh5BWRibibdK1SjWX99c4hwLDeXApNqxvzEAKSN8biayIr6RdyicmmaECBC8Wzt25SPg/132			normal	miles	weChat	active		miles	u_5ffaaaeb359bd_FhUp2c7bnZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
120	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erFMOfwzDRNPzFH38Wpyqm0BaYqEdJqib0jZbv6Hr84YV1JXXc4EYR5O5DDXou2Go59oLPR6Ebl5HQ/132			normal	灵山曦	weChat	active		灵山曦	u_5ffa83c84f054_wzwWJccgW1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
121	https://thirdwx.qlogo.cn/mmopen/vi_32/qOdqzmC507vTJibia2Wwq9pDiczC28HMiamib2PaRnE4iaERfylwyZ0R2SnlGYPskYqIQV1H3MOMMD2W4T7cQ47hrkgw/132			normal	ETYT	weChat	active		ETYT	u_5ff9bb1a354b3_SL9krjjs7C	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
122	https://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEKYK1nCmwjdmVaIQBqABWMS2aTFNq8L1zOUVjHSLxiaVpKTTKg4o0O9hYCibcjlf9W2CGUGAgJfdUSQ/132			normal	Grace_	weChat	active		Grace_	u_5ff9baac56577_MswlJ1hTwg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
123	https://thirdwx.qlogo.cn/mmopen/vi_32/ZhIkRic4guJMNUdNJb9qYn2W8f5kTwADoyOSXctQpEnI3D80TMlBZSVYSdxbsPe8B32kJgMwrOhR4iadfSS8w9yA/132			normal	阿坤	weChat	active		阿坤	u_5ff9b7be6b339_ZxaQ3YUroC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
124	https://thirdwx.qlogo.cn/mmopen/vi_32/VicKgvk1pyewj3DLtG2xPicfFUoeXaJibOdLWHvv3jb4ibicsAozOoILibqAWRuVkf1ibRxJ6tasL3kCIibMNu2NPJcUNQ/132			normal	Ternura	weChat	active		Ternura	u_5ff95fea34e60_w4lejJEJso	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
125	https://thirdwx.qlogo.cn/mmopen/vi_32/tlbrFvT1PkTYwu7V5kUzEgsj83cQXeiaOIMq6CGqOzKzfyuWaT8exFcGX36g6ica6MfRefT4GvZkFKnM8wuxqZSw/132			normal	Ciel	weChat	active		Ciel	u_5ff89af5344f6_fsNhB3Zpyd	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
126	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLmTTsdh0njctEqRUkrmcYNMzW97T8IicZhue6g7FdLRl14COlQ67G5Xqq4dJxaqSib8uFxbU8Ln9kg/132			normal	qy	weChat	active		qy	u_5ff87d334d304_BAyRwR90uU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
127	https://thirdwx.qlogo.cn/mmopen/vi_32/nT8M2ziaETBnNSzaaHgHRC5lynKMibx8qo9xRiaBVgGJFJXggzRhx0AiaexH5OmtsicttNClpnQ4uvgzjC8heGTqVrw/132			normal	sunny	weChat	active		sunny	u_5ff82f0562a87_99IE46YiFs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
128	https://thirdwx.qlogo.cn/mmopen/vi_32/DsmjKGvmp4dmfQJ622QNaSVKaozmBL4YViaw6hFbblicmYmEdscsfEDjaDXXeBf8sdvqLhBXL20RibCAl5PvgvN3g/132			normal	Wild	weChat	active		Wild	u_5ff7d6fc6995f_IfAJO6Hkhp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
129	https://thirdwx.qlogo.cn/mmopen/vi_32/Ya2kxeylolSRL8sibiaPKRl6cQRCadxMQRz9u2U3Buua6DVsvBngfia274IDgztFfhBL7mqAH4X6unskXnjB9SlLw/132			normal	SuchenR	weChat	active		SuchenR	u_5ff6c56847921_y8unpfnivx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
130	https://thirdwx.qlogo.cn/mmopen/vi_32/DfKApstxctdxeQNaS6F1DQWjX4xWhNNRj97XVTyB1HibqlzKWcRTE5zT5KS4WIdicPMc3PdeMnOsIAic6fwGZQDKw/132			normal	木有鱼丸.	weChat	active		木有鱼丸.	u_5ff5a4ddfa949_cpZ2TJge2n	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
131	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLceSfq5HuribpVDJnAtJ0oYHK950l6dGWAYbkax7YyCqib3288cCAiccUBEEIJPcOscBPAzwCuibt27A/132			normal	睡不醒宝贝	weChat	active		睡不醒宝贝	u_5ff54c8c35ba4_jJ6ogtCLpZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
132	https://thirdwx.qlogo.cn/mmopen/vi_32/1aBHA072vhj5bhs3w4fibh0IuokB7HoOZe3OiceR1XVSt6kdeSgibI5SPYDD8kxp6X1a44Fc4ELxGVEfPia31bHH7g/132			normal	爆辣野兽	weChat	active		爆辣野兽	u_5ff52f12f393f_Ki3MOFLk5E	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
133	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIgiarK8ic7vY1U4kxgRThU7vmRicpmibSXic9NoC55GcNo3qnicR8hO0NIZM6w2icK4g2UxWBIW1ZvA88tQ/132			normal	环子GAMAり	weChat	active		环子GAMAり	u_5ff52a3e55cbd_zmeappNURp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
134	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKTAKspiaW6t3H1dSUmC8CPDo1HoqFiaCicGq9iaNaeIGVHgc7SwXrZ0DfhicgINlJ3JGA20nia0qDgCOoQ/132			normal	cнιмerιco. ㍿	weChat	active		cнιмerιco. ㍿	u_5ff47e247318c_uYrHruTrvQ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
135	https://thirdwx.qlogo.cn/mmopen/vi_32/efCKKhbGFqhic8nTNEM9Ln3sUHHMCibFUxneV6Nibsq4UUjbibISJibxibUibt2tj220YZ8eH91ibeC5OVICFTKeycLFSQ/132			normal	符玉梅	weChat	active		符玉梅	u_5ff45c8072f61_J2IZPR207F	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
136	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLVn4abHNE4riaa68GyZ427tMBkZ4T9fxiadv8eXsE5haKvceW9HBxejRLgpmUicUflPhg1hfXiaoQN1A/132			normal	刘洋	weChat	active		刘洋	u_5ff3c18cb68d3_eQXmywlAmQ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
137	https://wechatavator-1252524126.cos.ap-shanghai.myqcloud.com/aaa/people_default-2.png			normal	无极	weChat	active		无极	u_5ff3068c4a160_B2Y8kdkE78	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
138	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epHBG5DFxZRlBUUJqGlW2ldjztiasrg0qibel8sE0zibwEZM9QoDiaAV6CBMSWqiao4NnT1CUu8NX8d58g/132			normal	盼盼	weChat	active		盼盼	u_5ff0859b56384_jLPn0LpCyn	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
139	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLfGdEExExOHTFDCnN2eCLgkJaDich8Crxsj6iaoCt5UQmpboMAK8A5tPrWB6emPl7z7oAWXmjfWXtQ/132			normal	I'm景慧U	weChat	active		I'm景慧U	u_5ff0847072a45_wdtmO9pKpS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
140	https://thirdwx.qlogo.cn/mmopen/vi_32/eHNmzejyQW86ia1b8NAlzHbjA8eN5tBboQiaj8XFssNkgrKcE39vcmicIMWEAGpL2un3T15tFYC9eVazAlth5wiaDw/132			normal	deca joins	weChat	active		deca joins	u_5ff03a2b26a86_rAB3yVxEYF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
141	https://thirdwx.qlogo.cn/mmopen/vi_32/Xr7yZIcUbDYm6ib4egP2CCHIibVQSdSZ2jyaebcVrib3BYbRTNwQL5PC1PMicuAgRaKcLT9OwuM7oeR90noOHUklFQ/132			normal	Sunshine💭	weChat	active		Sunshine💭	u_5ff0010c5f72c_7iUdfGGVDm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
142	https://thirdwx.qlogo.cn/mmopen/vi_32/AN8VDOn15WzQZDTUs8kK0kicto8cXGYe0OZMlbdZa59TvUetvWoMnHJWHR4PMYgiccVAoDa1akEyW1ocarP8C3Fg/132			normal	Chenㅊ	weChat	active		Chenㅊ	u_5fefffab317f5_KBig1EDnS9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
143	https://thirdwx.qlogo.cn/mmopen/vi_32/ulAfJ2ls3Wj4H4HBw8ufiaACfAwqs1rHFGASibqC9Fls4zvI9uPSVjofDtapzKgT0G6fDpcwyYYKhcFoEiaXDOXBg/132			normal	不如去闯	weChat	active		不如去闯	u_5feffc2b72495_ACT3tOg7aF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
144	https://thirdwx.qlogo.cn/mmopen/vi_32/geSg2L54ZcEFwJ2uZB3yibJJlRARaS5O7kI7Bvha1ZKFibooH4nIN2ibza7P5KvbyPaMVnialzxlab1pA1Spgpskzw/132			normal	春风	weChat	active		春风	u_5fef48d426422_M6uUvlV12b	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
145	https://thirdwx.qlogo.cn/mmopen/vi_32/gch6rXI1gU5LMZu0TloGGqgG5ibDWPjz0sR4o26jO7ETM9w4GibcsiacOmLIJ1Z9X4A9ZPQJwicxXDu9lKvzmT1b1Q/132			normal	自强不息	weChat	active		自强不息	u_5fef05998d509_MBvzH6ZgmK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
146	https://thirdwx.qlogo.cn/mmopen/vi_32/s2IZV7NY1qLzEC3TqwFniaDQstRwoDVdIeapibibeQze0FnQdKsclfKEw5OpEOJPV1jxKMgevuAf0f5kwF1ge3Xaw/132			normal	一路Yilu	weChat	active		一路Yilu	u_5feeedaf6662d_Ebenahpl9f	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
147	https://thirdwx.qlogo.cn/mmopen/vi_32/kXpV5eSyHLGETDEVYfNIQ5qmNWol5Coty9WEvLVMleEt81mDSftJ38Rvtxv1mzbtr43ZYvIa7BiadXslspI6X0g/132			normal	lilyzhow	weChat	active		lilyzhow	u_5feeb3c55ed2d_s8FEKWYWE1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
148	https://thirdwx.qlogo.cn/mmopen/vi_32/MQqE8libWSkMJIHwn3fXDpBMLjqFREYnjOiaWOXYtDzWGsSB6dEoFcYZQ4ia48KwBcvlaH88HYQqg286mjHtO2cow/132			normal	哒哒哒	weChat	active		哒哒哒	u_5fee90d125d76_AfCqhTyax4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
149	https://thirdwx.qlogo.cn/mmopen/vi_32/R0t2U57ez7qjia0Uuzm459WzZz8NxfTIBbj98PGV1Gp0uhr83830nScpIklKEUegm2Xgy4QF1qG9Tleu3VrKVHg/132			normal	什么	weChat	active		什么	u_5fedc98b474e3_BernzLRZXS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
150	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJbSPetaEBiaobwOoauCmUz3qpgyHZibiaL11TxruPe93jXavZibdiaMVPZD6XV9K3Id2MiahKcuZQE6xPg/132			normal	精源粲外送箱	weChat	active		精源粲外送箱	u_5fed7e2354925_hmkchIzqes	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
151	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqORDv4hcWlk55SXHJPM8ma40DTmSeialmZy1ZbWNOJ4vxPlmB28bArIoF2ZBsaV7icIuvDEpOakUuQ/132			normal	Yoyo-诗雯	weChat	active		Yoyo-诗雯	u_5fec5132537b6_3akoO8Sqcg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
152	https://thirdwx.qlogo.cn/mmopen/vi_32/ARDEfHQEvGk3bId0eYRWcWTUes5wywNvFGXeSDQzjGNr9haLxy7iabMgicwQH0Sg4rx44ZibntDb4bSVIPeNPR3kQ/132			normal	阿白	weChat	active		阿白	u_5fec4e5c6449b_MQs7lf5gVr	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
153	https://thirdwx.qlogo.cn/mmopen/vi_32/FVWib60zgUj4rCOCibpFIva6CW2SUyeDTN6BgrAjU7AVcoePXglGlGR70y2p5TFdgeNKicpNQu1DNUrJMnlibobKiaw/132			normal	Elaine	weChat	active		Elaine	u_5fec4c594cd27_EYeD3N7lA5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
154	https://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEJaL3hc0adxXE7sKnRxL9FXY4IV33owZTEzYx9dib5cHibjzXNbPUjGh7AdOhWAk2Bk50KpKKR4ibSKQ/132			normal	妮妮	weChat	active		妮妮	u_5fec4afa3f1e2_8uNNgkWSXM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
155	https://thirdwx.qlogo.cn/mmopen/vi_32/rVlj6T4rRs20GfGTqzicLmibnFHbfc62W7doIyBq3g7lIEclPno7RFBrotGLmcuZrkc6GKXt5kXkzmMOEib3y5CJA/132			normal	我也不是不想养猫	weChat	active		我也不是不想养猫	u_5fec4a11477e9_Cm7u84DSoo	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
156	https://thirdwx.qlogo.cn/mmopen/vi_32/b2UkchMSHxia5HlqAmic0GTWsSewmFhia25RWRyMTD3ugibKYhwaiaDLU9cbnUOAuBmMLf5FMxLt56j3zMNW8Cicms9g/132			normal	Inhaltsein	weChat	active		Inhaltsein	u_5febe0a63c02e_FidRC6CeEF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
157	https://thirdwx.qlogo.cn/mmopen/vi_32/Nhr2By0AKpuW19onwor7ClZ5Rws9LFO56B6WZM0M3mUwLOkRPdpibUIuecOrQcib5uib9w7KesbdMtcBhV4JsRsQg/132			normal	TT	weChat	active		TT	u_5feb4caf1c588_R2Q1jAkxaY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
158	https://thirdwx.qlogo.cn/mmopen/vi_32/VQniaFZTiagBQPZpH6sZY0pSicKLMYP5TGTdLFmTL3TYMFgdrnicRBt5AwxKEloORGicJZTJ6v52ZY5ib0iaSzCVjfpicw/132			normal	家欣饼	weChat	active		家欣饼	u_5feb46864db9d_LSzDQnEgsP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
159	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK0K0dUuiaVTdfpNWBib8sXYT9xSYBaEEYvcf2J2ZBDY3IH7oBEO5ZAwDOiaGJKoosuKJWh1FoYxsY8Q/132			normal	w_youth	weChat	active		w_youth	u_5feb1ee94c742_DTsE7GFYoC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
160	https://thirdwx.qlogo.cn/mmopen/vi_32/J3Sd30Y0uPYVMoNfiaahNqYWdGhWicw7og6Q02Igs6tLbb3eINKahIbjljuAficDicwtHVx1bmkWpnUuCx0ovxeCPg/132			normal	用户6143	weChat	active		用户6143	u_5feb136d13aa1_nBk8Q5cGGw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
161	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKeJS3Xk6T1JPQg5A4FMFI1p0GKAbqp2zfv9IbP4H6On5OzMABnTTKtgloPnU4LCaibs5JK0KOAzHg/132			normal	夜航星	weChat	active		夜航星	u_5feb11e11d068_eYX7bsWtgf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
162	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5feb04b651e2e_GQKBYUmr0M.png			normal	瑰琦意行	weChat	active		瑰琦意行	u_5feb04b651e2e_GQKBYUmr0M	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
163	https://thirdwx.qlogo.cn/mmopen/vi_32/0kUTQqYmxyiatLYSVXSq1eIacaq4cwanibYLsAibx5m6wkPPZlzhntlH92EaxLzeKRxpD7OLeMDhmI7H93PF0sBsQ/132			normal	L.L	weChat	active		L.L	u_5feaf2c751d2b_jLP937x2VF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
164	https://thirdwx.qlogo.cn/mmopen/vi_32/pezrx145vlWtwSmYtxGicvibXupj7ia6puJFibULwT7oOO1icXUQLeiaYkC7J1mQqfic2mmjqJjYadlibYIvAsE0UoPjOA/132			normal	陈敢敢	weChat	active		陈敢敢	u_5feadbed4f080_VqsocQR0aG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
165	https://thirdwx.qlogo.cn/mmopen/vi_32/ajNVdqHZLLCrroL2hzgIUmNaicMekKrYzHMpUEcKCxOJUqxnXoUJROly9vDHvgJKRffMcjO5GYVYUYdu0zhTtCQ/132			normal	又晴	weChat	active		又晴	u_5fead2914d37d_ZdlHeM53Wv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
166	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqL1VYsGGxXyF9GUBj8dwl8YjTHZYBj3Z1wpX1ibNIUlTiajsAyVicYQqQfdGs1zPmrpDpdFPFB4uDuA/132			normal	Yieond	weChat	active		Yieond	u_5fead01f136b1_48IY6T6bKV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
167	https://thirdwx.qlogo.cn/mmopen/vi_32/Q3auHgzwzM4ibo1q3DYTnic4SOxXc74cVUlC1zyF4gCunsHibMdF19gFwe7hM8DOmJO9dpzC00g8ZIMVz0FEAAW8Q/132			normal	曈曚	weChat	active		曈曚	u_5feaccdc60d37_reTxANVUlX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
168	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqA0oTXV3mgau04O0RjATJIO5FwMZhpmr3jib5g8IVnian0tCsA9VmkxWkY92s0W79YibicNK1tMXsMUQ/132			normal	人在旅途	weChat	active		人在旅途	u_5fea56384cddc_1XuXgQ01CU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
169	https://thirdwx.qlogo.cn/mmopen/vi_32/FMGHUib4SlFq0vDjmwribJ1LaJyVI9vklt8a0JCqFafvjQRw5qtWo22Oj8bicYHaSrdYSTA0ChXrrLCiblh2FFGibuQ/132			normal	舌头想吃但胃不想	weChat	active		舌头想吃但胃不想	u_5fe9f88b166f9_Og7W4Q3Tyy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
170	https://thirdwx.qlogo.cn/mmopen/vi_32/wqDnUkTwXthX016to6xLfazMrLV0SEKCYbcRu9ALhyYKUaQtkuavdTpksxYADT82iaRKnt2bHuGeRhZBMwyCI5A/132			normal	瑞瑞贝卡	weChat	active		瑞瑞贝卡	u_5fe9f3566cd04_eDhZPZ5tvN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
171	https://thirdwx.qlogo.cn/mmopen/vi_32/UAlZnVjpCBRsY46nCjlMPFYRZVZvsZrQRPbHU4BLA3Kk1EOzC0hibCPZ5ywiaYbmYWpaibtEKibedcrQ0uHpFBbRsw/132			normal	小鸽子	weChat	active		小鸽子	u_5fe9f16d2ed2f_Vrb9G1iEMi	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
172	https://thirdwx.qlogo.cn/mmopen/vi_32/wgXT18IR9icbX4ZhAHhjaRYK45wBdichXKPMTxD06mDLhZNQhh0TVGZBkdDCn5uINdicicLgtbFCuDlQiaQ8Kn3tu1w/132			normal	再见了德米安	weChat	active		再见了德米安	u_5fe9f106c29c7_Di16MFXd8S	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
173	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJo4CibPWYMa6EXKECDONwVaMIGZ9DT1XibcCya9tDmBvKDJSKqT1qfHicNXBib7n3RaNpXMvhc8ZSYKw/132			normal	周哈哈	weChat	active		周哈哈	u_5fe9efdd72771_DF17v9BzDZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
174	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epKseVLqWuYv3NicHibkJSV7BLZuw4yCVfGZ3lhic3hgXhqwnufu2Wj1fWu2cqpkPQic9yM7sxXq67Qhw/132			normal	HOPE	weChat	active		HOPE	u_5fe9efb57276f_jGirL9axFm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
175	https://thirdwx.qlogo.cn/mmopen/vi_32/Jp7LdHibIC3KlADlgOvXIH2I1Nq6vwRFJ7FPnwibRQgShHUMFxUpMic48PJxMiaaibagPK0pJExeLOrnCOniazESHyfw/132			normal	sky🌶	weChat	active		sky🌶	u_5fe9e3b8367b2_9XuDDu7bVT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
176	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epCh06iciaRRNDrgSQtzb6fgIGLZGkYNj6dhLzzKdNiaDl6z5leL9ZKGWdMvSSETLTgwuwJ82xic2xujg/132			normal	YEPANYUN	weChat	active		YEPANYUN	u_5fe9d9be27816_ojuWyO5Yol	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
177	https://thirdwx.qlogo.cn/mmopen/vi_32/XboqrzByF4XcxugUhNUpx9W68rJ0lHxFmw0cGg1SyK5549XyNaz9dfPbZUsvzKib6HJ5XVgtwbGPvCsfqAAfayw/132			normal	大闸蟹	weChat	active		大闸蟹	u_5fe9d0c83665c_3BIP2xEtfi	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
178	https://thirdwx.qlogo.cn/mmopen/vi_32/0kzSDiaiaAjKXCp5bSnlictYeKDOQjEySqORUbvCV6pkZOEOfNDawxHCGOn26qlYWnLS3mq5noZiaB9eEwDJg6icqxg/132			normal	李宗霖18814372170	weChat	active		李宗霖18814372170	u_5fe9cfd872560_yUhwW4OPyS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
179	https://thirdwx.qlogo.cn/mmopen/vi_32/E6YkyaDa4u143icBAaIXAe58WqwicvDNZVwHEPQNIhicjKZOcsTxIgHq33cBcib4iaEBYWItxxfwAYvFadG1jCRN4vg/132			normal	绵绵	weChat	active		绵绵	u_5fe9a769564e8_33uqOrEUtC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
180	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eolXiaTCNicFWdKL7sd19kIczy5cszaVP0VtqozGdpMLtKhmv7ETWt75eHtUf0OjOAYGAso2ibZy7XNw/132			normal	不吃碳水不吃糖不喝奶茶不长胖	weChat	active		不吃碳水不吃糖不喝奶茶不长胖	u_5fe9a09a39201_EuBgy9U7zD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
181	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fe9983456411_VFwhCdliLT.png			normal	啊立本	weChat	active		啊立本	u_5fe9983456411_VFwhCdliLT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
182	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJYKsWbIZVyMp05CEjXUwRRa2iblc2lcTfQC6SRFABSaGKhYmfGibsbtZNBBVfRlB1oIicLU4odYic5Vw/132			normal	🦁	weChat	active		🦁	u_5fe998191ef48_YcXXrSxAeS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
183	https://thirdwx.qlogo.cn/mmopen/vi_32/ibBQD8o1KicKvL6pfaY5mQ7Wm2aOGwKu0krcWafoibdhXh5bI4T5Hakxta4bDesB8TvjPrcZVOPFiaobQ5EQ2wicleA/132			normal	Lory	weChat	active		Lory	u_5fe993eb13e10_v3pzPtqm4M	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
184	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJQyP4WVaRJVQojnFWcsMlS6Cg0ImtUbPHMcibKdtPHVMN0Xx654cfOmp1hicNVcGFTURcVSfmJISlQ/132			normal	Candace	weChat	active		Candace	u_5fe988de13d68_LgX8vKXUWp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
185	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIYiciaFWe5FQgYibYq3QJibdBc3icfsC5xJmLA5c3qBcVej2sZaoQZlmYDGGvGsN20xuA8FcEGH2EfdEQ/132			normal	wur hik	weChat	active		wur hik	u_5fe9829b13cff_LDpSCKFRuM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
186	https://thirdwx.qlogo.cn/mmopen/vi_32/WbiaVNu2YfBcMob498ugM0LstDAzHaQtgWrLyEepbEicDGbWDjTgkwIN40KZ59zWnriau3iadx1ib3hl2bhlkX5eKnw/132			normal	薛定谔的微信👾	weChat	active		薛定谔的微信👾	u_5fe981922ae79_CieFKKkmID	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
187	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLsuPxIWODMCQvLToJgicYkLntLxjWSqaOPMMNn4qCIG5vHkahDGuZJH4At0HIicCJ2sawdBUNBlKMQ/132			normal	🍓jacky	weChat	active		🍓jacky	u_5fe9810e15198_G8FK9boKUg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
188	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoDbVIx6bXBFTDNzNHy2HHQmLicL0J8EomplwlKtxTexA31gwzRKxRaQLeVLVtMgOqcRDQxIWAqtFQ/132			normal	zizi	weChat	active		zizi	u_5fe9808f1156c_YmkHAnWyEX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
189	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIeI0DQlZnqYVSDL5zX0mz4Jro4luHaEv0NJw9QMerH1Lyswul7zP9WCx3yCbNicNVmTze4bVVrwAw/132			normal	hdoyokaku	weChat	active		hdoyokaku	u_5fe9804cbf898_fM0TWopWUu	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
190	https://thirdwx.qlogo.cn/mmopen/vi_32/PBibdlJ58vbdEtW2dF7ibjVlnlTaoJhALnGePCY2J4sFpxnr2edEakLn2wckgUrtFhEP047viaEAwpPu97hibBv9eg/132			normal	乾之	weChat	active		乾之	u_5fe97ee6d1b6b_8vaia3buat	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
191	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLVeKp01SQWmKODR8nZnVFJ3ib5ggvfXUDicScGU7icaa2TVliagEFMibfkCE7CTiavjBhsHShME0mzo6PQ/132			normal	Ella_zzZ	weChat	active		Ella_zzZ	u_5fe974682add0_EgxuyIXlid	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
192	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fe9692415976_kgvPlMtinL.png			normal	星星之火	weChat	active		星星之火	u_5fe9692415976_kgvPlMtinL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
193	https://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEK5S9BcssS7gibajb2jYRj6Jk0JhYbWe2krzETdichC7hc3lKonQugUSCbaFNFjSXkfcWkWqWibKQPicA/132			normal	AAoTToMan	weChat	active		AAoTToMan	u_5fe95d2f14ffe_QYDZeXJWyx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
194	https://thirdwx.qlogo.cn/mmopen/vi_32/Zay4WvicO16CSfYiaDZrrCc6aB7PfPGq1fxjHg8YbdjEzAyo8ib1p1Z15aDyyFNvKzufIGEuMNNyuchzKaMBDvrAw/132			normal	Felix	weChat	active		Felix	u_5fe9576b1ec0d_U5htY3n4xK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
195	https://thirdwx.qlogo.cn/mmopen/vi_32/XciaGP1qZogZyNicjyaIDECZf0MScveJUlBshCiaLDvfZubFGxAia4iavZsAosagncMa1vQow49q50IK86z4qVF2jWQ/132			normal	茜	weChat	active		茜	u_5fe94b0b6251c_suXBPjTaFD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
196	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eofElq6ArianxNxdI83oNibORf5tNnO5jy5oRwnUgDekuzLnhIhkjniaxasQYRaw9jkQKgVdS7Eh0nbw/132			normal	莱克西瑾	weChat	active		莱克西瑾	u_5fe93269111df_2axpfQGHHz	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
197	https://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEJzicqd1sxkVmHWbzO8ArLEZNK2Rm6Hy6qUv7Fjb5iaQHdueXFSKs2v63RhhEMMSjpdfzbNEa6fvlKg/132			normal	Cardioid	weChat	active		Cardioid	u_5fe92fdd13932_AcwsPMAHDq	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
198	https://thirdwx.qlogo.cn/mmopen/vi_32/ajhCMPPkicBIqFibFjiawg8ibzF2Yk4B7HYthiaiaCNERlBGicXhxMIGyjmP01yQx9SsrYvHyf5lAjmlcr3aGSyuQVPUg/132			normal	Andie～～	weChat	active		Andie～～	u_5fe91bedcd4c2_0UehfbjSkx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
199	https://thirdwx.qlogo.cn/mmopen/vi_32/KvIOUuFdFhl4sTdGC1KmbxIzoOYXp8Fp25Ep8icwEzmdG6YnvS5fbldep3QvV0icic8WqjBZia8Tj4hxZUKB5dUib4Q/132			normal	花开天下暖	weChat	active		花开天下暖	u_5fe91765bae4e_7pkPFtrJI3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
200	https://thirdwx.qlogo.cn/mmopen/vi_32/et1EnV121V3Zfs9c2smQTQkIKEAeuia7bQG2CyhyRqJhVlHaRbCr30O2mfjIAG8KIJyDcIfiaLtAG0YwS8Nv3oKA/132			normal	Moose🍰	weChat	active		Moose🍰	u_5fe8d3d2b9ca8_4yvtGZ7VTF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
201	https://thirdwx.qlogo.cn/mmopen/vi_32/fP4x83hoI6XdXETfy2MqOicJfic39cRrge5QqmId6ZJ5cnibjmiangtJZ9KdetiaWjP8ouMnawkicR6umFsrx8mJc1AA/132			normal	lf	weChat	active		lf	u_5fe8a70446952_wKJlcGI8jf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
202	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK0aq5JIcGkpP3flcJChTAicpibhuhkJXvO1moibnibicJVaWRQicKRrks7C24m7exy78RsnAGhV5Imuu0w/132			normal	leslie	weChat	active		leslie	u_5fe8a5dd2a7d5_Ct3X7ACRa9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
203	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTInk6tZfjiaebib8A0JhjdUSicRRfvcXWteFFvJInZY5ZHic8hVk90J985m5vdaSIm5Ws8n6Po8qouMDw/132			normal	柠萌芽	weChat	active		柠萌芽	u_5fe8966555b66_znbaKQNmPz	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
204	https://thirdwx.qlogo.cn/mmopen/vi_32/vNwiakbojuicOr5oIfibJwgurWzrwogV0A2mXiajibYwSE5hZQbkAFmm2rKaMibIQzG33BvbFr81k6PxM0vSuPqpLdhg/132			normal	榴莲	weChat	active		榴莲	u_5fe8933e13576_nM3IvFwPbw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
205	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIu9BhuuT8FtVMN3FwqGHQsL4mQ9fje8rpleScYkCQoZoHr81E2f1fbLptklzDfr1JPv1LGKMfeEA/132			normal	用户4832	weChat	active		用户4832	u_5fe891058a120_St1tAeJHNo	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
206	https://thirdwx.qlogo.cn/mmopen/vi_32/iarkNngBOcdibv2ycLLx0HEM0ic6VDHKVbibBeGsFItiaM3OBcT4qGQ11KhZbwyp1btnNRxxfJnxKfSf6pXRpk5URZA/132			normal	🐑01	weChat	active		🐑01	u_5fe88e9455af9_cIRpJEOpkJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
207	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKEZJuqSa1jxmXZRSrFe9blmJPXY4yxib26CVnuGOwibQ54icbkZSbmyxibGqpRngOticPiaEjXiaL1DqfkQ/132			normal	慢慢微笑	weChat	active		慢慢微笑	u_5fe884481523f_ca25E9BQc7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
208	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqH8XBgeyD4wnUYctICHhUZZuZVe5SUZdEiaCfwa3CAe1liathUQbYibHOs50fd2S3dM6lrMnkUhAO4Q/132			normal	kylin	weChat	active		kylin	u_5fe8840d1523b_DzJ3oXZruK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
209	https://thirdwx.qlogo.cn/mmopen/vi_32/mxf69PhUt8MDg4ZpWsUjfB3FnQ1t6RmIUjOdelRUPTYUnlakA3nYDXiaxicqI6OTEm38rQjYUj4kicKseSH6YkF4w/132			normal	🍊 有点甜  observer	weChat	active		🍊 有点甜  observer	u_5fe87b4ac8ee5_aDSmHC7dJq	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
210	https://thirdwx.qlogo.cn/mmopen/vi_32/XHelNs0FISTcX0aSOa1wwf1fNJa5sm0fKSFTFYqSZYBNUibaODkts0KzFKLscqqRDvSg1QAde2HAiaH04kLkwdsQ/132			normal	'ToLiv	weChat	active		'ToLiv	u_5fe84f62109ea_RPgOaSTD1g	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
211	https://thirdwx.qlogo.cn/mmopen/vi_32/2npJHLhibcOZVia89wY7QaMOXicmzB8iau2asia4uYSYnHniaeuV8N9eFIT2Xz76TibbhWPWRaZTxyZlOH7c13FGT31Tg/132			normal	似风过巷	weChat	active		似风过巷	u_5fe84f5255723_eK8q4Ruz3e	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
212	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIDjeSlBysRVc6G7IoAHqeibsrlYbJsibFwiaphpLoSxuka5LRqcNy6pVMd3V84Y64ZnGDtUT3icRKQLA/132			normal	贩卖假日	weChat	active		贩卖假日	u_5fe84b75109c1_CjphHQQ0Hv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
213	https://thirdwx.qlogo.cn/mmopen/vi_32/wdK2icrgILDib1hm3FCEjZibWyL7SnoyaZt4EDvAVx1McrBSPluCTEN1ZStPxxNRRC88ZicibbwM9z4nStGiaxOwew9g/132			normal	stray birds	weChat	active		stray birds	u_5fe84af2b3dbd_OPpkt4NPVI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
214	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL7mOvyibSwLVcDc6tGVTVvEEknBwJ74E169dkM7mmnJO7fgGCoxcSNfDL1hgAnwTZ3zHOiazcqneyA/132			normal	Squitor	weChat	active		Squitor	u_5fe84ab5b3d96_ErVaa1aFyr	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
215	https://thirdwx.qlogo.cn/mmopen/vi_32/gb8fmEmnrWRO5JFtYapcMhUImwUEIs0lXXKUdMs4lNs9rvYRjXmVozHPJxMSh6JscNeGkJCdmuLpjXpYdJib41w/132			normal	改个名字	weChat	active		改个名字	u_5fe837dcc558d_HGf4mApZsi	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
216	https://thirdwx.qlogo.cn/mmopen/vi_32/rMoCTaLpvj1Mn6jAaGqBHmMzJxuul3DPJ3Tickm53Y10XbFDZ6tlamsVWNOYNHl4RMRqH6VE8ZOzKX1WCsDjScw/132			normal	十一	weChat	active		十一	u_5fe821d214d28_4QGnEU9vnR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
217	https://thirdwx.qlogo.cn/mmopen/vi_32/ga1kIsPD4po5kCzFE8q3vIj76YZYBTCXlW4uhLGYlTibYscc1V42YBbaP774tOLkeAz3dmTlyyXeXq0l5hclR7Q/132			normal	sophieno	weChat	active		sophieno	u_5fe82011107fa_H4tlfFbMBM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
218	https://thirdwx.qlogo.cn/mmopen/vi_32/K0OnM6OdM8ILKicsQTlxaEYXzib6J0icoQz548BBAicjZ5mxHK2AZvHndeePQLdaG640wccqz8D7skKHt6K6nYTX5Q/132			normal	Lone	weChat	active		Lone	u_5fe8144c461f3_EDQBhww3X6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
219	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJWfMW0e77Fa9kbAhY0atMYIaeTiausuic7iaPDLCUVse9RejrPermbSb1jxicDh0Kepedjw7KmpDTkfw/132			normal	Fredddd	weChat	active		Fredddd	u_5fe806cec35cf_dQTRmFW281	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
220	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epicaWlndRvdicDbDl4xWBRzMq1R4PoBVE4Tu8HCuthneNHqpUU3lGN8zERzw3iaiaicv8D9xZTBv7qFcQ/132			normal	不知火	weChat	active		不知火	u_5fe8066fc3592_lmFGfNTYrj	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
221	https://thirdwx.qlogo.cn/mmopen/vi_32/nyWYuUtP4Ju38Yb7KUHcFEx9VAxZUX4FuToNh7KrhmQyS6Rnq7EdDTHibKVicRia4eLB4M46tBF7cssmibTzcW0ibiaA/132			normal	海蛞蝓	weChat	active		海蛞蝓	u_5fe804e414c04_KUvt4BlC1K	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
222	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83ep3VwRf8Dic5zo4KwHtyk9aShLKptIqTQ3o3hj3yoYIzxqvR9sWCzKOySak2MuU9Wc4K5TaDOeEBrw/132			normal	LQ	weChat	active		LQ	u_5fe7ff6b14bc9_9q9E1vTkrh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
223	https://thirdwx.qlogo.cn/mmopen/vi_32/x783zU0jvA9C9EGNZicMGB3ySxt3hrbvdAUcqeqGR2NFvdAEY0NBc9sTicT8IlBUm85JO3a8M9MNM8ibicetbfWWJw/132			normal	放飞	weChat	active		放飞	u_5fe7fd69b0b63_CuLWIgaM3O	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
224	https://thirdwx.qlogo.cn/mmopen/vi_32/Y5U2ADUvruUC9nnxzac7Zjtlv6mibdHssIib4uUSKVDEqv3tDHEOpL0ib39AzibScibDQBs6XMkXCiaULsxsGCENMXhQ/132			normal	YEE	weChat	active		YEE	u_5fe7fc08142ac_yFZitdMcx0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
225	https://thirdwx.qlogo.cn/mmopen/vi_32/4GXO0Stia1PYJViaTBo6S5lkXtdH1VQyvuaiblpXL10PSjF5BMzdibAYzE0tMBKG8TX0SBzPeJbJhNunGiclbiaVjxMw/132			normal	野也	weChat	active		野也	u_5fe7f3581de94_TJGAL09aCY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
226	https://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEIpica3CVDKcJujBWhGparuEC764IJyYSd5xhZdMeeiauicUWrsmSShRyE3iacNspZqnBs68Ml07LjwQQ/132			normal	蓝来的小猫	weChat	active		蓝来的小猫	u_5fe7e4711ddde_DCUT6M3CzV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
227	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq3xRHyPm8J4Ec7iaZa83Zq7htgmnEVyg6RE3YmNms0LOTKFzrq0I9k4ALicFenbgaNZKPGCHK41uHA/132			normal	.	weChat	active		.	u_5fe7dea929e24_Lp82eeDsSU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
228	https://thirdwx.qlogo.cn/mmopen/vi_32/qyg6IebmZFL3aDFWoUiaRMd6qK5WMVKJozF7D4JNSZlkgrQicciauPyyDb7j25GBwXLicXgicGLc49StOHuh52MRCAg/132			normal	Running     Run	weChat	active		Running     Run	u_5fe7d51faed86_f2evRkASpW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
229	https://thirdwx.qlogo.cn/mmopen/vi_32/780duUEiavmM7EWsIO28oYkOMvp5377bgVWickBcf5oD0iauhicG6ok35YC5EnWJ25QHYs3rGK9cSGhRuZYyq1gO7g/132			normal	多多	weChat	active		多多	u_5fe7bb60ae194_ZELWWyYH8T	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
230	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqrMIhiav4lHSb4kMY0AYMsGJsMkl1A2biawSCSzwN2iaaCe7utMIpTYbpVLGJkkic0oqxBv1O2UibWVqg/132			normal	今川	weChat	active		今川	u_5fe7b88212b61_fgvDOOxeyQ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
231	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLT6NGq5G9ia9gxxfSvUTciaMOX6MiaTTuDMVdtc76yOTAQn9JXahQDKeV8s5LUJaYGGSdGyibg31PQjA/132			normal	。	weChat	active		。	u_5fe770935503c_kq66tizZFt	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
232	https://thirdwx.qlogo.cn/mmopen/vi_32/z4y3aiasTibw0Mts15J82NWQTdlfAvr1hMBD6wibEeiaxUzYt93icTaIXLPTia61jDugVz1qu5U5nk7FIxnWLHPpZ8gA/132			normal	Odysseus	weChat	active		Odysseus	u_5fe762ad29bc3_K0DJqZuwd5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
233	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epj8vrLEcaCnwSnfiaibPOpcEtNBPoIVuIN8qE2ynlXYM15ibCDAeatjlUbXuAv8My14hqb3rYvFG2Kw/132			normal	天洐剑	weChat	active		天洐剑	u_5fe754c46ef59_fUTOfyCZk0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
234	https://thirdwx.qlogo.cn/mmopen/vi_32/kgyGcDgRGlVaq5mdJWibgiatJWvib2xJx81wO4ibQmEMprIArMQsgrAQ6KF6tT92k1o3oSaTkA6AjyRCFLVzOw1ibZQ/132			normal	拼	weChat	active		拼	u_5fe750e4129b6_oWxsfIrqLC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
235	https://thirdwx.qlogo.cn/mmopen/vi_32/Q3auHgzwzM7ibhDgiblI5V0pNz8vBpx9oLvfw6PYtSb24NGSryzy4EmbuE1B2SibSUnx6diaibic3yycFVsO0B5PScRw/132			normal	神经蛙	weChat	active		神经蛙	u_5fe74eba611d2_6hCQek12xw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
236	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJtKW2nUKKbOXfFZMW7PXjqoJmn4Y0NMUvQZgKXvZcRBlBkgV7U0KlFrpolia5rPpDTqZTicyUdD8Eg/132			normal	🧸	weChat	active		🧸	u_5fe74d161021a_9rGcjn2PlC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
237	https://thirdwx.qlogo.cn/mmopen/vi_32/yb5R8iaxicD8tlia1aKEibBQg6E832PcMmPkQELTZzLTdWq2UKKhvGmZy0VzdnJ5qYibz4ficPr65BMbzppXUkC6GYBw/132			normal	Yep	weChat	active		Yep	u_5fe74cdabe78a_elX1E16muc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
238	https://thirdwx.qlogo.cn/mmopen/vi_32/XLyJE3Byiapo2uNicH9xCe54zoX4dgwABqaXTQpETv7NDofpAuCic6m5icEWNdNKtpbk3aqUlGgelia2BVUyOGz74qw/132			normal	Feminist.	weChat	active		Feminist.	u_5fe74c9114730_GeQw0DMira	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
239	https://thirdwx.qlogo.cn/mmopen/vi_32/p2ib2jloMGBoXWjia5mpYibt0T23hxIcfQyZ4Iibo64K0mkNktSFSRmFy9viafZPnDn8fzzZmz2BxU7JRjDHbiaUQcrQ/132			normal	kn笑	weChat	active		kn笑	u_5fe74bd414728_pzVCfM6ze5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
240	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ79diaft3MIfX3icVRAibMbGdnGUnBRErnze6ibVCbExUBLnyc4zC0icGYmZJEYdTpZ0iahibWRsdp8LqEQ/132			normal	Rio.	weChat	active		Rio.	u_5fe74bb714727_ucHl1BolUc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
241	https://thirdwx.qlogo.cn/mmopen/vi_32/MWs6nBSHJBCp1oxqjmIQ9NJ5QVz7TVIic451IxhT91TllPiaNkKhdUBBibpAjoVqc5tXz54bMXC0kdDI3I92aOQ5A/132			normal	爱运动的赖小厨的三十天	weChat	active		爱运动的赖小厨的三十天	u_5fe7410429a7f_pArszUEW33	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
242	https://thirdwx.qlogo.cn/mmopen/vi_32/ETmicU1bTbJ92Io1KhIS5Meg3wickic6sfbCHs7mMawHzicd0AKkqwcE5BrKIoL5vwZVIg8mTicQeOBibRC5ibmibxQUuA/132			normal	Em	weChat	active		Em	u_5fe73fc961104_EtUvVit2G5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
243	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTINM1FHlyct6iajtSRrbxAG17gbD2RxRNxzdgoeNjUI58EcM8Vz3vjYzVc3KlrEpaicK44Y5Up0ibNaQ/132			normal	.	weChat	active		.	u_5fe73f0610165_XXcKF4KWZ3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
244	https://thirdwx.qlogo.cn/mmopen/vi_32/V1bKQ5bLmM5xI3NWIf3TiamExTzDUediaApAUt1g0Choak2Bx6ozHovhY04OsDPlOAvvHCtfYp9KFpV6x3uz6udw/132			normal	没头脑	weChat	active		没头脑	u_5fe7385054e3a_5E9Qm6fACk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
245	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKBoMA48Aweblmv8IFHXa1MWOQm0MyhkWLde3Q2jIjjW5HqB4XqnDW0ibv0zylZFYej7RqbX9ys92w/132			normal	吕纬甫	weChat	active		吕纬甫	u_5fe737321d961_yOdhCphKPM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
430	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd885a9c06f6_cPWnvcP1QZ.png			normal	Maruko_柚	weChat	active		Maruko_柚	u_5fd885a9c06f6_cPWnvcP1QZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
246	https://thirdwx.qlogo.cn/mmopen/vi_32/ye4j0eKC7udsSMngvnkbK7q7M1YTD8ibNCicKTfAnov8RN6WxjMG5az0tZx0wpchmB6PX7D4atVLm0IRalxib595g/132			normal	呓语夜风`	weChat	active		呓语夜风`	u_5fe72e0314568_CgQvCzmRVZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
247	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eo0kmmuia7R51N0WVuWeiaXRZaa0o2RudQV1ibOwhZoV0VMPTKdIc4GgibKYbPFEF71pgicibRGF0wzrERA/132			normal	斐斐	weChat	active		斐斐	u_5fe72c9a1454b_ldeL8PIHDp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
248	https://thirdwx.qlogo.cn/mmopen/vi_32/LHoOSHiaTfLxMpQUK9jVURQJgHMDEnYnREEeWCDG9vtE5eXy7r1C0vZ47waTCHg0Q03qhQVwwuPKjtyQTg7YlDw/132			normal	工藤新一	weChat	active		工藤新一	u_5fe72c9654d69_n8ZqlqmdnS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
249	https://thirdwx.qlogo.cn/mmopen/vi_32/qWEgfoodu6yjRXJdic5W5xiaGrGXDDdia07micHly6duqZ4dXcAGnicIgy5NscffEH1VMnO3Ziao7TB0BuxO8PhdxB9Q/132			normal	卡布叻_船员	weChat	active		卡布叻_船员	u_5fe72c8b54d68_9tKBMt8cx6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
250	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKFFicXqEibMrUxysretc2xMVLd3QKj4nib9pHaIbliaqHaOoDfs2VpqDZ3dhFTFicPRXJaxksSufCMwKw/132			normal	marriage registration offic e	weChat	active		marriage registration offic e	u_5fe7214d379c4_moLKCeHcrc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
251	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epzpjeG7cqFvXkpXBGDbsgC07Fog5lsQ5ydpGVprytNZRx84ZHlhxefG4GJpUvvm6HpyoPleTo1tQ/132			normal	宁艺涵	weChat	active		宁艺涵	u_5fe7209c4596d_fxvpBogDlV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
252	https://thirdwx.qlogo.cn/mmopen/vi_32/ZrXe4GaBZiaAzdwaxFQrMOgy5w63ibhkN8yhzBYSOT0FdhIUI712e4CbFOjYicIub6tlcRwOSmt4QgbEetGpPTtpg/132			normal	曌	weChat	active		曌	u_5fe71881ba7f0_F7yiNZaNLV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
253	https://thirdwx.qlogo.cn/mmopen/vi_32/HMLdxRRMBBjYHN2omnkXv01MSTaRyiaZvdUzzJub72KYCgLfBwtaXXicsbUGHrroeJstYhibEXYRhMlY0WtklmeUA/132			normal	Clown	weChat	active		Clown	u_5fe7184c13a3b_ZZavqC8GRm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
254	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLDnJic153ibMeTozHWU7DMeWBbibYaErZRzTkZvQ0dGUaFdoZ8DORib5TBV1ia8CoNQry5gs1WAY55LGA/132			normal	小鹤REMI	weChat	active		小鹤REMI	u_5fe7183814330_Jqp3ALBz62	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
255	https://thirdwx.qlogo.cn/mmopen/vi_32/pQKVPbKUuNXicIGia6bicqF8RKeGQBd5hESfN3oT7oluL48f2FydLt4Z8koag06mONhOTlKtYb4hmgPaiaPnx7gkLQ/132			normal	听风	weChat	active		听风	u_5fe7151560d2b_Q4BOe7LT3a	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
256	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLoS0BPCjXKb5JwczyiajibvuZSKZuHbjxpa9C0gWZwXwgZtHjWkcBANOGpKGR8VeDpxhXJicraSiceww/132			normal	高嘉璐	weChat	active		高嘉璐	u_5fe71413fdb92_c3UkBJwgUb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
257	https://thirdwx.qlogo.cn/mmopen/vi_32/vv5shpyDhM4cpN6a4fxX4xRg4nkERKF0IR9icGTRUTh6a1x53cRQvznn6FtuQNfFlGIefhdfCQSoJEBDcWCeqxA/132			normal	🧩	weChat	active		🧩	u_5fe71388a7ce6_n04t4RTEMj	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
258	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJq3Gwb95oCTXZykzOIosliaYprviaQdic8YekgFJ4LxiaNib7sibiaYfquu25OdxlhKaR56jgmuLaRNKkJQ/132			normal	张婧	weChat	active		张婧	u_5fe710482967c_8LaUeVmXQn	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
259	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLW735qB4CvvtiazXvxBGMvmx90mmAzbdqic9LkBltVibTJl7giaVYXnHwb8yPiaj9YUiblJHUe9dIJVlibQ/132			normal	唐棣之华	weChat	active		唐棣之华	u_5fe70c9f54a86_kojLeNx5oX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
260	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIPfZkaX9iaajZibc3N44PY7jENNGQKU6Azheu0PsWK2kVCrsOGkrkLNFo0w8mkK4cVsG6xthic5T7Yw/132			normal	wooooo	weChat	active		wooooo	u_5fe708da14235_cKWW2BDw2U	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
261	https://thirdwx.qlogo.cn/mmopen/vi_32/8A8qO0ib4rOfpYjIhRDcchb4WpJ2KRC5zg1RzicSuuVT1foibY9bq8JR7ic7T3TDicQhsKK0AAx9DsZUrlRCy4kvL8Q/132			normal	木法沙	weChat	active		木法沙	u_5fe70134a6ded_HS9KVSzKVU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
262	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIbc1I7XoEOWQN9uqQ5GVnmNfR4XPicewUOeWG1Ke3kBtQvrhIYRWpFicBouFlZdErGTrpMDzkw6qJQ/132			normal	小松菜奈天山分奈🌤	weChat	active		小松菜奈天山分奈🌤	u_5fe7002ba6d2d_S2oMtQgPdL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
263	https://thirdwx.qlogo.cn/mmopen/vi_32/ic1PGrmWfWiakB4fG2jgcvadAC8IvCoIJUZ7rckdV97KDFtknnKgoyTtnUFzUEIJJTWHVgGEbdnlxtfZXSbruIdw/132			normal	热心市民	weChat	active		热心市民	u_5fe6fff337766_lkGhrN7dzP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
264	https://thirdwx.qlogo.cn/mmopen/vi_32/PGDWs4gBlugtC9KlqZs5fxVbjZ1OM6JkaZMUohXmv5f3A1eyOfTXz7oV0k49tnYs2vvQuG0d8Y5sWAyUxEC3DA/132			normal	Liu……	weChat	active		Liu……	u_5fe6ebd360aff_9i5gxlN80V	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
265	https://thirdwx.qlogo.cn/mmopen/vi_32/Z371Wm8BqWUylLxm8eAJYicnHPRN4td6ghS1gR5jzibibgvcmFribDYSg2PibAiaCpbfKwxx02x80EZ6w9ewCRfD0Xiag/132			normal	仙贝	weChat	active		仙贝	u_5fe6d9b760a1e_lUwu3GSmWA	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
266	https://thirdwx.qlogo.cn/mmopen/vi_32/nn1ZY5r9icIT0J5Yj69XOyvib4wORH5G2MDVuJrIR3ka5WdE7dbp2SOWEJ8njJjhjloqaVDk872PrTWcxibTptUwg/132			normal	-O-	weChat	active		-O-	u_5fe6d41e45534_g9lZInIO72	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
267	https://thirdwx.qlogo.cn/mmopen/vi_32/DbUnMAdXzib2ans1zkpChibOKicgdic2yxslF43JzKdDOcUPlNsk7mQvzAiafRbeIlbmBuO5fWed6yg93ojHhCkSUbw/132			normal	澄心	weChat	active		澄心	u_5fe6d3bc1d332_fbeBjBJmaL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
268	https://thirdwx.qlogo.cn/mmopen/vi_32/H8O52h4iae2VPktEuAicbdHSugBsjEpM4Z4QWqk1N8yribF6qM3RcxhBrmeFpGoI2Xib0G5JhUV0Pa5qdiaRKZuNDsw/132			normal	十二	weChat	active		十二	u_5fe6d2ce13fce_1JA5OAZfU2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
269	https://thirdwx.qlogo.cn/mmopen/vi_32/pqQtK3FNnwKBl14fQgt1S6S9x6wwNibV8uLIdicbj0pYb5NqtvlqvmIuIRy30YjaNC3Wa6to3dicKgAIdn4GZvpUw/132			normal	卜.	weChat	active		卜.	u_5fe6cf3c3753b_H0Np22TpN0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
270	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJQaY2O1CzdY7f4dOBLZdic9JW7uzG4OVj7jfx5g4F4CNiaDIiatAVAu30HrOYuxjZYdG0MJOzmibsuiaw/132			normal	照宏新	weChat	active		照宏新	u_5fe6c8a913661_SOkFL9CK84	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
271	https://thirdwx.qlogo.cn/mmopen/vi_32/VnvVJxz5lU2SeF60HlsicB6nvE4uN5bAJ2qicyxNpN4dZjiaP2NVjpGKbnvSbQfYwwUsQWrY2UibcYZQibOhP5MiaRMA/132			normal	冲冲冲	weChat	active		冲冲冲	u_5fe6c56660919_6GFnlfUFct	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
272	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eplAG0IkSkL4jwhyvYeeu10NkjaIw20vUEm2p9t9ueD5Yog7MMaICFzzhMIR4oJPJFcicX3JDfm2RQ/132			normal	许喵喵	weChat	active		许喵喵	u_5fe6c2da374b3_8moYJFllj3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
273	https://thirdwx.qlogo.cn/mmopen/vi_32/yy4cUibeUfPHPkXXZQnQwja20cc45y0XVrgiaP9RGyNU5xMvv4ojSCHj67Tet8iciaApw4JIwRyPibSw97JpA9QrDsA/132			normal	权鱼	weChat	active		权鱼	u_5fe6c2c8a41c6_idXv5Z6ZJC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
274	https://thirdwx.qlogo.cn/mmopen/vi_32/tro5ojiaUYicMk8hT8VNMNDutKicTia6wxgicEO8mr7ibicApxOOsnxdjk0rGKo7qTfalia6Jic00UUyejJt6Fsic6f4nQXA/132			normal	丹霞	weChat	active		丹霞	u_5fe6c07c292e1_SRtwS8WUwq	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
275	https://thirdwx.qlogo.cn/mmopen/vi_32/Q3auHgzwzM4K9ArFKuIJGlKDbdV6WuicfQm6a57msiaW1jGl8pQxbWJNibtqVibg0tUSV9hiciafQFVnLUaZ4IAEzR7w/132			normal	CHCC	weChat	active		CHCC	u_5fe6bf754544b_t7QG5uPew5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
276	https://thirdwx.qlogo.cn/mmopen/vi_32/Sna2Ad816jeMiaWK1JTibjvvz9ybDiaJN46hATCRdJ8eIo11DllITjj2yM1gLtSxQc5x7PCA9p3lX0PjdvlhMeWXA/132			normal	琴瑟友芝	weChat	active		琴瑟友芝	u_5fe6be4f1d240_EdJOLcPtV6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
277	https://thirdwx.qlogo.cn/mmopen/vi_32/AsHNoF9wv20qw5SHEvlfeRBdxIkpoBHEhWw4KhM1wb8OD4XhEDatq9PV7eJCGicnI8xlAL7jtA4MGktZIQK91RA/132			normal	Yuzuru Hanyu	weChat	active		Yuzuru Hanyu	u_5fe6bc16a3d35_Z8UJ7ehKqy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
278	https://thirdwx.qlogo.cn/mmopen/vi_32/TLaLMxI6b7BicgBsfASgEbM9OXNyvGhvxIicCbvqqug4Box8MQtF9yVQtxX9ibA7dkVu9Vwib1KRozl7uiaKuyGRVbg/132			normal	Ian	weChat	active		Ian	u_5fe6b9864540a_HZIv255YVz	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
279	https://thirdwx.qlogo.cn/mmopen/vi_32/k8icm0u5vXwrLACvZl2Yx8m9CiaDslhKe73PnuBNUx5ialQtH02LXiaKWkMwUCsnHQ97uCIotLCUIkN8q4CgzXutpg/132			normal	潼	weChat	active		潼	u_5fe6b966a3b5a_wcSP0hkAmd	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
280	https://thirdwx.qlogo.cn/mmopen/vi_32/W2O5VwL8wN5wePfSXaia1EmZMJ1MEmV7ya4Xs4Du4j1aibVVKUDloMz0CUopBpYmAjGTiakGiaGeCibMTic6icA0uSpsw/132			normal	铭铭丘山	weChat	active		铭铭丘山	u_5fe6b67e60864_GtjRAd7kFp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
281	https://thirdwx.qlogo.cn/mmopen/vi_32/ogMMiaPgSnHDdM8iccRia3C4f5ofzNUsClbsaOC4kWEk6lWVCdnvKngCQoLRFQNlVYvd8WKsaKWx3jMevIYN3Iiaew/132			normal	月球上的人	weChat	active		月球上的人	u_5fe6b4d1f964d_r17aPVS4tH	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
282	https://thirdwx.qlogo.cn/mmopen/vi_32/nwdqNiaGY9NHxLTiap5ltFuwv8nHlKz2ic8Qe84EsS9TSP9ic56yj31ETYW1qate8soY0VfGwqopwghH3w63K4hhgA/132			normal	不给你糖糖吃	weChat	active		不给你糖糖吃	u_5fe6b3c113e72_z0m93JlTNd	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
283	https://thirdwx.qlogo.cn/mmopen/vi_32/bo718RjUy59CfE897VicUzGucMoQSaRF8pH0IZ6PZtwdMtN3KibfjmRFVuU6cPGuy24u3AicPjCvgic5ZQ4w0fmmkQ/132			normal	哈莉波特	weChat	active		哈莉波特	u_5fe6b3ad453c8_3343Tc3eZm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
284	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIOYf6aibjoWAs2EFrTNgLnQuAknxvCuYKxEGyaM1IMzglxkyEsktsk3gQBib3gicu6gKy1QovBQEsRg/132			normal	Aubrey	weChat	active		Aubrey	u_5fe6b2a0120bf_nGpEb3kORX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
285	https://thirdwx.qlogo.cn/mmopen/vi_32/gX3PMea5ZtSq7z7gLGjMG0j7N0icdVib83UPHg6arqibXFaJbBDQJuVLmx7qQ3m289VeRTefcnxK2UicUKC0tLssBA/132			normal	TWTY	weChat	active		TWTY	u_5fe6b1a654679_ngnqfT5wSp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
286	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIDgCCDwrGklqhq8s4ydjq10qC3SwnL5XZFicQBd8jYBGVknwIBWKY5zlmPqLGibXscicPozzejibKia2g/132			normal	二层楼先生	weChat	active		二层楼先生	u_5fe6aede60802_duSWzSKkn0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
287	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIccPALRYg3hG3I7tDICQM9HtGffgWceRiaKdJD63X9ial8ibcibQuye0j7VmpiaicWfp5rAFoIZhoGGaAA/132			normal	Josset	weChat	active		Josset	u_5fe6ae68373cd_SRQjM84wVI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
288	https://thirdwx.qlogo.cn/mmopen/vi_32/IqF50xtGLxrBWBTEYVTkfos3ydyS1rKEYluMTDCw8ibrnpEMtbC3BU54nfTSNmWjJ6gviaMIWVjyFo3wdyiaZ7CPw/132			normal	夏夏	weChat	active		夏夏	u_5fe6ae5f1d18b_qLURWHW8MX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
289	https://thirdwx.qlogo.cn/mmopen/vi_32/lJu6F9jibXaR2kvLrJL0Jh7CIk0ttXUqOGdgQoBuECvY1LQn00CjwRUKohI3ics9Fib4zvTO1Dfvm6nMbH75cUq0w/132			normal	略	weChat	active		略	u_5fe6ad60b56dc_FgXjbswkak	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
290	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eo02ibPZxjo9xOaLIV35BCKgSsWg9fr2wmYupSvPmfpURf23ibsI4DTtoWYmyRjkrbrhjq9vMiaudzlw/132			normal	薷文	weChat	active		薷文	u_5fe6ad1f13e24_VIJ4LRahb7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
291	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIYwHD2nYM1Xlr5OljWiakhMvibWMkXSS0AkiblhddEHficErBBKbhNSILIfvsF0voBfIMWRHNlvLNnSQ/132			normal	桐花	weChat	active		桐花	u_5fe6ab071d163_43FoibjS7y	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
292	https://thirdwx.qlogo.cn/mmopen/vi_32/LkwcaJHh6W0o7fPWszCSass3MNaFNRbib8aibUVQibyKicWiaupc0gluFqFrfZdCCk1nP3pibaR6pFR4DJ7DJxHe6fSg/132			normal	Yy～👌	weChat	active		Yy～👌	u_5fe6aadd54628_VjLoHG0U5Q	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
293	https://thirdwx.qlogo.cn/mmopen/vi_32/J2iaxtmdxuKXjNZZ4DmqUHYDXCEKTrxiclvl1o2VEKpplb0JJFwxM3l1q92evARvuGHhrD9sJUvwgI3KJsYjn31w/132			normal	傀心	weChat	active		傀心	u_5fe6a9ac13df9_6cOq7TLELv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
294	https://thirdwx.qlogo.cn/mmopen/vi_32/Sj73RQ2BGHLV1KT4xpogSe7xsVFOvERWdvRq4DIJb06pPRRvZT1lJEcetxylrG7LFzNbeh5iblibp5XcFjwlPkcA/132			normal	山山临川	weChat	active		山山临川	u_5fe6a960b53be_bNR4nDN79r	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
295	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJrxTvN76QeprsFJxvvyp7nW8LbdEK4kASPNjklDLp4LVzG3ZCLyCBcTL0Coaic93gFjnCtSZia597Q/132			normal	洛克	weChat	active		洛克	u_5fe6a862f8cf0_hzAaIbfsz3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
296	https://thirdwx.qlogo.cn/mmopen/vi_32/g8RfmZ29YT7N0b0NT2RZHL5dciaFraJPvXpbuSO06zktQ4jSibcB4fYwZSCsUTM1Q6sgaicK8xSBsNcH3CyeZySXw/132			normal	EXISTENCE	weChat	active		EXISTENCE	u_5fe6a2ada2a0f_zVkbNHqo82	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
297	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI9X6esx2PFDTS1DfEBpOe2sYZd6QjO8M0LoVspmKCu7Zez8AfcHPOUicHSt1kWsTP5Qz8cZw3b9GQ/132			normal	喝呜啊花	weChat	active		喝呜啊花	u_5fe6a240545b6_n1FCa6bqOP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
298	https://thirdwx.qlogo.cn/mmopen/vi_32/RHt60R5ibCJcBW3m4eVfAPC22X8Hvevqr42nyjYp2rrNibM5rkgjvBC42EPeN9exehS4zicD9MAU6GaBAtgaoOtEg/132			normal	KEll Y	weChat	active		KEll Y	u_5fe6a169f8713_f27loRwieI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
299	https://thirdwx.qlogo.cn/mmopen/vi_32/Q3auHgzwzM7B3LlySxEJS91pIMeMj690bjACPiaw82j5rmc2rG5tuAZfeN1eapwc1hRW8aykGia7RSLTUezL0P4Q/132			normal	qian	weChat	active		qian	u_5fe6a14a452df_EhxI6jJ2Ts	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
300	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83ercJMgge7xt9xz1ucmphc3RYTQibhElyiaHj6BjF1FHZjSqy87AY1ibECGicW9Lict167IZ8xJZXxLycYQ/132			normal	Biang	weChat	active		Biang	u_5fe6a0e213d83_UV89oQMVAJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
301	https://thirdwx.qlogo.cn/mmopen/vi_32/3B1oSI0BOicopqH5jkrlIj6rhkvQlPSPcArGSMnpAEhW0ibPrMhPCQa5MzQv6VlNxPibpXDSIqXcAuOez7Aaoib0Ng/132			normal	折纸	weChat	active		折纸	u_5fe69ab61d080_ChURKNB7wR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
302	https://thirdwx.qlogo.cn/mmopen/vi_32/BwPej1he7cY1rf0LrBeG7iaD1CmibcqQ13wktbCQXYujHiaurXsibNbv8zAXmXpVHcua1icJfxZibUqQiaksKxuUvoJSA/132			normal	KOZ	weChat	active		KOZ	u_5fe697d837295_AeHxnK3EGv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
303	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erAOhZ4JVfiahDseicluLevaIXfrWyl5JC3CFueM1PIVNDkf6v0LpjI5aKmMYR3ErhLxibWA1UicyzhDQ/132			normal	HHHann	weChat	active		HHHann	u_5fe694dd13cd0_fmz5P8q5Nk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
304	https://thirdwx.qlogo.cn/mmopen/vi_32/INqGtUhBicaG3icpibSMCTKJuvdYOYMdaX7GZ5UaGz7XkYC1hSibAwU4a9ZINibicdIkBXIVbHLv3GjjZPqp0NDH3V6w/132			normal	富语	weChat	active		富语	u_5fe6908e1cfe9_NY6DbUdmx2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
305	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epqbOEp4dj9icicR1tFZr6FaDTOsh52LFM3mw9HjKbdZDd0icMqGia28Eyxa9vtHVK2PVeqdRg9WDNHMg/132			normal	君谟	weChat	active		君谟	u_5fe68fcb1338f_BvMbjsfAJD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
306	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJbH1iaB5pQPSUhQgUojc4yniaCYyxHrykYD5QSNr0fJOvetXicQRrSq7KCE2E35oECiad4jIn16TETvg/132			normal	好好学习天天向上	weChat	active		好好学习天天向上	u_5fe68ee52905b_A3DitQ8LIZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
307	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJK31aE4VwsqomAaU7F4ZB72TEF37lZtALY7ZlvgEiccMtCkZ9D5MFSCZyDlN5BKNJnmy4HydzFDMA/132			normal	碳酸氢钠	weChat	active		碳酸氢钠	u_5fe68ea8f75bc_zg5Pg90hU5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
308	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epvia4NW5g2QXdficY49eRribCFINWonZzKR3TnyxlicgqfHQyt1gQKqaoom0VzUHtsB2nz8lkviaIhfhw/132			normal	淡幽	weChat	active		淡幽	u_5fe68e2a29050_n3RaHQUfCQ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
309	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIjUDIRQ0gRicuwqa6TRxIrlPp0ib8OGHU1MTgmOEuL5bicdWMFwctXQBZMpvaDu5PPLVrYuIxqApkHQ/132			normal	*	weChat	active		*	u_5fe68e10f7531_FOpMWG7UW0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
310	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKYUzOibIVK48czicrh1buHia18yiazlnnTAsiaALOXAg4DdL7jkhRfNViaMn490ibgfKptwQXlQQWia9flRg/132			normal	夹心🌙	weChat	active		夹心🌙	u_5fe68da81cfbf_gkzSnwNOo0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
311	https://thirdwx.qlogo.cn/mmopen/vi_32/BJTyMjNDBkbeiciaquXD0VRnAMekfuVTNhwx2Cfnw7W8iaNeJiahULwsMyLnZUMMaGj1jdIpsR5CZRQIwzfZ9w7j9w/132			normal	晚风与海浪	weChat	active		晚风与海浪	u_5fe68cb2605f9_HRwQF6CrHF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
312	https://thirdwx.qlogo.cn/mmopen/vi_32/14U8vLx6uzdDmB36OTEamEKu1Y9Is9rzfgbrodMddjmicB6tjBMr6X1Ccv3sv4KH5Iab3saPyQ6SGfukrUzjGibg/132			normal	Thessaloniki	weChat	active		Thessaloniki	u_5fe68c98f73d0_wbj6mDqtb3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
313	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJnMX3WfLHDmia35TfeIgBe5WTJsibsHu7AGzQQzbVAP456JGbSySfoj2aVznUosQ6IuJErviaxkiciaicg/132			normal	Liang jh	weChat	active		Liang jh	u_5fe68b9b371e0_0l3YuoESdF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
314	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fe68b8611ea1_rkSRuRs5ar.png			normal	天真的和感伤的	weChat	active		天真的和感伤的	u_5fe68b8611ea1_rkSRuRs5ar	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
315	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ7roibmpSnVlFKFusRbmUJbWLwVTI4ib8uexVv4CV9YkD644LsIAdFicVvoFSicWXTcMoRVNVlFV11ZQ/132			normal	eagle	weChat	active		eagle	u_5fe68b04f723a_HFqvuco0t2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
316	https://thirdwx.qlogo.cn/mmopen/vi_32/CY84ygQT0LCGSyYS2ce3DVqtPdUTCQbgsL5tcWxJU9QvsFCUpWQIicU0ViagRqEzSWYIh3dBfD8mDs40G30kKjuA/132			normal	mandy	weChat	active		mandy	u_5fe68a6e13c34_bz0nyy6CBU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
317	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eruj7x2ibrTZScVSdOcOJGLickSJD7yVPp6cboof2LRZ43fxhCd94t5KULOoCv8aaQlgicM6AkKc509A/132			normal	Mathildachan	weChat	active		Mathildachan	u_5fe689ecf7130_jDf5Urz8co	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
318	https://thirdwx.qlogo.cn/mmopen/vi_32/c98MQO5RJnbov3t9xcmgDE0Jxqic30CgGTkD2ia6h2KLmCdXddrjBCVYtUOM8MJicVEyHAYqTLEyex7LLLSIq9LvA/132			normal	博雅	weChat	active		博雅	u_5fe68954f70ab_3AZDNshVAQ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
319	https://thirdwx.qlogo.cn/mmopen/vi_32/rrWrLOC1e2P6IEx4NhH8naD66RRon7T3R00nibgWC6ClZS1ZgDlkZPpZMZzxtcgSibmZMb8IRAUf5Vho3jlXJC0g/132			normal	zkdpjw'sgion	weChat	active		zkdpjw'sgion	u_5fe6890cb366f_jkmPt1SECB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
320	https://thirdwx.qlogo.cn/mmopen/vi_32/OBicemqfcUnJceJywnZuS9bhXRn8CFQbmmSEg8SROXWkqDPqCszDdMMjjHKZWNNBIQfKaQ859kWsIpDSiaoVCicdg/132			normal	Morel。。。	weChat	active		Morel。。。	u_5fe687e454431_GkZSmIUcqW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
321	https://thirdwx.qlogo.cn/mmopen/vi_32/4FvVicib6Eibib3p4meG2xDJebbQ8uqAe0cpEWHAIvzjpNFeKTQkK7gh5TZjNXIGibAstE5r6DQjBUUibmJIGt3GJG8w/132			normal	落子无悔	weChat	active		落子无悔	u_5fe686df1cf5d_1FodoWvSIw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
322	https://thirdwx.qlogo.cn/mmopen/vi_32/EL7iaV7AsQf0UNk0wWgwxdRuRzUOddZhMBf06F6BcKM2LUY8lbBKFRxS7pqicpMcMic5RhwGzCicHdQXwex17R4nrg/132			normal	金泰亨唯一指定女友	weChat	active		金泰亨唯一指定女友	u_5fe6853154410_ZtHeOZVdVR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
323	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIIDUnsfAibxPZribtibXaNZOK3DcUyibtf615tK3ZRPxcQKtelUWsFvuc8mJoGG53deGEmzeELib42qhg/132			normal	薄冰	weChat	active		薄冰	u_5fe684e85440c_46PMLStz0t	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
324	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLhhIw8WYPrl8Py59E8nVd3CUemViaTsD3QSW2WnIDs89BiaQeD22ZVjpNoIO5FN27MxQJsicrp4JX3A/132			normal	阿飞	weChat	active		阿飞	u_5fe684b9132f4_TYHM0Gq7RA	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
325	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epc4XIRjh1oncILVKuI7aHFvb8zEepMf3opea5icIYadWum4kBgyQcWQmuZL8YnWcKjVGbqiaT0u9Ug/132			normal	simple bright man	weChat	active		simple bright man	u_5fe6844354405_eJMPHVFWMt	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
326	https://thirdwx.qlogo.cn/mmopen/vi_32/5u9ibEU2pUTHQW7hUMVXoZMUSS3hHeStiaK9PEicox5Kiad2yxPr3tRmNKPTibI68rJjNyBfpsPJ0HpROSn1d1crIbA/132			normal	用户2442	weChat	active		用户2442	u_5fe618c2534ec_IzJm51lCVf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
327	https://wechatavator-1252524126.cos.ap-shanghai.myqcloud.com/aaa/people_default-2.png			normal	用户3967	weChat	active		用户3967	u_5fe6129b1c0ed_8I1gQrergL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
328	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJUB8g2YibdsrPh9axLia4HXFmz6R1jyZ9on5j74Jw4EZnic31BZLBQiaygBEdzNpvwCSHJwiaHRNpfLhg/132			normal	Y	weChat	active		Y	u_5fe60cd0139ac_4QKu5zOkE0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
329	https://thirdwx.qlogo.cn/mmopen/vi_32/SSS1qEvG1pXlnQ6YA2MoViaXLicw882JnpTzhcTYiaCj3eHRzWamobCMp7RBCibH9PF7ctribdZ6KHcB8sm6S0RibXZA/132			normal	用户7987	weChat	active		用户7987	u_5fe606abd8852_wSS2NlnM16	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
330	https://thirdwx.qlogo.cn/mmopen/vi_32/9Otwibfa5VXSh0TQMp3WDMia5E2OraMRMQopcUEcl1nWqKicQ8a6ueu2oAuymOuaibFxrtCeEkBx9icHBgY50sBNDXg/132			normal	yy	weChat	active		yy	u_5fe5ffa054161_0ljirXNcsd	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
331	https://thirdwx.qlogo.cn/mmopen/vi_32/4PSE9fCH2GTLSEASTxTTLahyvEyAQhdsmnbxhica2ehM3wS2J9OwgOWpzl87rNedPJpV9mpG1Fj4gDymKXFPa2A/132			normal	coda	weChat	active		coda	u_5fe5ff3a28d20_KXCx6dKvkg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
332	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJF8g6VG6Eb73nibLz8l1iayENNljyicXY1Dpicic30XTKpskibyiby9Zog32ibvzqABMebyEVnMqlJ8zRl9Q/132			normal	LY	weChat	active		LY	u_5fe5fd725414b_yQLoTmocQC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
333	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKwICrbHZaPZfibIvRCpC199mMR9ficTUqiaKwxibOdMWBssFd3c2yOEbcBuLj33EysxTXtniboV81LqzQ/132			normal	慕兰	weChat	active		慕兰	u_5fe5fbc3f3ffe_e0j6fm5A3s	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
334	https://thirdwx.qlogo.cn/mmopen/vi_32/xutZ8LVH319EkRcJXssu6ojW40LtRbRFvexv5afdvoScKeLkNO6RaKU4t52XSuMsmVgorwr8xYOUFJOP95Vt5Q/132			normal	北北北南	weChat	active		北北北南	u_5fe5fa5d1cc61_uDXoAHuYJy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
335	https://thirdwx.qlogo.cn/mmopen/vi_32/jgEFPnzFqXercgsqdficwDT9tzyOAX2nWEeDhLFRlib0ibnX0icoiaFibBGRu2lS15MTaOIPDcJ1Fk8f94VJEd1gmTJQ/132			normal	kpw	weChat	active		kpw	u_5fe5f81d12ff6_ymgHuOrVvv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
336	https://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEI0bQQQIRjy02KJPKA0jC0D93H4qxMibmTy6BFE35w1vH5CTG5YfmZHZVeTTKK1J4FmuiaPVHaLEbaw/132			normal	吴振宇	weChat	active		吴振宇	u_5fe5f68c28cbb_lrmoyjccJI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
337	https://thirdwx.qlogo.cn/mmopen/vi_32/8f8UHJIbmHZcORd0fL2gEdumY5ltJMFeboWNC2BuolsCd2iaibkaEALomOucia2s4rMCjyPl9bfdq4hjSRPkADW6Q/132			normal	INDIGO	weChat	active		INDIGO	u_5fe5f38528c91_wQMx8bz0EW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
338	https://thirdwx.qlogo.cn/mmopen/vi_32/eP6QVYZgWGicSk1W9UUeWHGAIW0cz0Cq0beghrAAnLyZn6FU1llOYM0MhJOLM1ibCkVU4sIDWBcfqgTGOfymZE0Q/132			normal	Stove	weChat	active		Stove	u_5fe5efc912f81_ONS7jSSraS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
339	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erVjPNrWibpU0HeqsjPHGaemUbzUpib0ib079iaoWBPgnESCxicEThuTFVa35fC0xjrzicDhXAwj0gJticqw/132			normal	叭叭溜	weChat	active		叭叭溜	u_5fe5ed60af985_ZY37WMBOUm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
340	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epmfKDvtmzLmrOEY1yDsbhic9jeLicULTL1oOAVPrMIusxic3modcqK0nqOL0ITiaYOWWzsu0lK6sfW8g/132			normal	雪梨	weChat	active		雪梨	u_5fe5ec099d420_1LqmullKLv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
341	https://thirdwx.qlogo.cn/mmopen/vi_32/BmHjWxEhtVekBFsTqGwbkN7x0VClKRJZorsYFjE2F8fwN5mu0zoaiaviatsS3fxlIttdicBIqJBmUsvxKGicfTeMibw/132			normal	森🌙	weChat	active		森🌙	u_5fe5eacdf3100_K4YL1iqnmb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
342	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLRiaLgYQy7cMke88zIBhhaAyjzo4P52EIg6fLCRXZDEdPcCxyJGWTVb5MIhJVOG49pTvpVicVGagjA/132			normal	蒲公英的眼泪	weChat	active		蒲公英的眼泪	u_5fe5ea8328c07_H4f6vPgiK4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
343	https://thirdwx.qlogo.cn/mmopen/vi_32/Nsss2mEF3KDkKpMAiafQ1WJ2MzWc466eDoSl0f9icCiaEK8cDIicGZQBY1B5kaNicvKtQl0wuKAMGCyYZArWcRZrv2w/132			normal	某银	weChat	active		某银	u_5fe5e9e8af60e_wgVBRzG2Ym	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
344	https://thirdwx.qlogo.cn/mmopen/vi_32/5cbKMlKUHeiaktjEtLaNQSyMnxaZ3jmQibxFWmQSVicbPm6KZg7Ye0crhPIGTTF7BEdoGB4pD6dN5fiaRSuhnPP1PA/132			normal	花格-苍松	weChat	active		花格-苍松	u_5fe5e9c5600f3_gLtGBECKgL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
345	https://thirdwx.qlogo.cn/mmopen/vi_32/TjEsP1siaib6pcpqlsibdGEIwUiaYljRVhpj8KDxSiavhkrZbsKT0nPJxCe0qNT9yS0ytYPeXj1AH7Bp5VasDIeCwOQ/132			normal	*	weChat	active		*	u_5fe5e9b5af5d9_BcGzhVAXIY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
346	https://thirdwx.qlogo.cn/mmopen/vi_32/o18yz43rdgg53Nq2Xd0wtlzia0ZDPtwY80NiaDMx6BrlGEauHtpdV1zNN9OUQSStE74z2mAdmSJzNhSHqNZKqrHg/132			normal	foyo	weChat	active		foyo	u_5fe5e6569ce32_XlJ5YzNj3E	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
347	https://thirdwx.qlogo.cn/mmopen/vi_32/XZPzYlmX1vuxz14lG3LvAblXNVicWx66mp7f32bZ8H7wJNghISKYv9jpwF06y5wAUh5mFn7xHfl7gtNq0YoiayGg/132			normal	weeds	weChat	active		weeds	u_5fe5e5ed9cdbc_LieKP9UWxf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
348	https://thirdwx.qlogo.cn/mmopen/vi_32/yDvtnuUfvGP6hEZgy0tjLMibSyCN6EABfJibUCakzWVBCdt3FVx9gejOZpmF2iagnkWco8rLTb90XjmYhMbxfbMUw/132			normal	Edana	weChat	active		Edana	u_5fe5e4afaf05d_0KmTnyxtIk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
349	https://thirdwx.qlogo.cn/mmopen/vi_32/tj0C5ufRN5ch72r0neib7F0bHiavXCxbA9gH0gAlPIFZkzoKnfKibjqEaXQLLqlw3ZpVp50S1K4Yz4iavickaCOudUA/132			normal	缸中大脑	weChat	active		缸中大脑	u_5fe5e27f28b77_gAHKwusvjC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
350	https://thirdwx.qlogo.cn/mmopen/vi_32/BMndWohbsvU7EL6xMQ4fL5iaXe1jUxXn0yEZib3bJcleRMrLm3Cia4bA6J9XhIfemUxhMvqsWHWnssQX2okMxic6RQ/132			normal	夏	weChat	active		夏	u_5fe5e1a744cdc_YBE4UfOJcw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
351	https://thirdwx.qlogo.cn/mmopen/vi_32/mtBK3Hf5m49P8L668CdETL5usjVeZjibT0syFbJh28Sc1ibCV6oOJGIhicRiacC8jXKpvtIW2ibMficXFGz6yAcm9iayg/132			normal	2041	weChat	active		2041	u_5fe5e1466004e_CCXWhpKq4m	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
352	https://thirdwx.qlogo.cn/mmopen/vi_32/UsFFkS32lQveicK2UBCRKJicr3qxGIkSHZ2Eiah8TmGCoLcbicZx7RuxUgSV7TadeOuro0w1YoPcwjXKKhEzZdJiaicQ/132			normal	Joy同学	weChat	active		Joy同学	u_5fe5dffa53f85_TZBZyG2uDa	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
353	https://thirdwx.qlogo.cn/mmopen/vi_32/8NIo06kqG0UPzIMRrMPAL2AazDwMVFVEmRxegiao5hpGpNDL8uwnianQnibMUK1Mu2RzusmUJzv2vU4pSlIIH0w3w/132			normal	🙃🙃🙃	weChat	active		🙃🙃🙃	u_5fe5df309c5a3_63Lgp4gv9R	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
354	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJKcBBdwDay4icDIhicJnIlCaSJo29PM8sI0csUeHrdaC6XYgox32IEfCRzuQBEt3y7bLhWKXRicEpCg/132			normal	用户5508	weChat	active		用户5508	u_5fe5de8f1aab9_VweAWCCeLE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
355	https://thirdwx.qlogo.cn/mmopen/vi_32/wasMnibQynScdpiaTKBsFK8CbOEibLZfuROW1PIADvG9L2sySnJwfoRYKntapvfqBsSu8W7vQH3o5EmgaTn7vLOUQ/132			normal	753	weChat	active		753	u_5fe5dd4344c84_tesWAyNnZD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
356	https://thirdwx.qlogo.cn/mmopen/vi_32/xzjnicDmdklKZJcFk54iaOFgfscnQbqNw0Jt0C7fX4yibxwxorXibRnkG6WVPWQg0mKp3bnNWxkq4m1xRXJVBDJ46w/132			normal	run🏃	weChat	active		run🏃	u_5fe5dc8d12e27_qZTHL1gdbG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
357	https://thirdwx.qlogo.cn/mmopen/vi_32/RvGY4byUjo1IfVicJebjt5M0oeFUhJXPNwzXSiaibAOTIwa4gJqYennz0ficVzGXicpcYIENfcnCYQNb3TibcGYpntrg/132			normal	溯流光	weChat	active		溯流光	u_5fe5dc4136cb1_64HlrjezZS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
358	https://thirdwx.qlogo.cn/mmopen/vi_32/IlkVVC2bz8t0C66Via3icxqYQyGj8G6sWwHTtJYwXZqPFbFofwaEibWQewED2YUVZuV3gd4ObSpoazs6g9tZY7LZw/132			normal	蒲雪钰	weChat	active		蒲雪钰	u_5fe5dbb7ae4f4_yUHWMgHXOd	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
359	https://thirdwx.qlogo.cn/mmopen/vi_32/pYIg61bHbQqCaOhDrB7rhWtbEFiawDGG11KYicLiaGmbUmFked1ibObvHJAd7BeRSiakbBHRWYq7CyupCq1nr4WEIVA/132			normal	徐岚	weChat	active		徐岚	u_5fe5db6f1ca5b_0uqnBlRUIY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
360	https://thirdwx.qlogo.cn/mmopen/vi_32/14klQsmQShOEg8ZlSgYTu5olb3xPiaZGCMq4iaLxnzIpKjqq74EfdkXj2kRRfGQnxnG2EKibxeCSFbXtydsYbNjUg/132			normal	海	weChat	active		海	u_5fe5db1ef1e26_vv6SgoWgcl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
361	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epnVeSlcL1er9ialbMiafaT8Ks0LeM4ZTR3beCG7zKBCkg5esNSmDxLJFuOiboA1RW04xEyicpiavLnVQw/132			normal	竹杖芒鞋轻胜马	weChat	active		竹杖芒鞋轻胜马	u_5fe5da3e11942_9ZZUxBYWOc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
362	https://thirdwx.qlogo.cn/mmopen/vi_32/pFIDGTKAXzP10e3gKh98vLUlYBGJNxCib1GhUTuwNPHb1aVsCVZqRf15Mxiau7zMHPJlMmausAwMmtsb86X6HcJw/132			normal	蝉时雨	weChat	active		蝉时雨	u_5fe5d7c35ff6a_3n3gLvW038	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
363	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqtPQGwTSaeLiaYIibl9KNibs0OsnESa5bibj9UIibsMiaWHxfJa25CXEL5oAibj8UbGfFRNHCdFNickM0Bjg/132			normal	lI|I|I|I|I|I|Il	weChat	active		lI|I|I|I|I|I|Il	u_5fe5d7baf18c7_rWWFPFSqqY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
364	https://thirdwx.qlogo.cn/mmopen/vi_32/0yFVUquLaqibXY6Ly0fXXyMov7p7hYdz2euZNA9kzks4DKDHMLA4MhwwOY1JG6sIaSjmntfwAOm6X8xrC31DZjg/132			normal	如梦令	weChat	active		如梦令	u_5fe5d40b9b2f9_ZU7x8XRtGR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
365	https://thirdwx.qlogo.cn/mmopen/vi_32/UlleJlqvozaU6ibrmNv88XRriaURmH1icNHlFymkhdaolJiag1onIvpjL3kRRqwPKlUxJGJEXD9ic7icZVicTzV9oNxRg/132			normal	观	weChat	active		观	u_5fe5d3da11880_r3LocvQJup	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
366	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLhzxAqTXNxXr9Rpn94hKJACyDCicXkcOXnmrBiaAyJTgCsm2c7LkCcJ2vqdwSPA6CojUJYMcsbT96Q/132			normal	心琳	weChat	active		心琳	u_5fe5d19d1183f_8s1IKxd7z6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
367	https://thirdwx.qlogo.cn/mmopen/vi_32/PpNla0GXVZTruPPI68ibBp7PwcUwAHrf4NYl1WUB9AoWB2BkpaxxamyPhCzhEFaadCWd1Fv2lWzXSfBmrnppEIQ/132			normal	3二十	weChat	active		3二十	u_5fe5d0da1c928_oO1jW7wE4p	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
368	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epbFVZeJgbBo2r212Qk2cibFsKrUpFHgfLNiaicpNrZFOxwicEuWYLr3028TbzyUVquvyogwNRUY6YDfA/132			normal	欣尔゛🐽	weChat	active		欣尔゛🐽	u_5fe5cd8136b03_Iewo2qJov5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
369	https://thirdwx.qlogo.cn/mmopen/vi_32/IlibcEj7Chtn4TxC93icdeuQbRefxiaYInbc1pqTBeN6l4w3EibjGsjZf2V41k0aZAu7iaEhyh0ibRwy8vKBNQbXoNNg/132			normal	cb	weChat	active		cb	u_5fe5cd0912c61_ZePm99IDLY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
370	https://thirdwx.qlogo.cn/mmopen/vi_32/AabpOiaAgnctELNaF9LlKQyw4xQcd1bIcB7hwTVzWOuYdthJtYJVJAicDrRa80A8mYzcqY55mHA9M0oIoJJz6nwQ/132			normal	Dawn	weChat	active		Dawn	u_5fe5cb8bac6f6_WOMpctvdKX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
371	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqL71MADDwZzumbPkOgZR0KopBHloPTliay0iccwRZtz1hRGGqv9j70CibfxMYCth28xBPR4SjFqbriaw/132			normal	Strike	weChat	active		Strike	u_5fe5cb1111778_fwLXrjE7LW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
372	https://thirdwx.qlogo.cn/mmopen/vi_32/JiaibzQibHvwJNMbjTnpNxFOn0F3eVBxxhicL46fqZ7qhF7Gh5phfTKAricqJP4SlvcDCxXtz23FuVr1R5dM1gNpzVw/132			normal	iancy	weChat	active		iancy	u_5fe5ca825fdc1_Npv2HCraI7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
373	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqY8Xfp7kpT5oZknkfX15kQXkHxDYM7ED346DuvoAz361eCTXW0IjNJk5HZZ0CiccKlibBqpqDPvFeg/132			normal	D.dry	weChat	active		D.dry	u_5fe5c9bbac3e4_B9pMFku9Rx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
374	https://thirdwx.qlogo.cn/mmopen/vi_32/dpC6fMb50fvHxS0g6UHIfR3dUyWjN1IRPCE6qVI7UsQqZR93y5Bp6RwYHhhfhyUMeHrBkMc7hEHMCeN4UbgibmQ/132			normal	Lu	weChat	active		Lu	u_5fe5c98eefdba_FZ1AZnqUKo	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
375	https://thirdwx.qlogo.cn/mmopen/vi_32/kq53EneLseT173TiaaPQuB4iameAGSIA1s0ooIfldmYYTAiaGXUseUn3C2ORDncTMZPgDVAibE5f2jn3jib8PJEG9vQ/132			normal	一身都是月	weChat	active		一身都是月	u_5fe5c905288c8_to0S0X0mQV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
376	https://thirdwx.qlogo.cn/mmopen/vi_32/H9mYPkzpaFLmpykLp86YErHwK4l9pJW2nUVqdfmhThP9TEMLpXjYmQ6sykwsia2M83GHJXs1iajict4Jib5MfdUDRg/132			normal	Cristina	weChat	active		Cristina	u_5fe5c89c12be4_OtMrptw9tT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
377	https://thirdwx.qlogo.cn/mmopen/vi_32/biaG5gpYHkH0yJDlxmKSjqmRslKI9CIDutzUfdgHFbdrANHvFfuBYtq9uP4dFxGia8ug1UPziaiaEkRMz0yJIA4LibA/132			normal	孙昊清	weChat	active		孙昊清	u_5fe5c89812be4_V1Ab5VJZdA	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
378	https://thirdwx.qlogo.cn/mmopen/vi_32/6aR2NYcTLlSTagfr5DtfQQPu7RuqO01icA0WIEn93y1lCnVe1IF0Sv7AgbGszhtKYFYmlzvTbTwk2OnwqAhAvKQ/132			normal	麦漂亮	weChat	active		麦漂亮	u_5fe5c78c12bc6_FQHyhpcYuZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
379	https://thirdwx.qlogo.cn/mmopen/vi_32/P7fsZPIBL0knRHDMlm1eicz3hrBaSMPJibicRGBG7icBeEEBaIVhvS5sibaDpQ9rnxDibmMgewMnDzcJrcuALMpn2OQA/132			normal	Vuih	weChat	active		Vuih	u_5fe5c739abf7b_nXZoLVoAi3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
380	https://thirdwx.qlogo.cn/mmopen/vi_32/zmicrySTJ5oOb3OgbxuxrEu8w66YpycO3icUPvuiaO2BReJqh3ibtM5zBLicQ87DXPVGu4rzZFaiakWs2jb3G1sdOKxw/132			normal	澯妮	weChat	active		澯妮	u_5fe5c6f399ade_SVdupuI2lI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
381	https://thirdwx.qlogo.cn/mmopen/vi_32/fGBoalnxxbE6948LqCVkUJptJ4HcQNVVzXDUUZC0Lg41mNDU01kX4Es9AdYcsE2cu3jUM59KKI2kM6ZRVWLK2Q/132			normal	.	weChat	active		.	u_5fe5c6d11c7fd_NVXFVPzTP7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
382	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKpibpiaPYU1oLM36l3EgCUPTbcCwlD7ogql8eMPORYx4Brv0CvqE0mtgaM0k9LRBMvm7ia0j4R7Sv5g/132			normal	塔里人	weChat	active		塔里人	u_5fe5c6b5116fd_eaiOyj4ZTG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
383	https://thirdwx.qlogo.cn/mmopen/vi_32/ib3Rzem884S7LXdcxpHRbn4ZIfVNTOHMaWKUmJreuPIM1qekWAkB0ghnWWibJL5vGiaTALTtfGjJ889jibd0MPZkMg/132			normal	TjX-Larry	weChat	active		TjX-Larry	u_5fe5c69f1349f_XHETWVVMif	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
384	https://thirdwx.qlogo.cn/mmopen/vi_32/4WNafgDzejd1bmfxiaJS61lFweSssXyiaibalVxQ6iaMPS24sksAgDTh2dibULU9tp6vezIEX9vfpMoDQvXtlFnibib5g/132			normal	火树银花～	weChat	active		火树银花～	u_5fe5c69a28880_sHH2T4SBJr	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
385	https://thirdwx.qlogo.cn/mmopen/vi_32/hpa9CB4lT0PiaWjha2WJPabIjLPStFWFLlBEIxCmM8YZhD44BHEgRrx6kAiapAo6HlSQaI98JDplRK5VuakRyPZw/132			normal	爱吃汤圆的元宵	weChat	active		爱吃汤圆的元宵	u_5fe5c68fabe1d_CxgqYocbV5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
386	https://thirdwx.qlogo.cn/mmopen/vi_32/X60cuzib5XricL4rG54oN5n4NUBvdGS9vX4lzHmpQLckLWLhIt9ZavP5qlEoicibiakNmVrwnuAdMQvtwUmBIZaiapNA/132			normal	Weivia	weChat	active		Weivia	u_5fe5c67d5fd49_MOkMs3BXVP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
387	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIJtib8s9Yu016sxy1EUy9mB2Xd7ymWvuobbriaXOR2bSOOfhU0W3l4erZ3pszQL1Oia8xcibMLlsv0UA/132			normal	崔稚影👾	weChat	active		崔稚影👾	u_5fe5c66228878_Hv1O6SNHbP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
388	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIFMicib2CVhQBnn60gaTWrIM16wgDsT83q63DJnbbha903bnrVnQibJHOAB7QKdNfVU2RfE2BkQM3dg/132			normal	楚子航	weChat	active		楚子航	u_5fe5c64d116ee_xjh0rt2uct	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
389	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eptCuRBA5qaBDfibZUE6Aj5T6McEb9xbyTt1w1rWCMPbMaYWmfw7HCFErLYZsa7KjwXo8GyVOIfOwg/132			normal	诶呀	weChat	active		诶呀	u_5fe5c60a5fd39_TcSU5GDDvX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
390	https://thirdwx.qlogo.cn/mmopen/vi_32/0TZVeBT7Y4w5njWMz5U4UZRPa2PjaGbROwERu5Z9cJBP6qc5GlR7GMeabTLcCzvZgicrg600zkmhVoIkpZ4BdWA/132			normal	馍鱼能手	weChat	active		馍鱼能手	u_5fe5c52d53c91_0VBCSLwMI6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
391	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLANMmtu2m6yC8CKyHx1rhXe54wWOaKtRNe6qqRUqUrCD04ibiaXdtqiacpAzKr9TS0xTGpvhxySNEOA/132			normal	Echo🌊	weChat	active		Echo🌊	u_5fe5c52553c90_tpN6dcbfCu	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
392	https://thirdwx.qlogo.cn/mmopen/vi_32/dFX6jicsKc8YsDWYNUFXuhcYIuuW3rL9hE9KTGvZOIF3E34SBQXIKwRfdEdOzWoOuhU68y5MHGl6QiavMJSoicjLA/132			normal	青行灯	weChat	active		青行灯	u_5fe5c4f053c8b_QXnkezq9VS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
393	https://thirdwx.qlogo.cn/mmopen/vi_32/Ey62FK1Px6lwyhicAdjJyxic2SL1R8omZydzN2DPYpJjaV4ylJTwXJOerYG8yIsbVIZyEE34S35AC11ibw9TZ1qAA/132			normal	Yuri	weChat	active		Yuri	u_5fe5c16544975_hJSaCj0TUJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
394	https://thirdwx.qlogo.cn/mmopen/vi_32/Xftl5TSGibzVkjSbUGiaQy3EBogibSsQor1GKvckiaVvicuTkxXMGL3ciaGVjcYwCOc9YBfBshtYBL7lpiaMWehY8qrqQ/132			normal	卡戎	weChat	active		卡戎	u_5fe5c16011679_SkK3MoGRHS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
395	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLJ9YZp93dM0MoEvvkVG8hVicGNMTQTzw2PlKVXUSkC7V8FAKUgkasr3S7cgQdT25SmqglLBKUGOlQ/132			normal	💃	weChat	active		💃	u_5fe52cd128090_spu0UgHrTD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
396	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eorOGu987ib8GHP2FRADo8hZNUvHx76MAEZP9mpTdeNYic0ibJ0Ea0J3S6JhlNyPcIH65BaaTsohX89w/132			normal	cxk打篮球	weChat	active		cxk打篮球	u_5fe47b03d2c52_NO23zAi4cW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
397	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJWghs82WfLeiarDhDl73cZKDnermcv1hWDhxtKDBicsPLYkUE4ZhljxB3aPUcXvKcCtOdzzpWTibx6Q/132			normal	文文妈	weChat	active		文文妈	u_5fe33f2f9b748_Z4E8TR8ENm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
398	https://thirdwx.qlogo.cn/mmopen/vi_32/khD9uibibRyBke6xKap3av321YqU0YXno5qmyD39JQg7WKa4z7gXKVkC16AMDCiboxpLwJJ9OJJP856bQTB6ibbHVQ/132			normal	relief	weChat	active		relief	u_5fe2eea88672e_IyUWqY911M	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
399	https://thirdwx.qlogo.cn/mmopen/vi_32/FydBiarFhvwA3icfpHApuppqegG983ukasYeQXHKNUp9jnPrTQcUHvKtfia7jpibrLJfANicvRiacVVpSbpbbFZibRmLg/132			normal	NGC  6960	weChat	active		NGC  6960	u_5fe214b969d88_UmZxrKZ4r1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
400	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKLpLQsJUxJN3GPTJqk0XnMwUxGeJiayTFzW4xm8LMrzHaVRL25ticHovDh9Dib6UvctoMWZiaTfg8mVw/132			normal	王璐	weChat	active		王璐	u_5fe1eda8ca672_vIiKhbehe3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
401	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIMkQ4DknKCuKIicHUciciadquXVTwd3UHsic9r9vsaOMv4V5F1XbWDvUEpWElJx0kfamAaicXZBvWN7dw/132			normal	Uh-oh🤪	weChat	active		Uh-oh🤪	u_5fe1e3ace01a4_5utJUrQGkd	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
402	https://thirdwx.qlogo.cn/mmopen/vi_32/kBu2RQf9sy8oAhOGaWW1AhW3nEYXMcgcs9TicoPBWHlTWtU8Xcgt93Ocz8bHPKw8vicibhDERpBwoNqmjqhW9HE2g/132			normal	·.·°·.*.	weChat	active		·.·°·.*.	u_5fe1d29b9de40_9gZMc9PSDN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
403	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erzTa4dgBQU7LVjhKMItXficyoA5YN3kQNL9nbwo1micEb9yvxhZpfjd39xOpAQOLYibwcdcDlM5raxg/132			normal	zyzooo.	weChat	active		zyzooo.	u_5fe164d42da27_kygQqdIfog	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
404	https://thirdwx.qlogo.cn/mmopen/vi_32/PicGTbCh3IibXUJicCLibeeIZMy5HD9OwkfYQgpRwwyByibtiarK9KgcZ2eicadw7RI7x1dxq4rt1PSADQ625Gb8cqGJA/132			normal	青瓷	weChat	active		青瓷	u_5fe15a93d93cd_vhze5ugR1i	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
405	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqVnlZFQhPiaUPd6ruREF5EJ0ClpWibgjHmgD01DUAUaagkjjGxL3sjMXMmM1TibCT7F4kDkTk4OoMkQ/132			normal	杨帆	weChat	active		杨帆	u_5fdffbc5b9e20_wNKK48W2Ch	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
406	https://thirdwx.qlogo.cn/mmopen/vi_32/aDeepNHxGJpMabXRIbSE351NiaVzFibib7CuUFklVZgOuLLh4FHvUFtSUXzfQ4Y9rJsgQMiazhicJhYoPiaChibgzl47A/132			normal	涂华阳	weChat	active		涂华阳	u_5fdf5f9b0f86c_Pq1SGwuOfg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
407	https://thirdwx.qlogo.cn/mmopen/vi_32/0uKUCfaHVake6ae8LryFZK30RfiaMY7iaDE4n1TpnSJ09Eq3WBFUPDDMrDu5RzE3pN58MsGWzndDmdUtqnYy87yg/132			normal	天蓝蓝	weChat	active		天蓝蓝	u_5fdf4ebd11d82_nnJvSkopc9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
408	https://thirdwx.qlogo.cn/mmopen/vi_32/4d2wz3loyQ6ZSpawTuD2SuDcau1t74icicIDVk4rj1z1abmDf20PW4Ldpdjbd5X3MBEiarPy8gmQqUZmBJJEMh6AA/132			normal	赵亮	weChat	active		赵亮	u_5fdee3374d3ee_xTO6DCVGVo	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
409	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epXyNd99WVsDbAr1UxayB8SRfXmvjQRPSt61TkZYia1n0RT32wqHxM2t742zias5c1aU6KGzMKTH8zw/132			normal	Sophia	weChat	active		Sophia	u_5fded31a9df5f_0he9riqgqE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
410	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epQoq244hPvZGfKacawUjZKT1w4SZ8QS6Md0wVPwiaA87bhibJd0KqN6nfM1FibRg61zwGBPwEHQGpqA/132			normal	许瑜琳🎄	weChat	active		许瑜琳🎄	u_5fddfed44f6ce_RgCB6vgQ7S	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
411	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ0GOG6Hesh7SSiat6xfY3rAZAE8RFnz7cPMHdZyppNES6icqBDLAzcTDoMoRibRhLVWDuTkAqAM1E2w/132			normal	希望都好	weChat	active		希望都好	u_5fdd607064d87_hbkX1VpOYb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
412	https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJAWT7fJwqgn9StYnZ71n4eDHNqbepEIHmYZt5yzckt1fNJ9uxDElC37BgvRZuD2noK73TwLKdPng/132			normal	斯斯妈妈	weChat	active		斯斯妈妈	u_5fdc645110bbb_jeNLOdjJ88	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
413	https://thirdwx.qlogo.cn/mmopen/vi_32/hjTwLiabrsEJN3OOU7BV4iax5GIC8gnibokme2t3VibZsvIcCQVNZpZ5speSibsQVtkRteEjTJ6g8IkKtoia7VibgrxSg/132			normal	Andrea	weChat	active		Andrea	u_5fdafa20c97dd_fzJ3TiNbHu	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
414	https://thirdwx.qlogo.cn/mmopen/vi_32/My4KDW3yVWX1LuGOGkvGH605KaHDmpoTap3ZE4Y1qA46qdQJVv75eO4N3Hl5wDGmwnr3oEneqW75dtMKL2yQnQ/132			normal	苟。。。	weChat	active		苟。。。	u_5fdab9edb3183_YD0iRVnkH2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
415	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd9b48818aad_6PXPS74nr5.png			normal	健康，幸福，开心就好	weChat	active		健康，幸福，开心就好	u_5fd9b48818aad_6PXPS74nr5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
416	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd9a0ca4ad98_ZemeYNxEIk.png			normal	貓貓月	weChat	active		貓貓月	u_5fd9a0ca4ad98_ZemeYNxEIk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
417	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd99e8b8d3a3_CqA9vTOhzy.png			normal	桃子汽水	weChat	active		桃子汽水	u_5fd99e8b8d3a3_CqA9vTOhzy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
418	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd99750a7e41_ogpXt6efnM.png			normal	硫小六hy	weChat	active		硫小六hy	u_5fd99750a7e41_ogpXt6efnM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
419	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd98070bc418_9qRT7U1y9l.png			normal	金子	weChat	active		金子	u_5fd98070bc418_9qRT7U1y9l	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
420	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd9783c6312c_dhrL6ececG.png			normal	fruitypebble	weChat	active		fruitypebble	u_5fd9783c6312c_dhrL6ececG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
421	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd976f724f96_1rdp45o7J3.png			normal	3104(.ﾟーﾟ)	weChat	active		3104(.ﾟーﾟ)	u_5fd976f724f96_1rdp45o7J3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
422	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd976f5c27be_voBwIEc4Wb.png			normal	屿山	weChat	active		屿山	u_5fd976f5c27be_voBwIEc4Wb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
423	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd976d521dd3_UHKP1BqYge.png			normal	荧光闪烁	weChat	active		荧光闪烁	u_5fd976d521dd3_UHKP1BqYge	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
424	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd976d1b2f0d_5Y7mIipbyl.png			normal	金大胖	weChat	active		金大胖	u_5fd976d1b2f0d_5Y7mIipbyl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
425	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd97588ba349_0csGBMFBbL.png			normal	HNY	weChat	active		HNY	u_5fd97588ba349_0csGBMFBbL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
426	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd9710a8bff7_MSggECxQSv.png			normal	許七安	weChat	active		許七安	u_5fd9710a8bff7_MSggECxQSv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
427	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd95fe9ed8e0_Ux6nn7yE8k.png			normal	BenjaminH	weChat	active		BenjaminH	u_5fd95fe9ed8e0_Ux6nn7yE8k	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
428	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd8bc100042c_XX9hprG1Wz.png			normal	橘柚	weChat	active		橘柚	u_5fd8bc100042c_XX9hprG1Wz	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
429	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd8ae09b69d0_q7AqTesC5A.png			normal	Reviver	weChat	active		Reviver	u_5fd8ae09b69d0_q7AqTesC5A	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
431	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd884b298692_QgoSKwHWhs.png			normal	XRWai	weChat	active		XRWai	u_5fd884b298692_QgoSKwHWhs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
432	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd225a56563e_iMkNO93Gmj.png			normal	Jenny	weChat	active		Jenny	u_5fd225a56563e_iMkNO93Gmj	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
433	https://wechatavator-1252524126.cos.ap-shanghai.myqcloud.com/aaa/people_default-2.png			normal	Zora	weChat	active		Zora	u_5fd1d16bc583e_5FBzpIDCWi	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
434	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd18150c46a7_RWvgIFMqYa.png			normal	Mm	weChat	active		Mm	u_5fd18150c46a7_RWvgIFMqYa	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
435	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd0b95de6334_3u5mVWhMaa.png			normal	Lulu	weChat	active		Lulu	u_5fd0b95de6334_3u5mVWhMaa	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
436	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fd04b0077900_O20Xnu65Uy.png			normal	Aaron	weChat	active		Aaron	u_5fd04b0077900_O20Xnu65Uy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
437	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fcf6e798ebc7_jpL0lIJa1P.png			normal	Tomoyo	weChat	active		Tomoyo	u_5fcf6e798ebc7_jpL0lIJa1P	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
438	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fcf6ab5c7570_M7gxvHBYo2.png			normal	Eric	weChat	active		Eric	u_5fcf6ab5c7570_M7gxvHBYo2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
439	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fcf4069822da_rmFMEislb5.png			normal	Fu	weChat	active		Fu	u_5fcf4069822da_rmFMEislb5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
440	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fcdf6b1ec5b8_bQoOXlWwId.png			normal	🍒Olivia Hu🍒	weChat	active		🍒Olivia Hu🍒	u_5fcdf6b1ec5b8_bQoOXlWwId	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
441	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fcb861953212_FY3hCdDmAL.png			normal	Jenny程	weChat	active		Jenny程	u_5fcb861953212_FY3hCdDmAL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
442	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fc70cb9026bc_l6FzWBO7zK.png			normal	Zach妈	weChat	active		Zach妈	u_5fc70cb9026bc_l6FzWBO7zK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
443	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fc4c73a905b8_vcggWmAhee.png			normal	西西	weChat	active		西西	u_5fc4c73a905b8_vcggWmAhee	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
444	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fc3a057f3bda_MIkcK59lHZ.png			normal	.L	weChat	active		.L	u_5fc3a057f3bda_MIkcK59lHZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
445	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fc3418576b06_13XOlHpqK7.png			normal	娟儿	weChat	active		娟儿	u_5fc3418576b06_13XOlHpqK7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
446	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fc0c3984f284_x6Lmj774bo.png			normal	周杰 阳光觉照	weChat	active		周杰 阳光觉照	u_5fc0c3984f284_x6Lmj774bo	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
447	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fc0aaf5e8a67_Sne6D1U1KN.png			normal	41_	weChat	active		41_	u_5fc0aaf5e8a67_Sne6D1U1KN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
448	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fbb40490794a_YHpedtsC1Q.png			normal	aha	weChat	active		aha	u_5fbb40490794a_YHpedtsC1Q	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
449	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fb9edbf23f7f_pieQ4lWkL3.png			normal	Eddie	weChat	active		Eddie	u_5fb9edbf23f7f_pieQ4lWkL3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
450	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fb5dd7310f33_JvkNKQ6Ep8.png			normal	阿欧大大	weChat	active		阿欧大大	u_5fb5dd7310f33_JvkNKQ6Ep8	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
451	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fb1f82d31e6f_xd6Oq4Ytl9.png			normal	again	weChat	active		again	u_5fb1f82d31e6f_xd6Oq4Ytl9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
452	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5faf97d9b5919_oViztEnHhX.png			normal	远	weChat	active		远	u_5faf97d9b5919_oViztEnHhX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
453	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5face6dd82801_hWKygxrnLN.png			normal	许燕	weChat	active		许燕	u_5face6dd82801_hWKygxrnLN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
454	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fab748765ed8_eD2jz7fDcU.png			normal	宝贝启步@杨飞	weChat	active		宝贝启步@杨飞	u_5fab748765ed8_eD2jz7fDcU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
455	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5faa5eea58fbf_ATMmRO6zu1.png			normal	MaggieZ(有时回复慢）	weChat	active		MaggieZ(有时回复慢）	u_5faa5eea58fbf_ATMmRO6zu1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
456	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5fa1619160d6d_7kjwbsf7xg.png			normal	宁映霞	weChat	active		宁映霞	u_5fa1619160d6d_7kjwbsf7xg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
457	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f9fbad5792d1_Aq3D63L4O1.png			normal	易～kejun	weChat	active		易～kejun	u_5f9fbad5792d1_Aq3D63L4O1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
458	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f9fa2510771a_Ea2X3fZUgr.png			normal	超级丹乐园	weChat	active		超级丹乐园	u_5f9fa2510771a_Ea2X3fZUgr	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
459	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f9ef5df15b0d_QBE7eLZm33.png			normal	邱紫筠Judy Chiu	weChat	active		邱紫筠Judy Chiu	u_5f9ef5df15b0d_QBE7eLZm33	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
460	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f9a38a1c2963_O7n8eYk25d.png			normal	大C	weChat	active		大C	u_5f9a38a1c2963_O7n8eYk25d	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
461	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f9540d95dce1_F2CDLYGKfy.png			normal	Becky	weChat	active		Becky	u_5f9540d95dce1_F2CDLYGKfy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
462	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f95385db25e0_XR0GIP6ex3.png			normal	陈娟	weChat	active		陈娟	u_5f95385db25e0_XR0GIP6ex3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
463	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f9415047fc0a_xeYfiDGeXl.png			normal	王圣峰	weChat	active		王圣峰	u_5f9415047fc0a_xeYfiDGeXl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
464	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f91ad88a05b7_JrivWHFZhQ.png			normal	Kristina小译	weChat	active		Kristina小译	u_5f91ad88a05b7_JrivWHFZhQ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
465	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f90343628371_UP2VQJQ9YS.png			normal	王小mo🌈	weChat	active		王小mo🌈	u_5f90343628371_UP2VQJQ9YS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
466	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f8e8b695d1f9_j3AWfBzpG1.png			normal	Jun	weChat	active		Jun	u_5f8e8b695d1f9_j3AWfBzpG1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
467	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f8b983a0fb2e_Q0CYADmcMs.png			normal	今天下🌧 了吗	weChat	active		今天下🌧 了吗	u_5f8b983a0fb2e_Q0CYADmcMs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
468	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f8162a48c48b_p650c12v7M.png			normal	ö	weChat	active		ö	u_5f8162a48c48b_p650c12v7M	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
469	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f80803f81922_otNY618pjx.png			normal	没名没姓	weChat	active		没名没姓	u_5f80803f81922_otNY618pjx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
470	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f7f011218b68_8BJlw7Gwb2.png			normal	周大卫	weChat	active		周大卫	u_5f7f011218b68_8BJlw7Gwb2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
471	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f7efdb5273e7_Ty1TDIf8MJ.png			normal	龚雪	weChat	active		龚雪	u_5f7efdb5273e7_Ty1TDIf8MJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
472	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f7d10b5a7826_mH14Y7u5Ek.png			normal	可可	weChat	active		可可	u_5f7d10b5a7826_mH14Y7u5Ek	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
473	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f7cd5a01a827_DP6YHyRJkm.png			normal	李笑仙	weChat	active		李笑仙	u_5f7cd5a01a827_DP6YHyRJkm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
474	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f79653393617_0m6qefg5Wm.png			normal	尚州-余加	weChat	active		尚州-余加	u_5f79653393617_0m6qefg5Wm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
475	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f78837d62e17_qdE56rMbaC.png			normal	习三胖子	weChat	active		习三胖子	u_5f78837d62e17_qdE56rMbaC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
476	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f73365d90f2e_MPDZqAFHU5.png			normal	Ying.Z	weChat	active		Ying.Z	u_5f73365d90f2e_MPDZqAFHU5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
477	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f6f709022644_0kxqvRCCkh.png			normal	欢乐马	weChat	active		欢乐马	u_5f6f709022644_0kxqvRCCkh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
478	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f6acc4a86064_kbR6sA7q8S.png			normal	✨Roro多习✨	weChat	active		✨Roro多习✨	u_5f6acc4a86064_kbR6sA7q8S	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
479	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f68a84b6ac1e_v2gSLWeBtA.png			normal	Helen	weChat	active		Helen	u_5f68a84b6ac1e_v2gSLWeBtA	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
480	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f5ee5e10dcc1_nyV0vSDHnt.png			normal	ping	weChat	active		ping	u_5f5ee5e10dcc1_nyV0vSDHnt	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
481	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f574e76cc353_27atl3iOiT.png			normal	魏里	weChat	active		魏里	u_5f574e76cc353_27atl3iOiT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
482	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f5266615b9c1_Ry9W1MhSsc.png			normal	abyioc	weChat	active		abyioc	u_5f5266615b9c1_Ry9W1MhSsc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
483	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f51fbd21c68a_lhZXWcW7ug.png			normal	逸扬	weChat	active		逸扬	u_5f51fbd21c68a_lhZXWcW7ug	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
484	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f50699d14818_LfKyEStFqm.png			normal	chestnut	weChat	active		chestnut	u_5f50699d14818_LfKyEStFqm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
485	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f503da7f2319_CvMz55h69Q.png			normal	露瑶知马力	weChat	active		露瑶知马力	u_5f503da7f2319_CvMz55h69Q	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
486	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f98ee799b6_2f6KX9IZ25.png			normal	Kenny	weChat	active		Kenny	u_5f4f98ee799b6_2f6KX9IZ25	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
487	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f96ccd6c54_MKqIPD3bE4.png			normal	葳蕤自生光	weChat	active		葳蕤自生光	u_5f4f96ccd6c54_MKqIPD3bE4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
488	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f8f76d0838_hRL55eYLdX.png			normal	loveyourself🐵	weChat	active		loveyourself🐵	u_5f4f8f76d0838_hRL55eYLdX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
489	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f8687dd0cc_KaRVsqm2Vm.png			normal	N,F,P	weChat	active		N,F,P	u_5f4f8687dd0cc_KaRVsqm2Vm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
490	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f817ae4a6a_mH1BhwG86T.png			normal	梅梅	weChat	active		梅梅	u_5f4f817ae4a6a_mH1BhwG86T	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
491	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f6e3c9716a_mcqOIy2Yx7.png			normal	YOLO	weChat	active		YOLO	u_5f4f6e3c9716a_mcqOIy2Yx7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
492	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f6de8e3afb_LFQH3ybgMq.png			normal	madofe	weChat	active		madofe	u_5f4f6de8e3afb_LFQH3ybgMq	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
493	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f68dadf969_Rw2CGGRIfB.png			normal	小猴子	weChat	active		小猴子	u_5f4f68dadf969_Rw2CGGRIfB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
494	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f67a3d8ec3_RLt87ghgiC.png			normal	🐒H 2.5💉 P&P	weChat	active		🐒H 2.5💉 P&P	u_5f4f67a3d8ec3_RLt87ghgiC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
495	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f65947ff77_YZKVlp8lb5.png			normal	邢莹莹	weChat	active		邢莹莹	u_5f4f65947ff77_YZKVlp8lb5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
496	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f63b95938f_dKG2T7jBy8.png			normal	Mélodie	weChat	active		Mélodie	u_5f4f63b95938f_dKG2T7jBy8	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
497	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f63213ffa5_o5wKbwoxv4.png			normal	颖.	weChat	active		颖.	u_5f4f63213ffa5_o5wKbwoxv4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
498	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f631e977f7_TcNbWxKiCV.png			normal	CS50DS80SICP	weChat	active		CS50DS80SICP	u_5f4f631e977f7_TcNbWxKiCV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
499	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f60f83c016_oBOTaJ2RNX.png			normal	这是一个巨人	weChat	active		这是一个巨人	u_5f4f60f83c016_oBOTaJ2RNX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
500	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f5f2cd128f_3ceZIKisVp.png			normal	nothing	weChat	active		nothing	u_5f4f5f2cd128f_3ceZIKisVp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
501	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f5e4d5db29_Do73q5YpG6.png			normal	X同学	weChat	active		X同学	u_5f4f5e4d5db29_Do73q5YpG6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
502	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f5b4d73f9e_8RslF94X3b.png			normal	三山未足👣	weChat	active		三山未足👣	u_5f4f5b4d73f9e_8RslF94X3b	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
503	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f5816b3314_l94eR6Kp81.png			normal	1103	weChat	active		1103	u_5f4f5816b3314_l94eR6Kp81	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
504	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f572293e55_iLvyN6hST9.png			normal	no tears	weChat	active		no tears	u_5f4f572293e55_iLvyN6hST9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
505	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f56bf7cc1b_LoRm55nbIY.png			normal	AUM_S.	weChat	active		AUM_S.	u_5f4f56bf7cc1b_LoRm55nbIY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
506	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f54332150c_t90BiwqID8.png			normal	莫西莫西	weChat	active		莫西莫西	u_5f4f54332150c_t90BiwqID8	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
507	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f5299bf5e8_bjOQrNPrrl.png			normal	k	weChat	active		k	u_5f4f5299bf5e8_bjOQrNPrrl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
508	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f529860df7_iikOktvenG.png			normal	💗请叫我倍儿爽💗	weChat	active		💗请叫我倍儿爽💗	u_5f4f529860df7_iikOktvenG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
509	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f525ca3a57_0W1yvP8LW3.png			normal	Kilig	weChat	active		Kilig	u_5f4f525ca3a57_0W1yvP8LW3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
510	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f522d5aabc_FMN65AD9F2.png			normal	KIKIKSY	weChat	active		KIKIKSY	u_5f4f522d5aabc_FMN65AD9F2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
511	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f51416ad86_EUc7BCydRj.png			normal	童弈思	weChat	active		童弈思	u_5f4f51416ad86_EUc7BCydRj	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
512	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f505965e19_QSJmXqpZEr.png			normal	天一摄影 张琪	weChat	active		天一摄影 张琪	u_5f4f505965e19_QSJmXqpZEr	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
513	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f4ffbd61a7_o7g1FN1Jdn.png			normal	eyevvb	weChat	active		eyevvb	u_5f4f4ffbd61a7_o7g1FN1Jdn	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
514	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f4ff6de2e5_v0vGp0PkXM.png			normal	我又不乱来	weChat	active		我又不乱来	u_5f4f4ff6de2e5_v0vGp0PkXM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
515	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f4ff4e8748_DtwRtkdafR.png			normal	Çhéñçhëñ	weChat	active		Çhéñçhëñ	u_5f4f4ff4e8748_DtwRtkdafR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
516	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f4fdb65577_2e2PEEkqPW.png			normal	张政	weChat	active		张政	u_5f4f4fdb65577_2e2PEEkqPW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
517	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f4f553bbf7_cjJpqpSBnM.png			normal	静水L深	weChat	active		静水L深	u_5f4f4f553bbf7_cjJpqpSBnM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
518	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f4f4489e6d_Ry9wMavutM.png			normal	四月	weChat	active		四月	u_5f4f4f4489e6d_Ry9wMavutM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
519	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f4f40ebf15_9Cw0zmCiom.png			normal	渣渣鸥	weChat	active		渣渣鸥	u_5f4f4f40ebf15_9Cw0zmCiom	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
520	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f4f3e85a8b_AI7LAj96R9.png			normal	明	weChat	active		明	u_5f4f4f3e85a8b_AI7LAj96R9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
521	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f4eb8df4b0_hhFCAapwJR.png			normal	展	weChat	active		展	u_5f4f4eb8df4b0_hhFCAapwJR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
522	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f4e5a08e7c_MK2e1Bcs4I.png			normal	Herclues	weChat	active		Herclues	u_5f4f4e5a08e7c_MK2e1Bcs4I	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
523	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f4df9656fa_hnSt4WBplq.png			normal	Scarlett	weChat	active		Scarlett	u_5f4f4df9656fa_hnSt4WBplq	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
524	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f4de9909c3_KTmP9pIerg.png			normal	S.Sodon	weChat	active		S.Sodon	u_5f4f4de9909c3_KTmP9pIerg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
525	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f4d9f66344_Htaid70sb0.png			normal	Azure✨	weChat	active		Azure✨	u_5f4f4d9f66344_Htaid70sb0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
526	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f4d0f74296_4mZVON8ISh.png			normal	镥镁锌	weChat	active		镥镁锌	u_5f4f4d0f74296_4mZVON8ISh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
527	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4f4ce63705d_1ijIRJDoJR.png			normal	Scarlett	weChat	active		Scarlett	u_5f4f4ce63705d_1ijIRJDoJR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
528	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4df3651a86f_WNz8cgvYPu.png			normal	chexy	weChat	active		chexy	u_5f4df3651a86f_WNz8cgvYPu	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
529	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4c5dec3c675_UsiFeBdIkz.png			normal	你是我不及的梦	weChat	active		你是我不及的梦	u_5f4c5dec3c675_UsiFeBdIkz	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
530	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4bc16cb6e91_eUhhOifpzv.png			normal	孟静	weChat	active		孟静	u_5f4bc16cb6e91_eUhhOifpzv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
531	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f47fd61540e9_xVcJgxpulr.png			normal	陈爽	weChat	active		陈爽	u_5f47fd61540e9_xVcJgxpulr	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
532	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f469b3d6fb68_2HsnOR2ycI.png			normal	朱瑞宁	weChat	active		朱瑞宁	u_5f469b3d6fb68_2HsnOR2ycI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
533	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f467fae5e1f2_JO1YLSQqwR.png			normal	DEEPY	weChat	active		DEEPY	u_5f467fae5e1f2_JO1YLSQqwR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
534	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f467f5e048bc_zMqiEJKnBO.png			normal	开心小慢	weChat	active		开心小慢	u_5f467f5e048bc_zMqiEJKnBO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
535	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f44a7f1794d8_gu3hDylIeT.png			normal	你好呀	weChat	active		你好呀	u_5f44a7f1794d8_gu3hDylIeT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
536	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f448c24687b2_4p9BYfLTva.png			normal	kkk	weChat	active		kkk	u_5f448c24687b2_4p9BYfLTva	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
537	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f4485d150d8f_XAyaALKTES.png			normal	💫	weChat	active		💫	u_5f4485d150d8f_XAyaALKTES	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
538	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f43310c36923_8OV4bgYL3P.png			normal	Angel	weChat	active		Angel	u_5f43310c36923_8OV4bgYL3P	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
539	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f422d3940f11_6fMMLELEAb.png			normal	小夕	weChat	active		小夕	u_5f422d3940f11_6fMMLELEAb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
540	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f40caee8609e_ddayTsIvn5.png			normal	Yuqing	weChat	active		Yuqing	u_5f40caee8609e_ddayTsIvn5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
541	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f406e7ea68e6_2BENnXFXgH.png			normal	苏格格调	weChat	active		苏格格调	u_5f406e7ea68e6_2BENnXFXgH	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
542	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f3e497916a70_O8xv4Vb5ZU.png			normal	桃子桃子大桃子🍑	weChat	active		桃子桃子大桃子🍑	u_5f3e497916a70_O8xv4Vb5ZU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
543	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f3d37fb3bbe0_3TC4pgSKiv.png			normal	淡泊，。，	weChat	active		淡泊，。，	u_5f3d37fb3bbe0_3TC4pgSKiv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
544	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f3c9c5d0d8f0_OJjpyN1ZBR.png			normal	Lester	weChat	active		Lester	u_5f3c9c5d0d8f0_OJjpyN1ZBR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
545	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f3c94f64f259_lSG9stI5Hh.png			normal	秋月	weChat	active		秋月	u_5f3c94f64f259_lSG9stI5Hh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
546	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f3be7883eeb0_AEgChZfwHx.png			normal	Danni	weChat	active		Danni	u_5f3be7883eeb0_AEgChZfwHx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
547	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f3a9de0cbbff_zq2FTF5TlC.png			normal	净好	weChat	active		净好	u_5f3a9de0cbbff_zq2FTF5TlC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
548	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f38809ca2f9a_e7MhKVP8h9.png			normal	图	weChat	active		图	u_5f38809ca2f9a_e7MhKVP8h9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
549	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f3505b36cc58_nEny5CbxRH.png			normal	白云出岫	weChat	active		白云出岫	u_5f3505b36cc58_nEny5CbxRH	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
550	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f33aa72cb955_c6xnQeG5FV.png			normal	吟啸徐行	weChat	active		吟啸徐行	u_5f33aa72cb955_c6xnQeG5FV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
551	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f33a66df0a6f_uRih8mt85u.png			normal	陌上桑绿	weChat	active		陌上桑绿	u_5f33a66df0a6f_uRih8mt85u	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
552	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f32076f610e9_uap28FIMD7.png			normal	Edward汤	weChat	active		Edward汤	u_5f32076f610e9_uap28FIMD7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
553	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f30c05e75c2c_ZsphjXjSpk.png			normal	ㄑ	weChat	active		ㄑ	u_5f30c05e75c2c_ZsphjXjSpk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
554	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f2cf183bc042_qqKGzzVSZf.png			normal	兵长	weChat	active		兵长	u_5f2cf183bc042_qqKGzzVSZf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
555	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f2bfc1994633_DsumsHQmQO.png			normal	kindness	weChat	active		kindness	u_5f2bfc1994633_DsumsHQmQO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
556	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f2b97c3a71d2_CGUuc7H3PK.png			normal	我爱你九月见	weChat	active		我爱你九月见	u_5f2b97c3a71d2_CGUuc7H3PK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
557	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f2ae40a9d956_nBgb3uLvXI.png			normal	龚佳正	weChat	active		龚佳正	u_5f2ae40a9d956_nBgb3uLvXI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
558	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f2adb01cc5ec_MhsLis8l8r.png			normal	钓鳌客🐋	weChat	active		钓鳌客🐋	u_5f2adb01cc5ec_MhsLis8l8r	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
559	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f2a27aab5ae9_NrmnIssSEl.png			normal	今天你的头发还在吗	weChat	active		今天你的头发还在吗	u_5f2a27aab5ae9_NrmnIssSEl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
560	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f293faaedfc0_7BV235KCNH.png			normal	Sniper	weChat	active		Sniper	u_5f293faaedfc0_7BV235KCNH	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
561	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f28de68a33f7_CfkchIe7NT.png			normal	INedelcy	weChat	active		INedelcy	u_5f28de68a33f7_CfkchIe7NT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
562	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f2834b63724d_NxyyfWzBO0.png			normal	小霓	weChat	active		小霓	u_5f2834b63724d_NxyyfWzBO0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
563	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f27d88ed23fc_A0EzyXsgWy.png			normal	重泽	weChat	active		重泽	u_5f27d88ed23fc_A0EzyXsgWy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
564	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f2698a22f68f_EJGAZ0uKUl.png			normal	Sallyqy	weChat	active		Sallyqy	u_5f2698a22f68f_EJGAZ0uKUl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
565	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f264cb4c6688_9ckZ51xEpW.png			normal	陈东民	weChat	active		陈东民	u_5f264cb4c6688_9ckZ51xEpW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
566	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f2587be46c0a_Qmt3dmG5Fn.png			normal	莞尔 林亦	weChat	active		莞尔 林亦	u_5f2587be46c0a_Qmt3dmG5Fn	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
567	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f2576501603d_vpV2KHyboW.png			normal	Neptune.	weChat	active		Neptune.	u_5f2576501603d_vpV2KHyboW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
568	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f252a59d09f1_AC6fDoJ13n.png			normal	xubaiyuO_o	weChat	active		xubaiyuO_o	u_5f252a59d09f1_AC6fDoJ13n	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
569	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f2432b1eb41c_9cTNhWVwIf.png			normal	＝W＝	weChat	active		＝W＝	u_5f2432b1eb41c_9cTNhWVwIf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
570	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f242b4dab4a8_V7pww6lc8X.png			normal	independent.桐	weChat	active		independent.桐	u_5f242b4dab4a8_V7pww6lc8X	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
571	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f24218d8ffa1_9oj0VEewxx.png			normal	inner	weChat	active		inner	u_5f24218d8ffa1_9oj0VEewxx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
572	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f23a75019d4a_TvKQNF56ZL.png			normal	Geeta	weChat	active		Geeta	u_5f23a75019d4a_TvKQNF56ZL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
573	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f2255a7c1bec_S4F70voNaC.png			normal	卓小卓💤	weChat	active		卓小卓💤	u_5f2255a7c1bec_S4F70voNaC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
574	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f2163c4c1cea_ZqpbcKJODT.png			normal	西哟	weChat	active		西哟	u_5f2163c4c1cea_ZqpbcKJODT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
575	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f193cf14eb26_8IrQAn6OLZ.png			normal	🌼🍡佳佳🍭🌼	weChat	active		🌼🍡佳佳🍭🌼	u_5f193cf14eb26_8IrQAn6OLZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
576	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f1856466ed05_T177jpAQ7E.png			normal	悠悠碧空	weChat	active		悠悠碧空	u_5f1856466ed05_T177jpAQ7E	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
577	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f1854a7e8412_8KsyxBw1Nk.png			normal	LIANVVO	weChat	active		LIANVVO	u_5f1854a7e8412_8KsyxBw1Nk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
578	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f184f4e2519c_r6TObxXALA.png			normal	门采尔书画院（了凡软硬装设计）	weChat	active		门采尔书画院（了凡软硬装设计）	u_5f184f4e2519c_r6TObxXALA	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
579	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f182c3316610_QAa32jkXbn.png			normal	Emily	weChat	active		Emily	u_5f182c3316610_QAa32jkXbn	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
580	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f179c6f9a20c_CVIYrvqedW.png			normal	渡风	weChat	active		渡风	u_5f179c6f9a20c_CVIYrvqedW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
581	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f16afb1e4771_Sla6Vym6Mw.png			normal	博文陈	weChat	active		博文陈	u_5f16afb1e4771_Sla6Vym6Mw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
582	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f153093089cd_KGnVF0wXec.png			normal	一只特立独行的猪	weChat	active		一只特立独行的猪	u_5f153093089cd_KGnVF0wXec	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
583	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f12af7ea0f52_PcBLUEUNRo.png			normal	惠惠	weChat	active		惠惠	u_5f12af7ea0f52_PcBLUEUNRo	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
584	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f119af34e3b5_6zCbvOPOA5.png			normal	just we	weChat	active		just we	u_5f119af34e3b5_6zCbvOPOA5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
585	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f111df6db33f_66TauTajzf.png			normal	润创	weChat	active		润创	u_5f111df6db33f_66TauTajzf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
586	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f111c3119437_FvyZSyumZs.png			normal	星不野源	weChat	active		星不野源	u_5f111c3119437_FvyZSyumZs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
587	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f10f68d757a7_WN7mFc801U.png			normal	Em	weChat	active		Em	u_5f10f68d757a7_WN7mFc801U	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
588	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f1097900218a_zbJ756HcN5.png			normal	hanhan	weChat	active		hanhan	u_5f1097900218a_zbJ756HcN5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
589	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f106832cbef5_DlvgUZLMw1.png			normal	展翅高飞	weChat	active		展翅高飞	u_5f106832cbef5_DlvgUZLMw1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
590	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f0fc23d1cb9c_MAevKIX8ug.png			normal	Maurice	weChat	active		Maurice	u_5f0fc23d1cb9c_MAevKIX8ug	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
591	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f0f8be4721e3_T7OrTlHq0Z.png			normal	乐	weChat	active		乐	u_5f0f8be4721e3_T7OrTlHq0Z	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
592	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f0f602b44dcd_tYRAon849p.png			normal	zhyyyy	weChat	active		zhyyyy	u_5f0f602b44dcd_tYRAon849p	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
593	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f0db18429190_VUNRKu2JTb.png			normal	WJ	weChat	active		WJ	u_5f0db18429190_VUNRKu2JTb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
594	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f0c87a60b935_TBypfShagB.png			normal	(^_^)	weChat	active		(^_^)	u_5f0c87a60b935_TBypfShagB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
595	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f0c736cd59ee_c7Of5iucOW.png			normal	我执	weChat	active		我执	u_5f0c736cd59ee_c7Of5iucOW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
596	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f0b387e9c029_Zv52XbWEAU.png			normal	Woolf	weChat	active		Woolf	u_5f0b387e9c029_Zv52XbWEAU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
597	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f0b376d5d0ab_OU4HfRVRVj.png			normal	似锦༄	weChat	active		似锦༄	u_5f0b376d5d0ab_OU4HfRVRVj	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
598	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f0b3756dd4c3_2iiVVHil80.png			normal	Database.	weChat	active		Database.	u_5f0b3756dd4c3_2iiVVHil80	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
599	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f09e10f6a425_HBBRjoi2OD.png			normal	Emma	weChat	active		Emma	u_5f09e10f6a425_HBBRjoi2OD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
600	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f0980c4d778d_tgHDhyMsH7.png			normal	Serendipity	weChat	active		Serendipity	u_5f0980c4d778d_tgHDhyMsH7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
601	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f097b6c14289_l4Mh8b9aXs.png			normal	十八楼的快乐	weChat	active		十八楼的快乐	u_5f097b6c14289_l4Mh8b9aXs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
602	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f089943279b4_XKxS3JFqB7.png			normal	sauf toi	weChat	active		sauf toi	u_5f089943279b4_XKxS3JFqB7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
603	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f085f906012e_Ks9R3KHbK5.png			normal	Audrey R Wong	weChat	active		Audrey R Wong	u_5f085f906012e_Ks9R3KHbK5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
604	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f07e17006a9d_KwSVO9wnpK.png			normal	M.X.C.	weChat	active		M.X.C.	u_5f07e17006a9d_KwSVO9wnpK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
605	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f072d9ee0f7f_Ygp5GAiPgZ.png			normal	一一	weChat	active		一一	u_5f072d9ee0f7f_Ygp5GAiPgZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
606	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f06971b16e29_gipQ7YAh3e.png			normal	睡吧小鸟们	weChat	active		睡吧小鸟们	u_5f06971b16e29_gipQ7YAh3e	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
607	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f0557f339ddd_GZ1bsYWH9k.png			normal	小曼	weChat	active		小曼	u_5f0557f339ddd_GZ1bsYWH9k	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
608	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f05237a48e45_SzZ8Ev4ywG.png			normal	R	weChat	active		R	u_5f05237a48e45_SzZ8Ev4ywG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
609	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f050fecd5a9f_q6johJcU65.png			normal	偶人与	weChat	active		偶人与	u_5f050fecd5a9f_q6johJcU65	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
610	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f048c7fbc305_E9PyIEOyC7.png			normal	小九尾	weChat	active		小九尾	u_5f048c7fbc305_E9PyIEOyC7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
611	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f04659ca7121_B7TzG4POhU.png			normal	Kraus	weChat	active		Kraus	u_5f04659ca7121_B7TzG4POhU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
612	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f032726d809c_9gKkgaRzFg.png			normal	Lvxing	weChat	active		Lvxing	u_5f032726d809c_9gKkgaRzFg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
613	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f026d1f473ef_7yfQnuzaOZ.png			normal	😑	weChat	active		😑	u_5f026d1f473ef_7yfQnuzaOZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
614	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f021a74886ac_ECDYWX1B5T.png			normal	jytrinity	weChat	active		jytrinity	u_5f021a74886ac_ECDYWX1B5T	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
615	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f01dcda192a8_vnFB1tmUxy.png			normal	酸菜鱼	weChat	active		酸菜鱼	u_5f01dcda192a8_vnFB1tmUxy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
616	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f011213c73ae_tieNadtG4W.png			normal	徐	weChat	active		徐	u_5f011213c73ae_tieNadtG4W	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
617	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f0091f6cdbb3_UXr9Sx7jCr.png			normal	恺恺	weChat	active		恺恺	u_5f0091f6cdbb3_UXr9Sx7jCr	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
618	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f00766251fa2_SberJHgwYw.png			normal	niki	weChat	active		niki	u_5f00766251fa2_SberJHgwYw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
619	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5f005056beb6b_i8IAaA8ZYM.png			normal	正	weChat	active		正	u_5f005056beb6b_i8IAaA8ZYM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
620	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eff54e41bd2e_tS54i12KJA.png			normal	scurry	weChat	active		scurry	u_5eff54e41bd2e_tS54i12KJA	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
621	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5efc762d4b1b7_fRHM4btenT.png			normal	W	weChat	active		W	u_5efc762d4b1b7_fRHM4btenT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
622	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5efb65398d742_IwbqEKtSRw.png			normal	Asta	weChat	active		Asta	u_5efb65398d742_IwbqEKtSRw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
623	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5efb3d429e290_PHV9Kc2Ao3.png			normal	南北	weChat	active		南北	u_5efb3d429e290_PHV9Kc2Ao3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
624	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef89608f2b95_2lH0TC4AbO.png			normal	马竞不在欧冠决赛赢皇马不改名	weChat	active		马竞不在欧冠决赛赢皇马不改名	u_5ef89608f2b95_2lH0TC4AbO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
625	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef7317b1473f_8vT2ubozeF.png			normal	冬天的雪	weChat	active		冬天的雪	u_5ef7317b1473f_8vT2ubozeF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
626	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef707f9bd705_e8nwTQ37zl.png			normal	波尔	weChat	active		波尔	u_5ef707f9bd705_e8nwTQ37zl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
627	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef6af9c30358_ylMjGV9o91.png			normal	MIB	weChat	active		MIB	u_5ef6af9c30358_ylMjGV9o91	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
628	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef6aceac3f0e_pQWvE2FMoD.png			normal	Joyce_佳	weChat	active		Joyce_佳	u_5ef6aceac3f0e_pQWvE2FMoD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
629	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef699fadf59e_UrIbxRSLk9.png			normal	鈅儿	weChat	active		鈅儿	u_5ef699fadf59e_UrIbxRSLk9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
630	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef6348c8e790_EDVXTiEvm5.png			normal	Yaz.🇨🇳	weChat	active		Yaz.🇨🇳	u_5ef6348c8e790_EDVXTiEvm5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
631	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef5a34538780_Fupj7XxS4b.png			normal	孟德尔的豌豆	weChat	active		孟德尔的豌豆	u_5ef5a34538780_Fupj7XxS4b	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
632	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef52d1aa723a_zXQGA64olN.png			normal	Abby	weChat	active		Abby	u_5ef52d1aa723a_zXQGA64olN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
633	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef46b71a0c48_AwEQyS2xV3.png			normal	Scarborough fair  谰	weChat	active		Scarborough fair  谰	u_5ef46b71a0c48_AwEQyS2xV3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
634	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef3ccab72dce_euaBdU22mw.png			normal	SOLIPSISM	weChat	active		SOLIPSISM	u_5ef3ccab72dce_euaBdU22mw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
635	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef37eac7ece6_z7nXEBV0x3.png			normal	Etaine	weChat	active		Etaine	u_5ef37eac7ece6_z7nXEBV0x3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
636	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef333d4a3a22_A5qu21hkbT.png			normal	张珞瑶	weChat	active		张珞瑶	u_5ef333d4a3a22_A5qu21hkbT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
637	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef2ff691dfc2_BcFvUFI1X6.png			normal	Own universe	weChat	active		Own universe	u_5ef2ff691dfc2_BcFvUFI1X6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
638	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef2e192b3cb8_AsRAcUclwL.png			normal	Jasper航。     👑	weChat	active		Jasper航。     👑	u_5ef2e192b3cb8_AsRAcUclwL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
639	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef2cadc8acd9_ToEOw4u6Sv.png			normal	从此名叫挂念葱	weChat	active		从此名叫挂念葱	u_5ef2cadc8acd9_ToEOw4u6Sv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
640	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef2b4a48933e_6GKkL0Na3B.png			normal	CHAN_	weChat	active		CHAN_	u_5ef2b4a48933e_6GKkL0Na3B	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
641	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef234c875c8c_kmzkhHSzaS.png			normal	多多	weChat	active		多多	u_5ef234c875c8c_kmzkhHSzaS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
642	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef1cdc19f78d_v4eEj3jRBI.png			normal	陈艺琳	weChat	active		陈艺琳	u_5ef1cdc19f78d_v4eEj3jRBI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
643	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef112b73ff27_XgOMy6y7fR.png			normal	YMY	weChat	active		YMY	u_5ef112b73ff27_XgOMy6y7fR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
644	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef0ab894c4ce_sYMnvb6gUt.png			normal	火尧	weChat	active		火尧	u_5ef0ab894c4ce_sYMnvb6gUt	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
645	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef0490139876_Cn8venIbni.png			normal	GLORIA🍓	weChat	active		GLORIA🍓	u_5ef0490139876_Cn8venIbni	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
646	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef04002150d4_JmbK7acTuh.png			normal	不散	weChat	active		不散	u_5ef04002150d4_JmbK7acTuh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
647	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef03b3d2b704_wVxl0jF7uV.png			normal	木子	weChat	active		木子	u_5ef03b3d2b704_wVxl0jF7uV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
648	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef010e99b5f4_mTQm4YwbaL.png			normal	白日空想家	weChat	active		白日空想家	u_5ef010e99b5f4_mTQm4YwbaL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
649	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ef00517d5a69_0A68MQlslU.png			normal	雨文	weChat	active		雨文	u_5ef00517d5a69_0A68MQlslU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
650	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eefeb05c5eaa_1nJPcqWbRd.png			normal	Ariel	weChat	active		Ariel	u_5eefeb05c5eaa_1nJPcqWbRd	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
651	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eef8d321de29_oSGylzCCoo.png			normal	fy	weChat	active		fy	u_5eef8d321de29_oSGylzCCoo	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
652	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eef8a41b9501_eIOnY91mjt.png			normal	布利啾啾迪布利多.夏洛克.后浪Elio	weChat	active		布利啾啾迪布利多.夏洛克.后浪Elio	u_5eef8a41b9501_eIOnY91mjt	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
653	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eef70334b2bb_LHLFaHwUKC.png			normal	ㅤㅤ	weChat	active		ㅤㅤ	u_5eef70334b2bb_LHLFaHwUKC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
654	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eef546e9a6a1_KkLsHc5ucE.png			normal	VIapit	weChat	active		VIapit	u_5eef546e9a6a1_KkLsHc5ucE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
655	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eef408877c39_9SwqnBwoe9.png			normal	鹿西西	weChat	active		鹿西西	u_5eef408877c39_9SwqnBwoe9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
656	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eef1beb39ae5_Kuq1xgh8rG.png			normal	=_黎欢	weChat	active		=_黎欢	u_5eef1beb39ae5_Kuq1xgh8rG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
657	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eeeedce234f3_SfBPSlEu1t.png			normal	Jalena	weChat	active		Jalena	u_5eeeedce234f3_SfBPSlEu1t	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
658	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eee4a7d59850_0Egirx4FFn.png			normal	CM	weChat	active		CM	u_5eee4a7d59850_0Egirx4FFn	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
659	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eee104046d36_0c8cB1baOw.png			normal	LITIANYU	weChat	active		LITIANYU	u_5eee104046d36_0c8cB1baOw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
660	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eedd02701e95_KmULXWgBN9.png			normal	Audrey	weChat	active		Audrey	u_5eedd02701e95_KmULXWgBN9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
661	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eedad4d248b1_6CAkrvLoYY.png			normal	JMH	weChat	active		JMH	u_5eedad4d248b1_6CAkrvLoYY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
662	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eed98f6257cf_xMydvvTbre.png			normal	.	weChat	active		.	u_5eed98f6257cf_xMydvvTbre	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
663	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eed927b976b5_YrhkQSZjuN.png			normal	Christine	weChat	active		Christine	u_5eed927b976b5_YrhkQSZjuN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
664	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eecf36166df1_XDMZsvHnJB.png			normal	冷色系大调	weChat	active		冷色系大调	u_5eecf36166df1_XDMZsvHnJB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
665	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eecb5ab15144_iHcPJLp8Fb.png			normal	撸猫专业户	weChat	active		撸猫专业户	u_5eecb5ab15144_iHcPJLp8Fb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
666	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eec8f17841bc_B05oWVJyYh.png			normal	元音	weChat	active		元音	u_5eec8f17841bc_B05oWVJyYh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
667	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eec8da897856_2lEWYpcXHv.png			normal	 张妖	weChat	active		 张妖	u_5eec8da897856_2lEWYpcXHv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
668	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eec68ab8636e_SpPpHcIEH2.png			normal	韩可乐	weChat	active		韩可乐	u_5eec68ab8636e_SpPpHcIEH2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
669	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eec67d18b3a5_tdc3WuGnI1.png			normal	黄宏	weChat	active		黄宏	u_5eec67d18b3a5_tdc3WuGnI1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
670	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ee94404cf14e_P7dbB1YFUZ.png			normal	dream	weChat	active		dream	u_5ee94404cf14e_P7dbB1YFUZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
671	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ee8d863a5ddd_OcpIbHYE6H.png			normal	流年	weChat	active		流年	u_5ee8d863a5ddd_OcpIbHYE6H	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
672	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ee8ccb476dbd_fE3DCkjqtC.png			normal	简	weChat	active		简	u_5ee8ccb476dbd_fE3DCkjqtC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
673	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ee76968022e3_WrIjraRXgB.png			normal	Rain7	weChat	active		Rain7	u_5ee76968022e3_WrIjraRXgB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
674	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ee72fe51efea_kLGp9lumsD.png			normal	梁卜友	weChat	active		梁卜友	u_5ee72fe51efea_kLGp9lumsD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
675	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ee6f86e542d9_5wKCewEjJ1.png			normal	Brandonnnn	weChat	active		Brandonnnn	u_5ee6f86e542d9_5wKCewEjJ1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
676	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ee473cfb8ac8_1L1Bkoa2Qp.png			normal	陈玉策	weChat	active		陈玉策	u_5ee473cfb8ac8_1L1Bkoa2Qp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
677	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ee306675b1c4_PjsNzwz9aw.png			normal	姚雪瑞	weChat	active		姚雪瑞	u_5ee306675b1c4_PjsNzwz9aw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
678	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ee217b905179_5oF9a9LZTe.png			normal	MM	weChat	active		MM	u_5ee217b905179_5oF9a9LZTe	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
679	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ee13c427f0d2_0SPx0qgel5.png			normal	欢沁	weChat	active		欢沁	u_5ee13c427f0d2_0SPx0qgel5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
680	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ee0f7edc214a_OKmaj2dSSW.png			normal	🍀 邹慧蓉 🍀	weChat	active		🍀 邹慧蓉 🍀	u_5ee0f7edc214a_OKmaj2dSSW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
681	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ee0c83509df2_XzU75gUFIL.png			normal	gray 14°	weChat	active		gray 14°	u_5ee0c83509df2_XzU75gUFIL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
682	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ee0442d237c6_lNCAjn4uk0.png			normal	庞晓芬sophia	weChat	active		庞晓芬sophia	u_5ee0442d237c6_lNCAjn4uk0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
683	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5edf8b865b0a2_frkB6WuMQj.png			normal	乔淼	weChat	active		乔淼	u_5edf8b865b0a2_frkB6WuMQj	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
684	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5edf4b3258e98_ACbPoQ5e49.png			normal	！！！	weChat	active		！！！	u_5edf4b3258e98_ACbPoQ5e49	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
685	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5edef1efe4583_41Lax86Z66.png			normal	布布	weChat	active		布布	u_5edef1efe4583_41Lax86Z66	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
686	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5edeb9eb6ae60_yhrN8Sm8Mc.png			normal	TUTU	weChat	active		TUTU	u_5edeb9eb6ae60_yhrN8Sm8Mc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
687	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ede7a5ed0ffb_Q1RVNysmVw.png			normal	🌦	weChat	active		🌦	u_5ede7a5ed0ffb_Q1RVNysmVw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
688	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ede329d9aa28_1r3H3Ppt25.png			normal	Tiny	weChat	active		Tiny	u_5ede329d9aa28_1r3H3Ppt25	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
689	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ede015b140a8_EOYrarqdNW.png			normal	🕸	weChat	active		🕸	u_5ede015b140a8_EOYrarqdNW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
690	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5edd07577e444_jtgnZVufFL.png			normal	慢慢	weChat	active		慢慢	u_5edd07577e444_jtgnZVufFL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
691	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5edb52c107876_5RMwQAbQBo.png			normal	一山里人	weChat	active		一山里人	u_5edb52c107876_5RMwQAbQBo	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
692	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5edad0fabbb60_7U8rwDiA7B.png			normal	LHB	weChat	active		LHB	u_5edad0fabbb60_7U8rwDiA7B	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
693	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eda03ea86760_PDPacQSKx2.png			normal	Karen	weChat	active		Karen	u_5eda03ea86760_PDPacQSKx2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
694	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed9c57de68e3_xD3EGwi581.png			normal	陈敬元	weChat	active		陈敬元	u_5ed9c57de68e3_xD3EGwi581	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
695	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed9ae3f40bb1_RPfYvGuFeP.png			normal	皮这一下很开心	weChat	active		皮这一下很开心	u_5ed9ae3f40bb1_RPfYvGuFeP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
696	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed8eca718051_tMut7XxKfo.png			normal	Pixie	weChat	active		Pixie	u_5ed8eca718051_tMut7XxKfo	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
697	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed7c7f716839_YEjNzLAotu.png			normal	二道白河	weChat	active		二道白河	u_5ed7c7f716839_YEjNzLAotu	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
698	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed7838020377_73n8ZF6FCV.png			normal	Ashley	weChat	active		Ashley	u_5ed7838020377_73n8ZF6FCV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
699	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed72bd47aeed_5HL2vOxtUC.png			normal	音希	weChat	active		音希	u_5ed72bd47aeed_5HL2vOxtUC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
700	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed71a5b69479_FMzeIvp1zg.png			normal	🐱	weChat	active		🐱	u_5ed71a5b69479_FMzeIvp1zg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
701	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed6ff6512fb8_CSGDm1qHaa.png			normal	众生之光	weChat	active		众生之光	u_5ed6ff6512fb8_CSGDm1qHaa	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
702	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed676fa7f16e_XhyyMyQ3Bf.png			normal	Super_Nova	weChat	active		Super_Nova	u_5ed676fa7f16e_XhyyMyQ3Bf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
703	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed65d420b0ff_bfkURYE5hv.png			normal	Gracie	weChat	active		Gracie	u_5ed65d420b0ff_bfkURYE5hv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
704	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed6438f20f8d_xpaCavCLjL.png			normal	柯基	weChat	active		柯基	u_5ed6438f20f8d_xpaCavCLjL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
705	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed5e3acea626_5A3wFF4iCe.png			normal	.	weChat	active		.	u_5ed5e3acea626_5A3wFF4iCe	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
706	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed49808966f3_y0tDAxKejp.png			normal	鸷鸟	weChat	active		鸷鸟	u_5ed49808966f3_y0tDAxKejp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
707	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed48dbf42851_eFOziG6289.png			normal	Andrew	weChat	active		Andrew	u_5ed48dbf42851_eFOziG6289	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
708	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed471a846949_LMWzuvOojJ.png			normal	徐律师	weChat	active		徐律师	u_5ed471a846949_LMWzuvOojJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
709	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed3dc58a8a81_egriFq5MYl.png			normal	吕明谦	weChat	active		吕明谦	u_5ed3dc58a8a81_egriFq5MYl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
710	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed3aa1b75ee0_PKEsjZk5G1.png			normal	翱翔	weChat	active		翱翔	u_5ed3aa1b75ee0_PKEsjZk5G1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
711	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed26e61e0414_qidKzMVSgK.png			normal	'ㅅ'	weChat	active		'ㅅ'	u_5ed26e61e0414_qidKzMVSgK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
712	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed2539b972d7_u12chdwMEi.png			normal	Masquerade	weChat	active		Masquerade	u_5ed2539b972d7_u12chdwMEi	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
713	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed2500b94725_ZR9N9sj7EW.png			normal	Chloe_	weChat	active		Chloe_	u_5ed2500b94725_ZR9N9sj7EW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
714	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ed0701d22f16_j6yYDdU4tK.png			normal	Angel	weChat	active		Angel	u_5ed0701d22f16_j6yYDdU4tK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
715	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ece8559a9134_es9Ow7ihB8.png			normal	🐑🐑	weChat	active		🐑🐑	u_5ece8559a9134_es9Ow7ihB8	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
716	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ece41db2b942_P3QjEE2wPg.png			normal	任囧	weChat	active		任囧	u_5ece41db2b942_P3QjEE2wPg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
717	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ece31d96a639_nsctb74aCk.png			normal	IKARI SHINNJI001K.R.S.J.	weChat	active		IKARI SHINNJI001K.R.S.J.	u_5ece31d96a639_nsctb74aCk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
718	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ece2e50ceab8_cm8fuyNyrU.png			normal	David-Long	weChat	active		David-Long	u_5ece2e50ceab8_cm8fuyNyrU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
719	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ece05a9d0ab8_O8WZtm6AuP.png			normal	百毒不侵	weChat	active		百毒不侵	u_5ece05a9d0ab8_O8WZtm6AuP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
720	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ecd267eaf7a3_oEIngIJVPs.png			normal	Crystal	weChat	active		Crystal	u_5ecd267eaf7a3_oEIngIJVPs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
721	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ecd1afdc7c37_wj7hgBthI9.png			normal	Valeria🍋	weChat	active		Valeria🍋	u_5ecd1afdc7c37_wj7hgBthI9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
722	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ecd0b6ed7ace_tY2O9Przx9.png			normal	MarvelousK	weChat	active		MarvelousK	u_5ecd0b6ed7ace_tY2O9Przx9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
723	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ecd004c71856_9s1v3O8BT8.png			normal	明明无情	weChat	active		明明无情	u_5ecd004c71856_9s1v3O8BT8	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
724	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eccec9ccda88_rF1Yg470Ms.png			normal	Yui	weChat	active		Yui	u_5eccec9ccda88_rF1Yg470Ms	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
725	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ecce6c36305b_SyKNkd1m1C.png			normal	恩努菲比	weChat	active		恩努菲比	u_5ecce6c36305b_SyKNkd1m1C	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
726	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eccafd327afa_iXmKi4V7dE.png			normal	杨兰	weChat	active		杨兰	u_5eccafd327afa_iXmKi4V7dE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
727	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ecc8b18e619f_uoJfK6F4sL.png			normal	Juño	weChat	active		Juño	u_5ecc8b18e619f_uoJfK6F4sL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
728	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ecc7cf6c4dd4_FobCWAs1VD.png			normal	杨煜燕	weChat	active		杨煜燕	u_5ecc7cf6c4dd4_FobCWAs1VD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
729	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ecbe75aa55ee_uJOnQdMCzb.png			normal	思	weChat	active		思	u_5ecbe75aa55ee_uJOnQdMCzb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
730	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ecb822db5f68_IOzDuwh1r6.png			normal	王美良晨	weChat	active		王美良晨	u_5ecb822db5f68_IOzDuwh1r6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
731	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eca8ca7ed1ff_KNUJOPrRsz.png			normal	Explorer	weChat	active		Explorer	u_5eca8ca7ed1ff_KNUJOPrRsz	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
732	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ec94afaa5e91_AhvFiICiz4.png			normal	GM	weChat	active		GM	u_5ec94afaa5e91_AhvFiICiz4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
733	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ec923be75fea_FspNY5x3m5.png			normal	有天	weChat	active		有天	u_5ec923be75fea_FspNY5x3m5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
734	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ec8d42d6414d_j6FRl7NJgR.png			normal	Alice🌳	weChat	active		Alice🌳	u_5ec8d42d6414d_j6FRl7NJgR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
735	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ec8be185fb7b_PDxFNFKleY.png			normal	jerrylee	weChat	active		jerrylee	u_5ec8be185fb7b_PDxFNFKleY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
736	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ec86f158736a_CxuR5AEioa.png			normal	归程	weChat	active		归程	u_5ec86f158736a_CxuR5AEioa	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
737	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ec7fc587b62c_qGunDPIkAi.png			normal	吞舟	weChat	active		吞舟	u_5ec7fc587b62c_qGunDPIkAi	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
738	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ec7b220abed4_sqkmeHExC5.png			normal	徐某	weChat	active		徐某	u_5ec7b220abed4_sqkmeHExC5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
739	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ebdcf697dd72_IrPeGvwvoB.png			normal	zx	weChat	active		zx	u_5ebdcf697dd72_IrPeGvwvoB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
740	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ebbd8d37eb58_hTl1dnG4sE.png			normal	芊	weChat	active		芊	u_5ebbd8d37eb58_hTl1dnG4sE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
741	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ebbc4cc55ae8_pmdeyh2UH0.png			normal	别放弃斯基	weChat	active		别放弃斯基	u_5ebbc4cc55ae8_pmdeyh2UH0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
742	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eb8d387530b7_uwJ0MYnVxX.png			normal	柠栀	weChat	active		柠栀	u_5eb8d387530b7_uwJ0MYnVxX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
743	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eb823d7d3613_iKZ2MzXSp9.png			normal	Linda	weChat	active		Linda	u_5eb823d7d3613_iKZ2MzXSp9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
744	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eb6152114cb1_aAZUNfyfiJ.png			normal	.	weChat	active		.	u_5eb6152114cb1_aAZUNfyfiJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
745	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eb2bf9f010f9_qwCmaMjFjJ.png			normal	Amazing🌟	weChat	active		Amazing🌟	u_5eb2bf9f010f9_qwCmaMjFjJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
746	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eaf762e29238_Z5xCJOIMQj.png			normal	枫叶红	weChat	active		枫叶红	u_5eaf762e29238_Z5xCJOIMQj	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
747	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5eae98ce8e883_Iz9nmU2amx.png			normal	Liu	weChat	active		Liu	u_5eae98ce8e883_Iz9nmU2amx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
748	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ea7fee671651_cBEeE3JofO.png			normal	一语惊醒梦中人	weChat	active		一语惊醒梦中人	u_5ea7fee671651_cBEeE3JofO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
749	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ea6e7b0d514a_mcbIbo5OxM.png			normal	Focus lxr	weChat	active		Focus lxr	u_5ea6e7b0d514a_mcbIbo5OxM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
750	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ea69e4238192_F7b8rnuUmS.png			normal	星水	weChat	active		星水	u_5ea69e4238192_F7b8rnuUmS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
751	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ea58563634c0_eI3ueIf2hO.png			normal	ZLL	weChat	active		ZLL	u_5ea58563634c0_eI3ueIf2hO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
752	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ea584fabca5c_NAsFYos7sx.png			normal	紫苏	weChat	active		紫苏	u_5ea584fabca5c_NAsFYos7sx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
753	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ea57d3e6d243_ohEFMyGEc5.png			normal	Emma	weChat	active		Emma	u_5ea57d3e6d243_ohEFMyGEc5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
754	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ea1c2d8786cf_6pjV4Wb34o.png			normal	李润芝	weChat	active		李润芝	u_5ea1c2d8786cf_6pjV4Wb34o	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
755	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e9f10c14e27a_BXH3KZC3yk.png			normal	舒然	weChat	active		舒然	u_5e9f10c14e27a_BXH3KZC3yk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
756	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e9ea906108aa_f70CWMA1JJ.png			normal	Nora.	weChat	active		Nora.	u_5e9ea906108aa_f70CWMA1JJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
757	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e9d20f19df50_7bSgCmG4sc.png			normal	。	weChat	active		。	u_5e9d20f19df50_7bSgCmG4sc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
758	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e9b050cb19ee_grOSOffOBK.png			normal	張雯瀾	weChat	active		張雯瀾	u_5e9b050cb19ee_grOSOffOBK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
759	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e9ab1437cb17_GU9SqWWP9F.png			normal	麻烦	weChat	active		麻烦	u_5e9ab1437cb17_GU9SqWWP9F	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
760	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e9a681a8165c_gIYy5yd2pa.png			normal	Xyzar	weChat	active		Xyzar	u_5e9a681a8165c_gIYy5yd2pa	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
761	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e99cfa63fa19_7ZdZmv4XyY.png			normal	Grace	weChat	active		Grace	u_5e99cfa63fa19_7ZdZmv4XyY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
762	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e99b7ca9e4fd_BPUYpkwiid.png			normal	爱你们的葵玉	weChat	active		爱你们的葵玉	u_5e99b7ca9e4fd_BPUYpkwiid	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
763	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e99ac870661b_cZMruywVmx.png			normal	忘归	weChat	active		忘归	u_5e99ac870661b_cZMruywVmx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
764	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e99956384776_YuFSpaYyft.png			normal	Lee	weChat	active		Lee	u_5e99956384776_YuFSpaYyft	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
765	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e997aee42a2d_tWSsElX9pn.png			normal	对方正在输入中...	weChat	active		对方正在输入中...	u_5e997aee42a2d_tWSsElX9pn	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
766	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e986ff8c754a_33qq6gdP8w.png			normal	1	weChat	active		1	u_5e986ff8c754a_33qq6gdP8w	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
767	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e985ac8621cc_djaCku7aCh.png			normal	XD	weChat	active		XD	u_5e985ac8621cc_djaCku7aCh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
768	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e97fb953cc71_0fQtvEH9TN.png			normal	Ida.	weChat	active		Ida.	u_5e97fb953cc71_0fQtvEH9TN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
769	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e9734c7553c7_amHI1yVz8l.png			normal	young broke boi	weChat	active		young broke boi	u_5e9734c7553c7_amHI1yVz8l	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
770	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e96e8d3a8f5c_96ulR7Yrwz.png			normal	Beverly	weChat	active		Beverly	u_5e96e8d3a8f5c_96ulR7Yrwz	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
771	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e9661296ca7d_Ezew15nsOK.png			normal	慕云森	weChat	active		慕云森	u_5e9661296ca7d_Ezew15nsOK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
772	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e93adaf9a545_wCCMAES8p1.png			normal	郭应葆	weChat	active		郭应葆	u_5e93adaf9a545_wCCMAES8p1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
773	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e92ef8fb4bed_a7vBjb7kBF.png			normal	谨离	weChat	active		谨离	u_5e92ef8fb4bed_a7vBjb7kBF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
774	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e9297b14ac2a_7TBNpCm7mB.png			normal	葡萄精灵儿	weChat	active		葡萄精灵儿	u_5e9297b14ac2a_7TBNpCm7mB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
775	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e91df6bf2097_skq1sCj7uk.png			normal	leaf_	weChat	active		leaf_	u_5e91df6bf2097_skq1sCj7uk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
776	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e91b6f69cda2_ZayXDmP8SS.png			normal	E'W	weChat	active		E'W	u_5e91b6f69cda2_ZayXDmP8SS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
777	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e8fc8b901a54_jOQ7Aew5Kz.png			normal	有心人🐳	weChat	active		有心人🐳	u_5e8fc8b901a54_jOQ7Aew5Kz	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
778	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e8dcfd222774_AX6IFIRbqh.png			normal	沅佳	weChat	active		沅佳	u_5e8dcfd222774_AX6IFIRbqh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
779	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e8dceafd14ad_4wbRMchDMD.png			normal	Cindy	weChat	active		Cindy	u_5e8dceafd14ad_4wbRMchDMD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
780	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e8dcb104b5e6_Uj1s0trPH4.png			normal	课长十处长十李伟	weChat	active		课长十处长十李伟	u_5e8dcb104b5e6_Uj1s0trPH4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
781	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e8abf2776545_xqrZFGQI7y.png			normal	有大佬带我学习吗	weChat	active		有大佬带我学习吗	u_5e8abf2776545_xqrZFGQI7y	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
782	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e8a8dfcecb89_zvYvz8Hv32.png			normal	牧羊少年军三	weChat	active		牧羊少年军三	u_5e8a8dfcecb89_zvYvz8Hv32	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
783	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e89e2029275a_ypuQimTKdP.png			normal	半杯茶半首歌	weChat	active		半杯茶半首歌	u_5e89e2029275a_ypuQimTKdP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
784	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e886b9d5f879_J877geiR7k.png			normal	Jerry	weChat	active		Jerry	u_5e886b9d5f879_J877geiR7k	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
785	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e87542cdc05b_Tj2YeHYzjb.png			normal	andrei 安德烈	weChat	active		andrei 安德烈	u_5e87542cdc05b_Tj2YeHYzjb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
786	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e87484d4e955_otbhpLXWi7.png			normal	颛顼🐰Cindy	weChat	active		颛顼🐰Cindy	u_5e87484d4e955_otbhpLXWi7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
787	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e82d878b297c_lqLl0VTm7D.png			normal	理查德	weChat	active		理查德	u_5e82d878b297c_lqLl0VTm7D	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
788	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e81a42e3811e_yD9oysj0nl.png			normal	green leaves of spring	weChat	active		green leaves of spring	u_5e81a42e3811e_yD9oysj0nl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
789	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e80aa3833c5b_p2LCzxWyZc.png			normal	璐璐	weChat	active		璐璐	u_5e80aa3833c5b_p2LCzxWyZc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
790	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e7ec9dcabd7d_1DFoN8v8ja.png			normal	晗旭	weChat	active		晗旭	u_5e7ec9dcabd7d_1DFoN8v8ja	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
791	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e7c8c7f47acd_BcmSbbWfBW.png			normal	史地文PengGang	weChat	active		史地文PengGang	u_5e7c8c7f47acd_BcmSbbWfBW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
792	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e7a07c02d675_1ftiQuu9mO.png			normal	月亮妈	weChat	active		月亮妈	u_5e7a07c02d675_1ftiQuu9mO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
793	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e79aefc0747b_uo6SG3E9J7.png			normal	刘丹	weChat	active		刘丹	u_5e79aefc0747b_uo6SG3E9J7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
794	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e76dcdf5118d_UgCkEBiX9I.png			normal	Jane	weChat	active		Jane	u_5e76dcdf5118d_UgCkEBiX9I	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
795	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e75d65dd042d_0CzwJsgzNR.png			normal	🖤黑桃	weChat	active		🖤黑桃	u_5e75d65dd042d_0CzwJsgzNR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
796	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e74c707973b2_h2umdzqzAh.png			normal	Cherry	weChat	active		Cherry	u_5e74c707973b2_h2umdzqzAh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
797	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e723f0c3a8a4_nxuZR89QBp.png			normal	Kiana	weChat	active		Kiana	u_5e723f0c3a8a4_nxuZR89QBp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
798	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e70d1f7bed0b_Qcj7xs53aw.png			normal	linda	weChat	active		linda	u_5e70d1f7bed0b_Qcj7xs53aw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
799	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e6cd05a26a52_vngKmgeoaI.png			normal	克里斯蒂娜	weChat	active		克里斯蒂娜	u_5e6cd05a26a52_vngKmgeoaI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
800	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e6b3adb4e5c6_ZKtzx9Tu1C.png			normal	。	weChat	active		。	u_5e6b3adb4e5c6_ZKtzx9Tu1C	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
801	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e69cb0408f95_MyuHHAporf.png			normal	ぴ	weChat	active		ぴ	u_5e69cb0408f95_MyuHHAporf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
802	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e68f06fb3249_TVuytnucDu.png			normal	胖猫🐴📷	weChat	active		胖猫🐴📷	u_5e68f06fb3249_TVuytnucDu	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
803	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e61b18327c85_btOdd7gfza.png			normal	Amy	weChat	active		Amy	u_5e61b18327c85_btOdd7gfza	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
804	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e60c3c053d1f_ApsJda0Zum.png			normal	尹秀梅	weChat	active		尹秀梅	u_5e60c3c053d1f_ApsJda0Zum	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
805	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e6094eee38c4_S0YyqsRzTp.png			normal	Yanice.鸦鸦	weChat	active		Yanice.鸦鸦	u_5e6094eee38c4_S0YyqsRzTp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
806	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e5cca13682d5_M8k9gDBQxw.png			normal	steven 戴操	weChat	active		steven 戴操	u_5e5cca13682d5_M8k9gDBQxw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
807	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e59f7dd749cd_iwMX2EnL64.png			normal	鱼🐟🐟儿	weChat	active		鱼🐟🐟儿	u_5e59f7dd749cd_iwMX2EnL64	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
808	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e54a767ec7e8_QVZzDeGUXF.png			normal	戒甜食	weChat	active		戒甜食	u_5e54a767ec7e8_QVZzDeGUXF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
809	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e53efb58d66e_m6acTvx86x.png			normal	Ktl	weChat	active		Ktl	u_5e53efb58d66e_m6acTvx86x	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
810	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e53ae3986e52_KmB9BM4Or0.png			normal	halo	weChat	active		halo	u_5e53ae3986e52_KmB9BM4Or0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
811	http://wechatappdev-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/aDVwZXJzb25hbGNlbnRlci1hbGl2ZWg1LXVfNWU1MjkxZTljYTk4Zl9kQW0xZDB5bmxzLVdqNkJwTEhM.jpeg			normal	孔令笈--LINGJIKONG	weChat	active		孔令笈--LINGJIKONG	u_5e5291e9ca98f_dAm1d0ynls	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
812	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e5240da96047_ZGCzZnL49u.png			normal	🐳 Helen  FL	weChat	active		🐳 Helen  FL	u_5e5240da96047_ZGCzZnL49u	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
813	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e5112b879db3_1X1YIvCxaR.png			normal	殷珺	weChat	active		殷珺	u_5e5112b879db3_1X1YIvCxaR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
814	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e4f5aa2939f2_E7rA3sXkIW.png			normal	等等犇犇	weChat	active		等等犇犇	u_5e4f5aa2939f2_E7rA3sXkIW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
815	https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epvtm4Azdaoic59NK1AzwIF7F5VXNJOlTSico81Aj9oKk7Sz8KJJNrwvOpHhMUxDmor1vW1DDic3yI7A/132			normal	东li	weChat	active		东li	u_5e4eb3fe4676b_CK8lXyRVBM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
816	http://thirdwx.qlogo.cn/mmopen/vi_32/FFbxnvmKPicAWo4gb5LOTtZnTWryaChpyrRltUiaIyCynKQSufl46ia6JXmx9icrUeiaBNGOrIGObL8LVZSPs5J0hhg/132			normal	七里	weChat	active		七里	u_5e4cc4319e162_tXaHYluKQV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
817	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e4b760a1a3ab_hWj0NisZfx.png			normal	妖妖大王	weChat	active		妖妖大王	u_5e4b760a1a3ab_hWj0NisZfx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
818	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e4b6cd1ce0a8_hDjsqJN7m6.png			normal	英理化不考好就不改名的憨憨	weChat	active		英理化不考好就不改名的憨憨	u_5e4b6cd1ce0a8_hDjsqJN7m6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
819	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e4a5d427d468_f2904Qa7Ma.png			normal	Thomas今天学Bio&econ了吗	weChat	active		Thomas今天学Bio&econ了吗	u_5e4a5d427d468_f2904Qa7Ma	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
820	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e4935b0d7b99_Uxq4NlKcqM.png			normal	5	weChat	active		5	u_5e4935b0d7b99_Uxq4NlKcqM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
821	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e49283fd405a_nOeVNg0cky.png			normal	Y	weChat	active		Y	u_5e49283fd405a_nOeVNg0cky	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
822	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e48105b782d5_sMhdxajtqe.png			normal	Mandy Zhang	weChat	active		Mandy Zhang	u_5e48105b782d5_sMhdxajtqe	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
823	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e4675f943aa5_LWq682MRWs.png			normal	不知道	weChat	active		不知道	u_5e4675f943aa5_LWq682MRWs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
824	http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epD2EX3razQoG7ttmNqJ0tHVJxl6TEKL8K5lgxtXUxDLVopLqy9WemxpXC0qRwZFic7smEWJjH78Og/132			normal	amandahuji	weChat	active		amandahuji	u_5e45e307c3fed_qhNewaMxHl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
825	http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqSIaxLpr38JLq3kib7v3ibUvr4ttFYVVgudnWCAv14qrnW12P0JQZCwNiacy8tXD9GVJcrTyCrQz0fg/132			normal	HY	weChat	active		HY	u_5e43b32fe3779_PJfgaCptOv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
826	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e4377e0c1f8c_rdSotH30vR.png			normal	maggie	weChat	active		maggie	u_5e4377e0c1f8c_rdSotH30vR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
827	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e42620ba5034_6YBgijjJ1B.png			normal	瑩瑩	weChat	active		瑩瑩	u_5e42620ba5034_6YBgijjJ1B	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
828	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e411a7b7f986_fxC3OftgZ2.png			normal	WJ	weChat	active		WJ	u_5e411a7b7f986_fxC3OftgZ2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
829	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e3d800bdb98a_5INySJ3x7K.png			normal	reborn	weChat	active		reborn	u_5e3d800bdb98a_5INySJ3x7K	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
830	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e3bc24ed446f_kWHACwvtSx.png			normal	begonia	weChat	active		begonia	u_5e3bc24ed446f_kWHACwvtSx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
831	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e3ba0fce29fd_2tvBeQYU7F.png			normal	格雷戈里	weChat	active		格雷戈里	u_5e3ba0fce29fd_2tvBeQYU7F	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
832	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e398522bc3b6_8N2RvnrJ0M.png			normal	奇点	weChat	active		奇点	u_5e398522bc3b6_8N2RvnrJ0M	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
833	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e3938379b328_Kyd5QA7skP.png			normal	尹西军	weChat	active		尹西军	u_5e3938379b328_Kyd5QA7skP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
834	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e390578dfe5f_vBvDSsyoNs.png			normal	Komorebi	weChat	active		Komorebi	u_5e390578dfe5f_vBvDSsyoNs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
835	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e38f4a62c4e1_4WAjxBY6GO.png			normal	Christina	weChat	active		Christina	u_5e38f4a62c4e1_4WAjxBY6GO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
836	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e3826b1a7d16_k2wE2LdZsE.png			normal	冯虚御风	weChat	active		冯虚御风	u_5e3826b1a7d16_k2wE2LdZsE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
837	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e36754aa7647_ii5EoP4Xzt.png			normal	X-Z-P	weChat	active		X-Z-P	u_5e36754aa7647_ii5EoP4Xzt	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
838	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e366eaede75a_JRiIaZCl7D.png			normal	Jelloy	weChat	active		Jelloy	u_5e366eaede75a_JRiIaZCl7D	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
839	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e35dfa412eb1_BaK1BGpQee.png			normal	大老	weChat	active		大老	u_5e35dfa412eb1_BaK1BGpQee	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
840	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e355a4d6b0ac_KIgFNNGb0v.png			normal	Li Hao	weChat	active		Li Hao	u_5e355a4d6b0ac_KIgFNNGb0v	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
841	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e3501eadece9_bNAJ5WEc8g.png			normal	Francine	weChat	active		Francine	u_5e3501eadece9_bNAJ5WEc8g	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
842	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e3382bff37c6_HgQluhr1ZM.png			normal	zww	weChat	active		zww	u_5e3382bff37c6_HgQluhr1ZM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
843	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e33010cad416_2OXTt1ZCiY.png			normal	柯⊙孝将	weChat	active		柯⊙孝将	u_5e33010cad416_2OXTt1ZCiY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
844	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e32cbc153a1b_xatdyGqFCZ.png			normal	翔哥	weChat	active		翔哥	u_5e32cbc153a1b_xatdyGqFCZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
845	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e31059936d56_uySkAIn2WJ.png			normal	铎淞	weChat	active		铎淞	u_5e31059936d56_uySkAIn2WJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
846	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e300acbee807_c7woq4vLWX.png			normal	Jed V	weChat	active		Jed V	u_5e300acbee807_c7woq4vLWX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
847	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e2ff1512ac7c_jP2mv4XHfX.png			normal	蔡智	weChat	active		蔡智	u_5e2ff1512ac7c_jP2mv4XHfX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
848	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e2e529ca1249_ehpZPkxKnD.png			normal		weChat	active			u_5e2e529ca1249_ehpZPkxKnD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
849	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e2c600459588_EoeKev4QFu.png			normal	逍遥流星	weChat	active		逍遥流星	u_5e2c600459588_EoeKev4QFu	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
850	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e2c4f4a406f9_1uSyh9G4dp.png			normal	瓷朵云	weChat	active		瓷朵云	u_5e2c4f4a406f9_1uSyh9G4dp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
851	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e28b5d8ea992_tc0TtOVabn.png			normal	????	weChat	active		????	u_5e28b5d8ea992_tc0TtOVabn	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
852	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e284ff7eb332_PsCAodd1Am.png			normal	Ares	weChat	active		Ares	u_5e284ff7eb332_PsCAodd1Am	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
853	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e271ca8625e2_c3v8sUbP7Q.png			normal	xinwən	weChat	active		xinwən	u_5e271ca8625e2_c3v8sUbP7Q	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
854	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e26eba29ce99_vIH6PqVOM1.png			normal	Victoria	weChat	active		Victoria	u_5e26eba29ce99_vIH6PqVOM1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
855	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e25e39e90c13_3gXoL1hk7n.png			normal	tyx	weChat	active		tyx	u_5e25e39e90c13_3gXoL1hk7n	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
856	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e23c6c1eda0d_3qYemt30Hf.png			normal	yuting	weChat	active		yuting	u_5e23c6c1eda0d_3qYemt30Hf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
857	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e22a0ee7fccd_7ZHJvzV262.png			normal	水晶石榴	weChat	active		水晶石榴	u_5e22a0ee7fccd_7ZHJvzV262	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
858	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e2049fe545de_PHWI514OlP.png			normal	Faery  BMW	weChat	active		Faery  BMW	u_5e2049fe545de_PHWI514OlP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
859	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e1f041d7e545_c5yQcIbOkJ.png			normal	Rance 兰斯	weChat	active		Rance 兰斯	u_5e1f041d7e545_c5yQcIbOkJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
860	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e1eeb0c34247_1wc9kBwFxn.png			normal	天上地下唯我独尊	weChat	active		天上地下唯我独尊	u_5e1eeb0c34247_1wc9kBwFxn	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
861	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e1d5d327862a_1zyYiVC2rZ.png			normal	一朵阿7鸭????	weChat	active		一朵阿7鸭????	u_5e1d5d327862a_1zyYiVC2rZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
862	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e1c5ba319b23_rPsTzkorjB.png			normal	赫赫	weChat	active		赫赫	u_5e1c5ba319b23_rPsTzkorjB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
863	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e1be6031ff27_MGOpwAK6hA.png			normal	十月	weChat	active		十月	u_5e1be6031ff27_MGOpwAK6hA	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
864	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e183918ae376_WXC2jIerkV.png			normal	????	weChat	active		????	u_5e183918ae376_WXC2jIerkV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
865	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e173eb4e1fdb_w23W4nzr3U.png			normal	danieldennis	weChat	active		danieldennis	u_5e173eb4e1fdb_w23W4nzr3U	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
866	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e15d088a3e3f_vjOKmpxxFM.png			normal	任性猫	weChat	active		任性猫	u_5e15d088a3e3f_vjOKmpxxFM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
867	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e1595dc119ca_jfvs7Xiuz0.png			normal	DN	weChat	active		DN	u_5e1595dc119ca_jfvs7Xiuz0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
868	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e12d14713727_AwAbsOJTt3.png			normal	悦勤	weChat	active		悦勤	u_5e12d14713727_AwAbsOJTt3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
869	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e12b79947fa8_4SusSHuKcr.png			normal	xmcen	weChat	active		xmcen	u_5e12b79947fa8_4SusSHuKcr	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
870	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e12b76d707c5_oFHn4cApqZ.png			normal	Methionylgutaminylarginyltyrosyl	weChat	active		Methionylgutaminylarginyltyrosyl	u_5e12b76d707c5_oFHn4cApqZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
871	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e1222b50e37b_MrwZ7LiY2m.png			normal	树	weChat	active		树	u_5e1222b50e37b_MrwZ7LiY2m	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
872	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e11a39786f72_QBBici9sTJ.png			normal	每天起床拥抱太阳	weChat	active		每天起床拥抱太阳	u_5e11a39786f72_QBBici9sTJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
873	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e118acbe673d_wIuXgcDUAZ.png			normal	柠檬加醋	weChat	active		柠檬加醋	u_5e118acbe673d_wIuXgcDUAZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
874	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e0d7883af243_5pCn8lUM2u.png			normal	Diana G????	weChat	active		Diana G????	u_5e0d7883af243_5pCn8lUM2u	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
875	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e0cb56675c78_zKcZGCxjlV.png			normal	Zzz.Y????	weChat	active		Zzz.Y????	u_5e0cb56675c78_zKcZGCxjlV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
876	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e0b5de43fc9c_XYq0XNpjtL.png			normal	Minni Song	weChat	active		Minni Song	u_5e0b5de43fc9c_XYq0XNpjtL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
877	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e0b2b03d7946_OYHKbyAtdf.png			normal	FPX天下第一	weChat	active		FPX天下第一	u_5e0b2b03d7946_OYHKbyAtdf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
878	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e0af104854d8_Tj2xp9mk4U.png			normal	????	weChat	active		????	u_5e0af104854d8_Tj2xp9mk4U	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
879	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e0ab59840012_sWvrZBRDvg.png			normal	陈左林	weChat	active		陈左林	u_5e0ab59840012_sWvrZBRDvg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
880	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e09a183c6e2e_yrnEwt3ktU.png			normal	一路向前	weChat	active		一路向前	u_5e09a183c6e2e_yrnEwt3ktU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
881	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e0886963802a_UK7erryUsS.png			normal	秦玉冰	weChat	active		秦玉冰	u_5e0886963802a_UK7erryUsS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
882	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e08838488714_yDR3001zYX.png			normal	王珲	weChat	active		王珲	u_5e08838488714_yDR3001zYX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
883	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e01ae55a1c5c_HBUEOnQRPI.png			normal	希雅	weChat	active		希雅	u_5e01ae55a1c5c_HBUEOnQRPI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
884	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5e017fa651dce_N16XUKqge0.png			normal	邱继文	weChat	active		邱继文	u_5e017fa651dce_N16XUKqge0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
885	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dff60659d996_DmfMMTpVaZ.png			normal	雁子	weChat	active		雁子	u_5dff60659d996_DmfMMTpVaZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
886	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dff0ca08d16c_vjS2LTcxX0.png			normal	蔚蓝天空	weChat	active		蔚蓝天空	u_5dff0ca08d16c_vjS2LTcxX0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
887	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dfe4386c0946_riiusLJy7a.png			normal	秋	weChat	active		秋	u_5dfe4386c0946_riiusLJy7a	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
888	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dfe28acad04c_XWhRuGxdGU.png			normal	文.潔	weChat	active		文.潔	u_5dfe28acad04c_XWhRuGxdGU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
889	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dfc2643332cb_0fkhpgfJLt.png			normal	lily	weChat	active		lily	u_5dfc2643332cb_0fkhpgfJLt	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
890	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dfa05b9d3ed9_4lqqLLWBPj.png			normal	曉劍	weChat	active		曉劍	u_5dfa05b9d3ed9_4lqqLLWBPj	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
891	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5df8962d6932d_j5JiuoXvxx.png			normal	笑酒窝	weChat	active		笑酒窝	u_5df8962d6932d_j5JiuoXvxx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
892	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5df446df30227_d2BVGhJ9je.png			normal	Miranda	weChat	active		Miranda	u_5df446df30227_d2BVGhJ9je	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
893	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5df4278ac5e18_pwKFFW6YU3.png			normal	菠萝园	weChat	active		菠萝园	u_5df4278ac5e18_pwKFFW6YU3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
894	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5df210bce1d0f_5rxYGEYgnF.png			normal	雪	weChat	active		雪	u_5df210bce1d0f_5rxYGEYgnF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
895	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5df051c88160b_kRK5BpQ6Ce.png			normal	金明义	weChat	active		金明义	u_5df051c88160b_kRK5BpQ6Ce	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
896	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dee0b9677afe_ZQY25Nyjxm.png			normal	陈蓓	weChat	active		陈蓓	u_5dee0b9677afe_ZQY25Nyjxm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
897	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5deda81525e72_QCUGxZUOvF.png			normal	Bryan	weChat	active		Bryan	u_5deda81525e72_QCUGxZUOvF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
898	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ded032edfa3f_Th1cM0o8JS.png			normal	????高苗	weChat	active		????高苗	u_5ded032edfa3f_Th1cM0o8JS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
899	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5debe9cc85aa0_MgUbyJdgDE.png			normal	小跑????	weChat	active		小跑????	u_5debe9cc85aa0_MgUbyJdgDE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
900	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5de8f4209a318_vu7lmYP8ys.png			normal	菡汉	weChat	active		菡汉	u_5de8f4209a318_vu7lmYP8ys	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
901	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5de7762a39414_1Ewkf9kI3E.png			normal	小恒儿	weChat	active		小恒儿	u_5de7762a39414_1Ewkf9kI3E	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
902	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5de4bc8cb530c_WYFkXDvdCs.png			normal	宁宁	weChat	active		宁宁	u_5de4bc8cb530c_WYFkXDvdCs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
903	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5de34b5253a1d_pfZrn4GPyl.png			normal	张曚磊	weChat	active		张曚磊	u_5de34b5253a1d_pfZrn4GPyl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
904	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5de323810cb9f_eF2uaXuxhm.png			normal	刘婧婧	weChat	active		刘婧婧	u_5de323810cb9f_eF2uaXuxhm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
905	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5de2e919673c1_Ua9B1efIxj.png			normal	刘兴美	weChat	active		刘兴美	u_5de2e919673c1_Ua9B1efIxj	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
906	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ddf3e0b78e0e_g11ICNK0c8.png			normal	????吉祥三宝????	weChat	active		????吉祥三宝????	u_5ddf3e0b78e0e_g11ICNK0c8	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
907	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ddb48aa7606c_PcIeB0i2vI.png			normal	清清溪水	weChat	active		清清溪水	u_5ddb48aa7606c_PcIeB0i2vI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
908	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dda41d75abe1_4dChHpJski.png			normal	青青的草	weChat	active		青青的草	u_5dda41d75abe1_4dChHpJski	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
909	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dda4149e1271_GUymfBnK5b.png			normal	Fakiii	weChat	active		Fakiii	u_5dda4149e1271_GUymfBnK5b	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
910	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dd9ac7f39080_CSrDHwDLlw.png			normal	hongyue wang	weChat	active		hongyue wang	u_5dd9ac7f39080_CSrDHwDLlw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
911	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dd645b432ad6_DQueJOQD1F.png			normal	灰灰	weChat	active		灰灰	u_5dd645b432ad6_DQueJOQD1F	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
912	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dd605b3a8fce_Np5Hw7ctPO.png			normal	Doris????Ding	weChat	active		Doris????Ding	u_5dd605b3a8fce_Np5Hw7ctPO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
913	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dd4e739c0e46_hpPr3ysxXp.png			normal	Mark Yang	weChat	active		Mark Yang	u_5dd4e739c0e46_hpPr3ysxXp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
914	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dd3fb8ebcd9d_KY7Vgx2jKC.png			normal	pearl	weChat	active		pearl	u_5dd3fb8ebcd9d_KY7Vgx2jKC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
915	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dd3917c51a0e_RndUDNQ0WZ.png			normal	张毅	weChat	active		张毅	u_5dd3917c51a0e_RndUDNQ0WZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
916	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dd23d80d835f_cVJGLMIn5X.png			normal	童儿童	weChat	active		童儿童	u_5dd23d80d835f_cVJGLMIn5X	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
917	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dd0004ca42fb_co9ER5pbZn.png			normal	网名	weChat	active		网名	u_5dd0004ca42fb_co9ER5pbZn	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
918	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dcffec5c1bcf_pTWB3pBEZd.png			normal	田园同梦	weChat	active		田园同梦	u_5dcffec5c1bcf_pTWB3pBEZd	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
919	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dcf3db996cc3_ODUq4kqA7j.png			normal	Su	weChat	active		Su	u_5dcf3db996cc3_ODUq4kqA7j	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
920	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dce8e44a2f85_bvUjzZyZac.png			normal	apple	weChat	active		apple	u_5dce8e44a2f85_bvUjzZyZac	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
921	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dcbfaafe6dbd_fVrXR7VGRh.png			normal	Linda????	weChat	active		Linda????	u_5dcbfaafe6dbd_fVrXR7VGRh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
922	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dc8d614b0951_HD7uzu4Yoq.png			normal	Judy	weChat	active		Judy	u_5dc8d614b0951_HD7uzu4Yoq	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
923	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dc811dc73779_6dUOV62ukH.png			normal	是树懒不是树赖	weChat	active		是树懒不是树赖	u_5dc811dc73779_6dUOV62ukH	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
924	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dbf990ece883_dCuJZ8gPER.png			normal	Alice	weChat	active		Alice	u_5dbf990ece883_dCuJZ8gPER	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
925	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dbd934f59d8a_gcfAcMjjQl.png			normal	Moe	weChat	active		Moe	u_5dbd934f59d8a_gcfAcMjjQl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
926	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dbc2b070a4ad_08qm4TwU5U.png			normal	摇曳的芦苇	weChat	active		摇曳的芦苇	u_5dbc2b070a4ad_08qm4TwU5U	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
927	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dba43b4700a7_T1t2Jr89MK.png			normal	Reynold Liu????	weChat	active		Reynold Liu????	u_5dba43b4700a7_T1t2Jr89MK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
928	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5dba3390638c4_UOO3eOGp5v.png			normal	吴云瑶	weChat	active		吴云瑶	u_5dba3390638c4_UOO3eOGp5v	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
929	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5db900cad8310_IyMMhGAqIH.png			normal	Serendipity	weChat	active		Serendipity	u_5db900cad8310_IyMMhGAqIH	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
930	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5db56839ea5fa_7Rz9lwIq8B.png			normal	有一天	weChat	active		有一天	u_5db56839ea5fa_7Rz9lwIq8B	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
931	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5db37ebeeda69_b5aLp1Ax0p.png			normal	Cara	weChat	active		Cara	u_5db37ebeeda69_b5aLp1Ax0p	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
932	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5db3677c8bcea_8GMRm4jDZx.png			normal	吴明蔚Victoria	weChat	active		吴明蔚Victoria	u_5db3677c8bcea_8GMRm4jDZx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
933	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5db23d90c5f00_pcWGUdMSL3.png			normal	chenwenjun	weChat	active		chenwenjun	u_5db23d90c5f00_pcWGUdMSL3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
934	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5db1947e8c6cb_P1I3OIeOyr.png			normal	Nina	weChat	active		Nina	u_5db1947e8c6cb_P1I3OIeOyr	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
935	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5db0f790a6409_5lsr2TDD25.png			normal	weileen	weChat	active		weileen	u_5db0f790a6409_5lsr2TDD25	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
936	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5da08f784a681_6l0gJlySm3.png			normal	haha	weChat	active		haha	u_5da08f784a681_6l0gJlySm3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
937	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d9f441c0a70b_leUQABrO6W.png			normal	zoe	weChat	active		zoe	u_5d9f441c0a70b_leUQABrO6W	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
938	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d9e83ccb9d9c_IGzorFSlEa.png			normal	哦啰拉	weChat	active		哦啰拉	u_5d9e83ccb9d9c_IGzorFSlEa	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
939	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d9a8c75cfbfd_23AZlQJSpy.png			normal	老K	weChat	active		老K	u_5d9a8c75cfbfd_23AZlQJSpy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
940	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d99da7b2ce27_S8m2kBguY5.png			normal	caroline	weChat	active		caroline	u_5d99da7b2ce27_S8m2kBguY5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
941	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d989b35b1782_HfPH9ywgk8.png			normal	charlotte	weChat	active		charlotte	u_5d989b35b1782_HfPH9ywgk8	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
942	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d96a85ac365b_rHYRxNpqMw.png			normal	. . .Yan	weChat	active		. . .Yan	u_5d96a85ac365b_rHYRxNpqMw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
943	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d95e89f25bb5_7XS3OQVnBf.png			normal	Echo	weChat	active		Echo	u_5d95e89f25bb5_7XS3OQVnBf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
944	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d92003daefbe_anR55VcpW4.png			normal	帕丁顿熊	weChat	active		帕丁顿熊	u_5d92003daefbe_anR55VcpW4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
945	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d8b9781f1f0c_iK7Fn999Hy.png			normal	李丽君	weChat	active		李丽君	u_5d8b9781f1f0c_iK7Fn999Hy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
946	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d80ada224dc9_Cys0DYQyjP.png			normal	海燕	weChat	active		海燕	u_5d80ada224dc9_Cys0DYQyjP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
947	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d74887ebd8af_2TZqMvuu5Q.png			normal	Sherry	weChat	active		Sherry	u_5d74887ebd8af_2TZqMvuu5Q	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
948	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d6e5fb82b5d1_oYfcgQ6KgE.png			normal	王薇	weChat	active		王薇	u_5d6e5fb82b5d1_oYfcgQ6KgE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
949	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d6b56e1d48a0_qhR1te0beL.png			normal	Haoshu	weChat	active		Haoshu	u_5d6b56e1d48a0_qhR1te0beL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
950	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d69122c22d7d_1Q072FOgtV.png			normal	???? 栗纸本栗????	weChat	active		???? 栗纸本栗????	u_5d69122c22d7d_1Q072FOgtV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
951	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d690e4c18207_9zkIyUG1kR.png			normal	徒步是件大事！	weChat	active		徒步是件大事！	u_5d690e4c18207_9zkIyUG1kR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
952	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d661ca3f2a8c_NcSTCOKp9l.png			normal	王妤方	weChat	active		王妤方	u_5d661ca3f2a8c_NcSTCOKp9l	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
953	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d623698a30b3_59dr5ewLMi.png			normal	joly	weChat	active		joly	u_5d623698a30b3_59dr5ewLMi	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
954	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d5fd1f043655_RqJN2pb5NW.png			normal	Christy????	weChat	active		Christy????	u_5d5fd1f043655_RqJN2pb5NW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
955	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d5fc77e6a553_4EniRi4PrO.png			normal	李真（MM)	weChat	active		李真（MM)	u_5d5fc77e6a553_4EniRi4PrO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
956	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d5fb739b1da9_IanTJaA0zp.png			normal	亚男	weChat	active		亚男	u_5d5fb739b1da9_IanTJaA0zp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
957	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d5eb2aab673b_3DXplWuy7y.png			normal	大脸猫	weChat	active		大脸猫	u_5d5eb2aab673b_3DXplWuy7y	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
958	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d5d4cc878b75_M0AAFDD7da.png			normal	褚达晨	weChat	active		褚达晨	u_5d5d4cc878b75_M0AAFDD7da	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
959	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d5cc0058216e_4EUN1GWzzU.png			normal	Expedition	weChat	active		Expedition	u_5d5cc0058216e_4EUN1GWzzU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
960	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d5936c9db5e0_Tag5R49tif.png			normal	GUÜ	weChat	active		GUÜ	u_5d5936c9db5e0_Tag5R49tif	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
961	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d591ba45ce86_uM71dEpJkw.png			normal	郭雅静Freya	weChat	active		郭雅静Freya	u_5d591ba45ce86_uM71dEpJkw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
962	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d57d8d4b5ea5_JagdXoe3Gx.png			normal	鹏	weChat	active		鹏	u_5d57d8d4b5ea5_JagdXoe3Gx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
963	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d551d0c22f65_ifAdeSpvva.png			normal	我是左丽	weChat	active		我是左丽	u_5d551d0c22f65_ifAdeSpvva	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
964	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d5388bee8eb8_4HasVrTbPu.png			normal	翡翠绿	weChat	active		翡翠绿	u_5d5388bee8eb8_4HasVrTbPu	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
965	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d52ba285ee80_hFhDVs1AOH.png			normal	Jubring	weChat	active		Jubring	u_5d52ba285ee80_hFhDVs1AOH	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
966	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d52a1f2af09c_W8yOivZeYx.png			normal	燕子	weChat	active		燕子	u_5d52a1f2af09c_W8yOivZeYx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
967	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d4fe6ffab5f8_9w9ja8MzdD.png			normal	Ałan不会写代码	weChat	active		Ałan不会写代码	u_5d4fe6ffab5f8_9w9ja8MzdD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
968	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d4bf3f3c58f0_8k0EJsjR9i.png			normal	-	weChat	active		-	u_5d4bf3f3c58f0_8k0EJsjR9i	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
969	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d4be9961af81_MQKiIsa4zt.png			normal	Sunny妈妈	weChat	active		Sunny妈妈	u_5d4be9961af81_MQKiIsa4zt	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
970	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d4bdd7fa951e_vUWcyoHP9X.png			normal	Yuying	weChat	active		Yuying	u_5d4bdd7fa951e_vUWcyoHP9X	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
971	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d4a8c2271d06_r3a8hcV153.png			normal	郭果	weChat	active		郭果	u_5d4a8c2271d06_r3a8hcV153	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
972	http://wechatappdev-10011692.file.myqcloud.com/appzlexVn1H3846/image/compress/aDVwZXJzb25hbGNlbnRlci1hbGl2ZWg1LXVfNWQ0OTg0N2UwOWEzYl9xd3E4U3RzdXMwLVg2OE05M0JT.jpeg			normal	小强	weChat	active		小强	u_5d49847e09a3b_qwq8Stsus0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
973	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d47929accf11_Yau6Puj48d.png			normal	熊茗(Henry妈妈 ）	weChat	active		熊茗(Henry妈妈 ）	u_5d47929accf11_Yau6Puj48d	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
974	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d453d7411890_JBMYTdJ9Sa.png			normal	Simpleton	weChat	active		Simpleton	u_5d453d7411890_JBMYTdJ9Sa	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
975	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d430f99daa0d_H1XI8hkrJh.png			normal	小茄子ljy	weChat	active		小茄子ljy	u_5d430f99daa0d_H1XI8hkrJh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
976	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d3b534080b3b_5Ibi0sVPXa.png			normal	Huco	weChat	active		Huco	u_5d3b534080b3b_5Ibi0sVPXa	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
977	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d35417e76dcf_Ppgg4wKfT0.png			normal	柯倚理	weChat	active		柯倚理	u_5d35417e76dcf_Ppgg4wKfT0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
978	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d330cf70c719_kr14mNWdEw.png			normal	????Rachel～	weChat	active		????Rachel～	u_5d330cf70c719_kr14mNWdEw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
979	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d305b6dc0120_zquG7fFDGO.png			normal	Yu	weChat	active		Yu	u_5d305b6dc0120_zquG7fFDGO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
980	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d29afe324dcf_59qXHgQBjv.png			normal	Always.	weChat	active		Always.	u_5d29afe324dcf_59qXHgQBjv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
981	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d29675ae36ed_ATsVfuTX51.png			normal	NINA	weChat	active		NINA	u_5d29675ae36ed_ATsVfuTX51	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
982	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d26d9a03cb71_sAjMAWpthO.png			normal	瀚礼-专业礼品定制	weChat	active		瀚礼-专业礼品定制	u_5d26d9a03cb71_sAjMAWpthO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
983	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d2581cc04b01_sqjMuKE13e.png			normal	Kelly	weChat	active		Kelly	u_5d2581cc04b01_sqjMuKE13e	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
984	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d257f8cf16a3_lZuHcgQpZf.png			normal	LilyBU	weChat	active		LilyBU	u_5d257f8cf16a3_lZuHcgQpZf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
985	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d2446fe21b82_kCtk43PXh5.png			normal	灰色调	weChat	active		灰色调	u_5d2446fe21b82_kCtk43PXh5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
986	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d240d6ee9828_JeWPeQkK1i.png			normal	Weiling²⁰¹⁹ ????	weChat	active		Weiling²⁰¹⁹ ????	u_5d240d6ee9828_JeWPeQkK1i	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
987	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d216863edc1e_6SdgbRCrUN.png			normal	YRong	weChat	active		YRong	u_5d216863edc1e_6SdgbRCrUN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
988	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d1fb48977a69_AziXv0vWC5.png			normal	马京桥	weChat	active		马京桥	u_5d1fb48977a69_AziXv0vWC5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
989	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d1fa9297a0a3_05Ir2yuz6h.png			normal	喜多妈	weChat	active		喜多妈	u_5d1fa9297a0a3_05Ir2yuz6h	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
990	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d1f5fa0c3340_4zTyMG2HIp.png			normal	于逸萱	weChat	active		于逸萱	u_5d1f5fa0c3340_4zTyMG2HIp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
991	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d1f34f76be33_1TzkwCIXd1.png			normal	毛燕	weChat	active		毛燕	u_5d1f34f76be33_1TzkwCIXd1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
992	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d1b0314b46a4_ko6SQHbk7z.png			normal	徐菁	weChat	active		徐菁	u_5d1b0314b46a4_ko6SQHbk7z	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
993	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d18d4ef15326_EOgUVs2Ado.png			normal	wyb	weChat	active		wyb	u_5d18d4ef15326_EOgUVs2Ado	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
994	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d1759a2019d0_43rQOmfeuI.png			normal	微观	weChat	active		微观	u_5d1759a2019d0_43rQOmfeuI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
995	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d14a5cf3e74d_QMhgEpsZGM.png			normal	吴忱琪	weChat	active		吴忱琪	u_5d14a5cf3e74d_QMhgEpsZGM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
996	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d1426697fbc4_07nX4iIjiI.png			normal	Emma (施海燕）	weChat	active		Emma (施海燕）	u_5d1426697fbc4_07nX4iIjiI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
997	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d12e28331df2_UKkc1DWsEM.png			normal	田间的一只小老鼠	weChat	active		田间的一只小老鼠	u_5d12e28331df2_UKkc1DWsEM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
998	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d08e63d9b661_TJZ6wHoYBk.png			normal	_____	weChat	active		_____	u_5d08e63d9b661_TJZ6wHoYBk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
999	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d06e63e5bebb_y4sxyCNTMl.png			normal	????小丸子	weChat	active		????小丸子	u_5d06e63e5bebb_y4sxyCNTMl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1000	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d05d13cc380f_9VTG6lPRuU.png			normal	清风泛舟	weChat	active		清风泛舟	u_5d05d13cc380f_9VTG6lPRuU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1001	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5d02511329c0f_bFOQaLtS4R.png			normal	xiaoman	weChat	active		xiaoman	u_5d02511329c0f_bFOQaLtS4R	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1002	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cfe4e0d34fd7_FcjtWc9hLN.png			normal	泽木	weChat	active		泽木	u_5cfe4e0d34fd7_FcjtWc9hLN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1003	http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eptMMvsGa1T40rNsakBJOa4okfljxBCSicu5h7icZFMLsBQ85SLGN4gdrF4ibhGibxkmB0UFhmLd1NgJQ/132			normal	Allen????	weChat	active		Allen????	u_5cfe0fcd61430_Yu6YqTqdpS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1004	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cfcc47f12c52_cjmRemDdol.png			normal	Tina????Tian	weChat	active		Tina????Tian	u_5cfcc47f12c52_cjmRemDdol	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1005	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cfc7a86ac754_F4iORVg85e.png			normal	I'm here shadows	weChat	active		I'm here shadows	u_5cfc7a86ac754_F4iORVg85e	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1006	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cfa5ba0f0834_BuCE3XtB1j.png			normal	曾庆元	weChat	active		曾庆元	u_5cfa5ba0f0834_BuCE3XtB1j	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1007	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cf5fade66c6f_Io5IQ2LOXD.png			normal	Rachel	weChat	active		Rachel	u_5cf5fade66c6f_Io5IQ2LOXD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1008	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cf24a7f2423c_UPEt6Fs1V8.png			normal	江Y	weChat	active		江Y	u_5cf24a7f2423c_UPEt6Fs1V8	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1009	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cefc47b60876_bXTGinNITG.png			normal	Aurora	weChat	active		Aurora	u_5cefc47b60876_bXTGinNITG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1010	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cefbd8a84097_GoOer2nIYr.png			normal	.	weChat	active		.	u_5cefbd8a84097_GoOer2nIYr	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1011	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cefaae91622c_YS6ef5xM8E.png			normal	Carey Chen	weChat	active		Carey Chen	u_5cefaae91622c_YS6ef5xM8E	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1012	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cee747b69504_7DMkNhaxbm.png			normal	Ammanda Yang	weChat	active		Ammanda Yang	u_5cee747b69504_7DMkNhaxbm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1013	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cedc5ff271c7_0ZcHBBk7jw.png			normal	lily	weChat	active		lily	u_5cedc5ff271c7_0ZcHBBk7jw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1014	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cec803604672_MdfpycKzim.png			normal	小米	weChat	active		小米	u_5cec803604672_MdfpycKzim	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1015	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ce8d3a7cb67f_75gxqtSzgx.png			normal	Yuan	weChat	active		Yuan	u_5ce8d3a7cb67f_75gxqtSzgx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1016	http://thirdwx.qlogo.cn/mmopen/vi_32/ajNVdqHZLLAffchtVECK8uWKxb1YXicHTEgGFt7t64QGUib3Wic8MfEWgUvtSreVjmnicAvJrfwq1X91bCYSCapKbA/132			normal	璟颐	weChat	active		璟颐	u_5ce730083695f_Gm9jGbyd40	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1017	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ce6752cd2de5_C8h9X5cR0C.png			normal	谭谭	weChat	active		谭谭	u_5ce6752cd2de5_C8h9X5cR0C	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1018	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cdbfe73eb349_vmZrXsP1eY.png			normal	姚雪玲	weChat	active		姚雪玲	u_5cdbfe73eb349_vmZrXsP1eY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1019	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cdb8ae61ae11_Qf6iF60pv6.png			normal	ksjshdkd	weChat	active		ksjshdkd	u_5cdb8ae61ae11_Qf6iF60pv6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1020	http://wechatappdev-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/aDVwZXJzb25hbGNlbnRlci1hbGl2ZWg1LXVfNWNkYTRiMWFkMzkxYV9yN1Z2YWt0YnMxLXVYcDFJMUUx.jpeg			normal	TY	weChat	active		TY	u_5cda4b1ad391a_r7Vvaktbs1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1021	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cd7ce14d7abe_RleZR57UWX.png			normal	谢华莲Light	weChat	active		谢华莲Light	u_5cd7ce14d7abe_RleZR57UWX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1022	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cd36183d9598_7HqPMJDb4O.png			normal	朱超男	weChat	active		朱超男	u_5cd36183d9598_7HqPMJDb4O	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1023	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cd1491d7b50d_voB78MMWkE.png			normal	谢冰????	weChat	active		谢冰????	u_5cd1491d7b50d_voB78MMWkE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1024	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cce96f6c70da_RGDufg8FsI.png			normal	Selina Zhang	weChat	active		Selina Zhang	u_5cce96f6c70da_RGDufg8FsI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1025	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ccbb52001df6_Nhd0h7tBk4.png			normal	apple	weChat	active		apple	u_5ccbb52001df6_Nhd0h7tBk4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1026	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cca40c466270_Ca0FoAdlIb.png			normal	ʕ ᵒᴥᵒʔ	weChat	active		ʕ ᵒᴥᵒʔ	u_5cca40c466270_Ca0FoAdlIb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1027	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc9c92fb7770_bQCSqrV4WL.png			normal	二一	weChat	active		二一	u_5cc9c92fb7770_bQCSqrV4WL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1028	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc8885aafdcb_o6yNannMan.png			normal	德高望重的戏精	weChat	active		德高望重的戏精	u_5cc8885aafdcb_o6yNannMan	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1029	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc835107c44b_cZIPaVEtNC.png			normal	 梦Dream	weChat	active		 梦Dream	u_5cc835107c44b_cZIPaVEtNC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1030	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc7e77c6abd8_QDapZEbyKH.png			normal	雷蒙	weChat	active		雷蒙	u_5cc7e77c6abd8_QDapZEbyKH	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1031	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc70fceefc8f_GcQE4KGcbd.png			normal	小志	weChat	active		小志	u_5cc70fceefc8f_GcQE4KGcbd	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1032	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc6e3e0bf84b_dWH4eHx0BX.png			normal	妖儿幺兒夭	weChat	active		妖儿幺兒夭	u_5cc6e3e0bf84b_dWH4eHx0BX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1033	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc6835d3e4dc_ZOGySEqarU.png			normal	chenny????????????	weChat	active		chenny????????????	u_5cc6835d3e4dc_ZOGySEqarU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1034	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc58726cdb24_22Hk4AsvN2.png			normal	Ceci	weChat	active		Ceci	u_5cc58726cdb24_22Hk4AsvN2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1035	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc5280c1ca51_VGppC6fiOd.png			normal	六狼-狼砍砍	weChat	active		六狼-狼砍砍	u_5cc5280c1ca51_VGppC6fiOd	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1036	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc4675d80f13_p1JZ5Wxefc.png			normal	Quinn	weChat	active		Quinn	u_5cc4675d80f13_p1JZ5Wxefc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1037	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc4349daa00b_u0nFU8cLNF.png			normal	宋阿鱼	weChat	active		宋阿鱼	u_5cc4349daa00b_u0nFU8cLNF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1038	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc4130d81dd4_mQatOvwtQy.png			normal	Amy????	weChat	active		Amy????	u_5cc4130d81dd4_mQatOvwtQy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1039	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc4125000c7d_N0SplzIUo2.png			normal	大麦子	weChat	active		大麦子	u_5cc4125000c7d_N0SplzIUo2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1040	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc3ed048d127_YIPS1hvXJm.png			normal	Hey.judy	weChat	active		Hey.judy	u_5cc3ed048d127_YIPS1hvXJm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1041	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc3bbc7679de_vzWaIj6jKc.png			normal	叩叩趴	weChat	active		叩叩趴	u_5cc3bbc7679de_vzWaIj6jKc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1042	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc3b812a5b85_AFDCVpEkE0.png			normal	郭红	weChat	active		郭红	u_5cc3b812a5b85_AFDCVpEkE0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1043	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc3b512126d9_rYhPnEtjlR.png			normal	刘泓源	weChat	active		刘泓源	u_5cc3b512126d9_rYhPnEtjlR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1044	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc3ae6ca9f94_lSPsvjg8cy.png			normal	小名叫奥特曼	weChat	active		小名叫奥特曼	u_5cc3ae6ca9f94_lSPsvjg8cy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1045	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc3ae11b9436_U820kNtLDT.png			normal	Meganli	weChat	active		Meganli	u_5cc3ae11b9436_U820kNtLDT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1046	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc3ac8935b84_f2qxjIrBeB.png			normal	马怡	weChat	active		马怡	u_5cc3ac8935b84_f2qxjIrBeB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1047	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc3a90ca2189_XHNxYeSIr4.png			normal	妍雪-MetLife	weChat	active		妍雪-MetLife	u_5cc3a90ca2189_XHNxYeSIr4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1048	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc3a44956638_DOwssfi3hI.png			normal	圆圆	weChat	active		圆圆	u_5cc3a44956638_DOwssfi3hI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1049	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc3a36d01dec_IxWACyGSRV.png			normal	✯	weChat	active		✯	u_5cc3a36d01dec_IxWACyGSRV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1050	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc3a017d455e_N9RWBvOB6i.png			normal	唐燕	weChat	active		唐燕	u_5cc3a017d455e_N9RWBvOB6i	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1051	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc39f49eb9e7_pJMOaOBUkc.png			normal	武战选	weChat	active		武战选	u_5cc39f49eb9e7_pJMOaOBUkc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1052	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cc18e56d7342_F89o25n4Ys.png			normal	晋宁	weChat	active		晋宁	u_5cc18e56d7342_F89o25n4Ys	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1053	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cbf62a339d77_OeN8MeELcH.png			normal	Grace	weChat	active		Grace	u_5cbf62a339d77_OeN8MeELcH	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1054	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cbf13af1ff82_XeEaSyjZbs.png			normal	wang	weChat	active		wang	u_5cbf13af1ff82_XeEaSyjZbs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1055	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cbdb38adf671_zXeqqzJREb.png			normal	Tsomo	weChat	active		Tsomo	u_5cbdb38adf671_zXeqqzJREb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1056	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cbd338a465b0_V4t7MOiKM0.png			normal	天平的翅膀	weChat	active		天平的翅膀	u_5cbd338a465b0_V4t7MOiKM0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1057	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cbc21321b4e5_zJJv4PYk6l.png			normal	陈斌	weChat	active		陈斌	u_5cbc21321b4e5_zJJv4PYk6l	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1058	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cb8562ab667e_AtAjQgSmqT.png			normal	????爱谁谁????	weChat	active		????爱谁谁????	u_5cb8562ab667e_AtAjQgSmqT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1059	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cb2a8bb3ce3e_o5oJGvTlR8.png			normal	阿爽	weChat	active		阿爽	u_5cb2a8bb3ce3e_o5oJGvTlR8	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1060	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cb08e041e5ac_YVp6wFCjMr.png			normal	一匹小马	weChat	active		一匹小马	u_5cb08e041e5ac_YVp6wFCjMr	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1061	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cae8a3b3e930_i4RjvS8GgX.png			normal	仙	weChat	active		仙	u_5cae8a3b3e930_i4RjvS8GgX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1062	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cae3ea83b508_Pp0QoJWiSb.png			normal	( :3 )	weChat	active		( :3 )	u_5cae3ea83b508_Pp0QoJWiSb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1063	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cadf1c99d081_L2Ow03rnhT.png			normal	off limits	weChat	active		off limits	u_5cadf1c99d081_L2Ow03rnhT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1064	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cadee216481e_XEI1wOYE1y.png			normal	面朝大海  春暖花开	weChat	active		面朝大海  春暖花开	u_5cadee216481e_XEI1wOYE1y	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1065	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5cab5a8f9f0f5_YqSd5AITnx.png			normal	Wu Yunmei	weChat	active		Wu Yunmei	u_5cab5a8f9f0f5_YqSd5AITnx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1066	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ca59b4ea7fb7_fzKyUAVOKp.png			normal	都市丽人	weChat	active		都市丽人	u_5ca59b4ea7fb7_fzKyUAVOKp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1067	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ca565bf503c9_NV1zMdXP2E.png			normal	千寻	weChat	active		千寻	u_5ca565bf503c9_NV1zMdXP2E	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1068	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ca4167ff4192_q2hYQqxbRL.png			normal	Lucia	weChat	active		Lucia	u_5ca4167ff4192_q2hYQqxbRL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1069	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ca21533ee956_MWhaqOFPAy.png			normal	海之盐	weChat	active		海之盐	u_5ca21533ee956_MWhaqOFPAy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1070	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ca1efa2ad82a_flI8Ma14sP.png			normal	白沙	weChat	active		白沙	u_5ca1efa2ad82a_flI8Ma14sP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1071	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ca09122c3a31_kIqqeiluvc.png			normal	多多妈妈	weChat	active		多多妈妈	u_5ca09122c3a31_kIqqeiluvc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1072	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c9c39a903c90_sTOYDPPv2q.png			normal	Vincent	weChat	active		Vincent	u_5c9c39a903c90_sTOYDPPv2q	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1073	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c96e22278d22_p4JL6mEBJh.png			normal	Virtuose.	weChat	active		Virtuose.	u_5c96e22278d22_p4JL6mEBJh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1074	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c9590b6b4850_v53lqNeo7a.png			normal	Bonnie	weChat	active		Bonnie	u_5c9590b6b4850_v53lqNeo7a	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1075	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c94564484231_wnuFAbVhMP.png			normal	蒋小鱼????	weChat	active		蒋小鱼????	u_5c94564484231_wnuFAbVhMP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1076	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c942024aca35_8lL49DOEh3.png			normal	泡泡鱼	weChat	active		泡泡鱼	u_5c942024aca35_8lL49DOEh3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1077	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c936d8fa1b6b_i4fh4naWAh.png			normal	刘佳	weChat	active		刘佳	u_5c936d8fa1b6b_i4fh4naWAh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1078	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c933a7d69452_uKx1wuF1mv.png			normal	Swizzle	weChat	active		Swizzle	u_5c933a7d69452_uKx1wuF1mv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1079	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c9256031bd04_IYFWPiCef2.png			normal	一直不回头	weChat	active		一直不回头	u_5c9256031bd04_IYFWPiCef2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1080	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c918ad0a07f7_LtZGG9Paoa.png			normal	༒	weChat	active		༒	u_5c918ad0a07f7_LtZGG9Paoa	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1081	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c908a094ec36_K2u8diHbyj.png			normal	阳光	weChat	active		阳光	u_5c908a094ec36_K2u8diHbyj	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1082	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8f997042fb1_6HKaR1H2jm.png			normal	????羊咩咩	weChat	active		????羊咩咩	u_5c8f997042fb1_6HKaR1H2jm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1083	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8e5f1994559_rGXUy5p3xW.png			normal	Betty Lin	weChat	active		Betty Lin	u_5c8e5f1994559_rGXUy5p3xW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1084	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8def05aa5ac_o8OgPwVhMh.png			normal	十二点要睡啊	weChat	active		十二点要睡啊	u_5c8def05aa5ac_o8OgPwVhMh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1085	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8d992bb39df_J59e7CqM7H.png			normal	贝拉小姐love	weChat	active		贝拉小姐love	u_5c8d992bb39df_J59e7CqM7H	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1086	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8d0103ac3e3_K7HhfJemtU.png			normal	佳琦	weChat	active		佳琦	u_5c8d0103ac3e3_K7HhfJemtU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1087	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8c947994aeb_HMXruve6Sa.png			normal	我	weChat	active		我	u_5c8c947994aeb_HMXruve6Sa	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1088	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8c87e6c88a0_9lAqUu204v.png			normal	安娜	weChat	active		安娜	u_5c8c87e6c88a0_9lAqUu204v	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1089	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8bd2382f076_KIXpcS4kPu.png			normal	夏呵叻	weChat	active		夏呵叻	u_5c8bd2382f076_KIXpcS4kPu	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1090	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8bbf60a7ec2_9ykGhWxRWz.png			normal	奶油少侠	weChat	active		奶油少侠	u_5c8bbf60a7ec2_9ykGhWxRWz	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1091	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8bbe4cf0714_ToYaJnsbTT.png			normal	杨丹样	weChat	active		杨丹样	u_5c8bbe4cf0714_ToYaJnsbTT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1092	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8bb745832af_9d589EjmIN.png			normal	镜像。	weChat	active		镜像。	u_5c8bb745832af_9d589EjmIN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1093	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8ba969b13ad_uX3CAxHuvs.png			normal	zou	weChat	active		zou	u_5c8ba969b13ad_uX3CAxHuvs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1094	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8ba282c0e40_symaA9OB2f.png			normal	HeYanling	weChat	active		HeYanling	u_5c8ba282c0e40_symaA9OB2f	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1095	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8ba27bc4308_VjGjeUWKD1.png			normal	赵岚	weChat	active		赵岚	u_5c8ba27bc4308_VjGjeUWKD1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1096	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8b9b7ec8dcf_U6uFH1URDl.png			normal	雨眠	weChat	active		雨眠	u_5c8b9b7ec8dcf_U6uFH1URDl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1097	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8b99b20ccf4_6NTYyEzRi0.png			normal	Yolanda????	weChat	active		Yolanda????	u_5c8b99b20ccf4_6NTYyEzRi0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1098	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8b9929431ad_T1osbadxys.png			normal	Mc	weChat	active		Mc	u_5c8b9929431ad_T1osbadxys	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1099	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8b9853cd05b_1fnv07HLci.png			normal	Dr.W.	weChat	active		Dr.W.	u_5c8b9853cd05b_1fnv07HLci	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1100	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8b976f1f97a_m7DvsBIkm2.png			normal	李怡然	weChat	active		李怡然	u_5c8b976f1f97a_m7DvsBIkm2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1101	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8b976b90505_1QhW2K93cN.png			normal	哎呀熊大????	weChat	active		哎呀熊大????	u_5c8b976b90505_1QhW2K93cN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1102	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8b964fafcc3_RhecMbNwsf.png			normal	Ariel-chan	weChat	active		Ariel-chan	u_5c8b964fafcc3_RhecMbNwsf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1103	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8b93d1a3892_Gs55qTq8Ju.png			normal	顾小思	weChat	active		顾小思	u_5c8b93d1a3892_Gs55qTq8Ju	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1104	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8b93a7c98a4_u0vgdswdqD.png			normal	黎珉	weChat	active		黎珉	u_5c8b93a7c98a4_u0vgdswdqD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1105	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8b937f379e3_oOCfY2l2zh.png			normal	薇茵	weChat	active		薇茵	u_5c8b937f379e3_oOCfY2l2zh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1106	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8b937f1a836_J2P7bDLIlU.png			normal	方小媛????	weChat	active		方小媛????	u_5c8b937f1a836_J2P7bDLIlU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1107	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8b92ca45418_9G4VYVEq01.png			normal	＋Sugar-Bich	weChat	active		＋Sugar-Bich	u_5c8b92ca45418_9G4VYVEq01	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1108	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8b4cd8b0656_PwgAbLaysD.png			normal	杨莺	weChat	active		杨莺	u_5c8b4cd8b0656_PwgAbLaysD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1109	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8b20868a4f3_hAaugtD4mq.png			normal	Jun	weChat	active		Jun	u_5c8b20868a4f3_hAaugtD4mq	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1110	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8a3173e0f49_IHJrTehQLU.png			normal	A_WXZ	weChat	active		A_WXZ	u_5c8a3173e0f49_IHJrTehQLU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1111	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8929813da58_pKBMW2wwlU.png			normal	天凉好个秋	weChat	active		天凉好个秋	u_5c8929813da58_pKBMW2wwlU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1112	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c88714d5df63_7trjhkV97x.png			normal	sahuanu	weChat	active		sahuanu	u_5c88714d5df63_7trjhkV97x	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1113	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c869b7009a71_8CGA9JkGjZ.png			normal	百合花	weChat	active		百合花	u_5c869b7009a71_8CGA9JkGjZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1114	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c86623ad509f_1O3UPTcWmv.png			normal	曼曼长路	weChat	active		曼曼长路	u_5c86623ad509f_1O3UPTcWmv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1115	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c845572eb37c_bV8NqCV3ak.png			normal	谷美琳	weChat	active		谷美琳	u_5c845572eb37c_bV8NqCV3ak	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1116	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c83de6edc932_l1SEFTw7TO.png			normal	Grail????	weChat	active		Grail????	u_5c83de6edc932_l1SEFTw7TO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1117	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c83d05a2c15e_aHm0DlGs7M.png			normal	魔血部真泷	weChat	active		魔血部真泷	u_5c83d05a2c15e_aHm0DlGs7M	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1118	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c8355d1ca2cd_xQEqql2nB8.png			normal	安然	weChat	active		安然	u_5c8355d1ca2cd_xQEqql2nB8	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1119	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c828409ee187_OeCkt43hoh.png			normal	静静	weChat	active		静静	u_5c828409ee187_OeCkt43hoh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1120	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c7fdb6c410c5_fBMIj4ecKm.png			normal	远见	weChat	active		远见	u_5c7fdb6c410c5_fBMIj4ecKm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1121	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c7caad741cc6_Uk5rWG7uJL.png			normal	李建萍	weChat	active		李建萍	u_5c7caad741cc6_Uk5rWG7uJL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1122	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c7caa982c6d9_6dCB7jrNhs.png			normal	劉熙	weChat	active		劉熙	u_5c7caa982c6d9_6dCB7jrNhs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1123	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c7b49cce0815_L7Ottjr8bt.png			normal	????	weChat	active		????	u_5c7b49cce0815_L7Ottjr8bt	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1124	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c7a49033d171_KLS0Tg29b3.png			normal	Shelly	weChat	active		Shelly	u_5c7a49033d171_KLS0Tg29b3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1125	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c79e18ad2dd0_BYE0jFhsGU.png			normal	棠	weChat	active		棠	u_5c79e18ad2dd0_BYE0jFhsGU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1126	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c7637c6af9a2_kPKNCBeTdw.png			normal	玮	weChat	active		玮	u_5c7637c6af9a2_kPKNCBeTdw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1127	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c76080c3f4d5_E0jDAvHZEY.png			normal	yoyoo	weChat	active		yoyoo	u_5c76080c3f4d5_E0jDAvHZEY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1128	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c753cf044bf4_QIg5CpLhht.png			normal	????月亮	weChat	active		????月亮	u_5c753cf044bf4_QIg5CpLhht	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1129	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c72a39688a11_Ad4GI8nkWj.png			normal	鸣妈	weChat	active		鸣妈	u_5c72a39688a11_Ad4GI8nkWj	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1130	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c723b98bf2af_rdi2UBdAq5.png			normal	白露为霜	weChat	active		白露为霜	u_5c723b98bf2af_rdi2UBdAq5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1131	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c714c5ae0792_jz4eGbfw46.png			normal	田田	weChat	active		田田	u_5c714c5ae0792_jz4eGbfw46	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1132	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c700923eaac1_mswUDB4S9S.png			normal	然	weChat	active		然	u_5c700923eaac1_mswUDB4S9S	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1133	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c6ff39e0131f_C4gzH1nFpm.png			normal	炜lyfdzx	weChat	active		炜lyfdzx	u_5c6ff39e0131f_C4gzH1nFpm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1134	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c6fdb09312d3_ZNydsn2fQY.png			normal	绿山墙	weChat	active		绿山墙	u_5c6fdb09312d3_ZNydsn2fQY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1135	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c6e9fd7b6671_IG8xCjSMpX.png			normal	芬	weChat	active		芬	u_5c6e9fd7b6671_IG8xCjSMpX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1136	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c6e77581dfc0_BKc2EgD7YN.png			normal	艾星涛	weChat	active		艾星涛	u_5c6e77581dfc0_BKc2EgD7YN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1137	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c68e4c81a145_gThSnCUWgT.png			normal	孙晓峰Doug	weChat	active		孙晓峰Doug	u_5c68e4c81a145_gThSnCUWgT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1138	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c67be956e533_YBLiNhmrKI.png			normal	Helen????	weChat	active		Helen????	u_5c67be956e533_YBLiNhmrKI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1139	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c665a72ad4b4_MupHgwDwWu.png			normal	夜色如兰	weChat	active		夜色如兰	u_5c665a72ad4b4_MupHgwDwWu	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1140	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c658190ad5ac_gVWRkmt7pm.png			normal	谷雨	weChat	active		谷雨	u_5c658190ad5ac_gVWRkmt7pm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1141	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c64e05f7c932_bKCkZ0mEcz.png			normal	开心	weChat	active		开心	u_5c64e05f7c932_bKCkZ0mEcz	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1142	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c623ded69235_ESZ0o8aITv.png			normal	一萌	weChat	active		一萌	u_5c623ded69235_ESZ0o8aITv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1143	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c62237c74eab_2sOEYGlKJE.png			normal	热水瓶????	weChat	active		热水瓶????	u_5c62237c74eab_2sOEYGlKJE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1144	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c5e5208e6ecd_DwrReJewDU.png			normal	萌声.ᵂ	weChat	active		萌声.ᵂ	u_5c5e5208e6ecd_DwrReJewDU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1145	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c5d0a9d9f9c6_3bZiEyUJwy.png			normal	二宝妈	weChat	active		二宝妈	u_5c5d0a9d9f9c6_3bZiEyUJwy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1146	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c5cf8c44a225_BZ0ptBNgOG.png			normal	红萍	weChat	active		红萍	u_5c5cf8c44a225_BZ0ptBNgOG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1147	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c5cd8ea36aeb_FrqzX0N4ZC.png			normal	ฅฅ*	weChat	active		ฅฅ*	u_5c5cd8ea36aeb_FrqzX0N4ZC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1148	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c5c64967d6e6_XmQyVbivmo.png			normal	TL	weChat	active		TL	u_5c5c64967d6e6_XmQyVbivmo	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1149	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c591d25afaa6_eFHN5izXOM.png			normal	仙人路飞	weChat	active		仙人路飞	u_5c591d25afaa6_eFHN5izXOM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1150	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c5654ac0d9da_HZNyqGiRv0.png			normal	????????	weChat	active		????????	u_5c5654ac0d9da_HZNyqGiRv0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1151	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c55c7d923eae_cku3I4nJPU.png			normal	????????????天道酬勤????????????	weChat	active		????????????天道酬勤????????????	u_5c55c7d923eae_cku3I4nJPU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1152	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c55c13a52dda_ZEfU3Xwb7q.png			normal	李番茄????	weChat	active		李番茄????	u_5c55c13a52dda_ZEfU3Xwb7q	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1153	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c55b9958ccf5_wFdNzMWePi.png			normal	诘迩蔓	weChat	active		诘迩蔓	u_5c55b9958ccf5_wFdNzMWePi	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1154	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c55aed33175b_EvRMl9fgya.png			normal	Kate	weChat	active		Kate	u_5c55aed33175b_EvRMl9fgya	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1155	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c55a04b32fe8_yZFGmAvU9y.png			normal	wiwio	weChat	active		wiwio	u_5c55a04b32fe8_yZFGmAvU9y	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1156	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c553b92ba30e_zruRwtnOa3.png			normal	雪火	weChat	active		雪火	u_5c553b92ba30e_zruRwtnOa3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1157	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c51a4cf5c127_GqHqec73go.png			normal	yxL	weChat	active		yxL	u_5c51a4cf5c127_GqHqec73go	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1158	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c51a001bcafc_V3eYjeDu8d.png			normal	小儿郎	weChat	active		小儿郎	u_5c51a001bcafc_V3eYjeDu8d	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1159	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c5115a19ce8d_PVgsJtxiSL.png			normal	大象	weChat	active		大象	u_5c5115a19ce8d_PVgsJtxiSL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1160	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c5039579add1_5uAggGnWtk.png			normal	九次方﻿	weChat	active		九次方﻿	u_5c5039579add1_5uAggGnWtk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1161	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c4e56a857ecb_88PoHaMXEA.png			normal	Judy	weChat	active		Judy	u_5c4e56a857ecb_88PoHaMXEA	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1162	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c4db93b03f62_4lhOMHI4z6.png			normal	freedom	weChat	active		freedom	u_5c4db93b03f62_4lhOMHI4z6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1163	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c4d4c8456f48_cLxVd4mAuR.png			normal	邓志恒	weChat	active		邓志恒	u_5c4d4c8456f48_cLxVd4mAuR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1164	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c4beaa4736b0_zegosNxiM5.png			normal	媛亲	weChat	active		媛亲	u_5c4beaa4736b0_zegosNxiM5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1165	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c4be95f50927_hDcdoG5U8h.png			normal	C x y.	weChat	active		C x y.	u_5c4be95f50927_hDcdoG5U8h	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1166	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c4b1c3716975_jCsYLJ5wgs.png			normal	飘飘雪	weChat	active		飘飘雪	u_5c4b1c3716975_jCsYLJ5wgs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1167	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c4ae0fd21def_0dSJDMkzqy.png			normal	Mike Yu	weChat	active		Mike Yu	u_5c4ae0fd21def_0dSJDMkzqy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1168	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c4ad8fb90658_qxGyv17aSq.png			normal	罗	weChat	active		罗	u_5c4ad8fb90658_qxGyv17aSq	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1169	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c4acf4090a43_swc9gzxhnH.png			normal	Aaron	weChat	active		Aaron	u_5c4acf4090a43_swc9gzxhnH	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1170	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c4abdd2d6fe1_rjdVZnpOyv.png			normal	Jason	weChat	active		Jason	u_5c4abdd2d6fe1_rjdVZnpOyv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1171	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c4a782c353eb_VdrnFiGrz1.png			normal	新叶????????	weChat	active		新叶????????	u_5c4a782c353eb_VdrnFiGrz1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1172	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c4a57b37b11b_kPOxv9DK6p.png			normal	汪洋恣肆	weChat	active		汪洋恣肆	u_5c4a57b37b11b_kPOxv9DK6p	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1173	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c4969f8bb7ef_nde9Q7EIzD.png			normal	Arena	weChat	active		Arena	u_5c4969f8bb7ef_nde9Q7EIzD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1174	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c48eb855872e_QMq5ae0QJa.png			normal	川	weChat	active		川	u_5c48eb855872e_QMq5ae0QJa	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1175	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c482d7d276ae_bIJF8RlPDG.png			normal	多巴胺	weChat	active		多巴胺	u_5c482d7d276ae_bIJF8RlPDG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1176	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c482c91ad954_z46EQFXCmZ.png			normal	赵燕娜	weChat	active		赵燕娜	u_5c482c91ad954_z46EQFXCmZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1177	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c47b5221940d_Crlokd7fts.png			normal	S	weChat	active		S	u_5c47b5221940d_Crlokd7fts	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1178	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c46f201ed9f9_zBkT9ufMRx.png			normal	爱乐天	weChat	active		爱乐天	u_5c46f201ed9f9_zBkT9ufMRx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1179	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c4668883d246_F5JMoCpeLO.png			normal	雪XUE	weChat	active		雪XUE	u_5c4668883d246_F5JMoCpeLO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1180	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c43d8f7b53a4_ATKFE9lrAr.png			normal	晴朗	weChat	active		晴朗	u_5c43d8f7b53a4_ATKFE9lrAr	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1181	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c43d2807f220_QDR4a1Unty.png			normal	大土土	weChat	active		大土土	u_5c43d2807f220_QDR4a1Unty	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1182	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c432e6b38710_L848TjUv73.png			normal	小萝莉	weChat	active		小萝莉	u_5c432e6b38710_L848TjUv73	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1183	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c41fdc268e76_KMTfpMxWGW.png			normal	泽西	weChat	active		泽西	u_5c41fdc268e76_KMTfpMxWGW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1184	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c41cded7d54a_BFxowsTOXv.png			normal	germinative leaf????????	weChat	active		germinative leaf????????	u_5c41cded7d54a_BFxowsTOXv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1185	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c41bc4caa87e_4KRrfi4Ovx.png			normal	川子	weChat	active		川子	u_5c41bc4caa87e_4KRrfi4Ovx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1186	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c41656feddfd_hFIZEbgYCJ.png			normal	语笑嫣然	weChat	active		语笑嫣然	u_5c41656feddfd_hFIZEbgYCJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1187	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c3c78b346c62_o2kRf6GbF3.png			normal	YC	weChat	active		YC	u_5c3c78b346c62_o2kRf6GbF3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1188	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c3c49a16b380_pYIVTWLYlX.png			normal	huangyan	weChat	active		huangyan	u_5c3c49a16b380_pYIVTWLYlX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1189	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c3b56faa6300_M2ckpJwe9Y.png			normal	中华老蒋	weChat	active		中华老蒋	u_5c3b56faa6300_M2ckpJwe9Y	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1190	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c39e5db163b3_9ggSfQhfvE.png			normal	巡山	weChat	active		巡山	u_5c39e5db163b3_9ggSfQhfvE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1191	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c39de6f6d380_cjKtY6WtgF.png			normal	????????????????	weChat	active		????????????????	u_5c39de6f6d380_cjKtY6WtgF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1192	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c39be113af92_rrBllEju2F.png			normal	Jing(K&K）	weChat	active		Jing(K&K）	u_5c39be113af92_rrBllEju2F	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1193	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c3975ab79aa3_VsDklwkh2n.png			normal	九月天	weChat	active		九月天	u_5c3975ab79aa3_VsDklwkh2n	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1194	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c389be66a25e_ObwCW8dkYJ.png			normal	凤	weChat	active		凤	u_5c389be66a25e_ObwCW8dkYJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1195	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c387b8dbe4a9_508NqQDL0f.png			normal	茜	weChat	active		茜	u_5c387b8dbe4a9_508NqQDL0f	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1196	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c35f3211eae7_NwYPIT9EzU.png			normal	liu	weChat	active		liu	u_5c35f3211eae7_NwYPIT9EzU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1197	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c35dedbeb5a7_H8ce8ImQXe.png			normal	张莹	weChat	active		张莹	u_5c35dedbeb5a7_H8ce8ImQXe	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1198	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c35d35de15a6_fU3SEAUyjT.png			normal	浅秋	weChat	active		浅秋	u_5c35d35de15a6_fU3SEAUyjT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1199	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c35d26a957dc_NMVLwDSGAg.png			normal	????Shirley????	weChat	active		????Shirley????	u_5c35d26a957dc_NMVLwDSGAg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1200	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c3530c29e484_mGsLqvHIle.png			normal	Linda	weChat	active		Linda	u_5c3530c29e484_mGsLqvHIle	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1201	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c34bdc6e44df_VfCpDLKhUl.png			normal	Yushan	weChat	active		Yushan	u_5c34bdc6e44df_VfCpDLKhUl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1202	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c34bcb13c141_QTxusFRUpG.png			normal	Kathy	weChat	active		Kathy	u_5c34bcb13c141_QTxusFRUpG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1203	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c3307da862e8_sMsrCgCr8T.png			normal	吕	weChat	active		吕	u_5c3307da862e8_sMsrCgCr8T	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1204	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c33039875d1c_yuhKTYCTeD.png			normal	Lindacen	weChat	active		Lindacen	u_5c33039875d1c_yuhKTYCTeD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1205	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c2f129ef059c_jS5RSB2LWD.png			normal	Ying Wang | 王颖	weChat	active		Ying Wang | 王颖	u_5c2f129ef059c_jS5RSB2LWD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1206	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c2f06352c28a_avBgaQ5Qdm.png			normal	lema	weChat	active		lema	u_5c2f06352c28a_avBgaQ5Qdm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1207	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c2e18d7422d5_sPnviklaLT.png			normal	ng	weChat	active		ng	u_5c2e18d7422d5_sPnviklaLT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1208	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c2cb838473b2_1zW4q6cvcE.png			normal	TAMBERE	weChat	active		TAMBERE	u_5c2cb838473b2_1zW4q6cvcE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1209	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c264fa28fd0c_H15mK8S2IV.png			normal	fei	weChat	active		fei	u_5c264fa28fd0c_H15mK8S2IV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1210	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c22f4e8acefd_kdfsGZkCZP.png			normal	孟令宏	weChat	active		孟令宏	u_5c22f4e8acefd_kdfsGZkCZP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1211	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c21ab76ea40c_deDOgawX6b.png			normal	美尔目香椿树	weChat	active		美尔目香椿树	u_5c21ab76ea40c_deDOgawX6b	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1212	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c205fd7ac40c_aGWpS2ZZyQ.png			normal	Ditto.	weChat	active		Ditto.	u_5c205fd7ac40c_aGWpS2ZZyQ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1213	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c1dc5f96ce42_tJDOjtsFl1.png			normal	张东进	weChat	active		张东进	u_5c1dc5f96ce42_tJDOjtsFl1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1214	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c179e5b174d3_OgHUgEYFjs.png			normal	肖嘉华????	weChat	active		肖嘉华????	u_5c179e5b174d3_OgHUgEYFjs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1215	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c171b4d27b0f_q7FZ2vMY8s.png			normal	lk	weChat	active		lk	u_5c171b4d27b0f_q7FZ2vMY8s	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1216	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c1714fe8df9d_vw5W7vtjq2.png			normal	蛋壳憧憬寺	weChat	active		蛋壳憧憬寺	u_5c1714fe8df9d_vw5W7vtjq2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1217	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c1710ba468e8_TuafPWOYEY.png			normal	def name; return name; end; name	weChat	active		def name; return name; end; name	u_5c1710ba468e8_TuafPWOYEY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1218	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c170f891ad2e_vJ7W2L7aC6.png			normal	HJS-133	weChat	active		HJS-133	u_5c170f891ad2e_vJ7W2L7aC6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1219	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c170eb04d7c2_ILy34p5cP2.png			normal	wyz	weChat	active		wyz	u_5c170eb04d7c2_ILy34p5cP2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1220	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c170c112eff2_xXmjceOKWZ.png			normal	萍水相逢	weChat	active		萍水相逢	u_5c170c112eff2_xXmjceOKWZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1221	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c1709d49f729_PKDcP6cHHw.png			normal	Mango	weChat	active		Mango	u_5c1709d49f729_PKDcP6cHHw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1222	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c1632802dd81_xFHI3upx1A.png			normal	逸 	weChat	active		逸 	u_5c1632802dd81_xFHI3upx1A	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1223	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c11acbc867b1_6rf1PJulRA.png			normal	May Ding	weChat	active		May Ding	u_5c11acbc867b1_6rf1PJulRA	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1224	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c11ac4b9fa0c_AuDUYV2mh5.png			normal	zhoudi 	weChat	active		zhoudi 	u_5c11ac4b9fa0c_AuDUYV2mh5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1225	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c0d1a74d3d86_9bEdDDVyjN.png			normal	joyduan	weChat	active		joyduan	u_5c0d1a74d3d86_9bEdDDVyjN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1226	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c0b848b67785_z4qBz9MLMf.png			normal	丹机长	weChat	active		丹机长	u_5c0b848b67785_z4qBz9MLMf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1227	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c0b6e1a1c3ee_BrJbdjuDlK.png			normal	颖	weChat	active		颖	u_5c0b6e1a1c3ee_BrJbdjuDlK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1228	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c0b4e986751a_pMw20SKgA6.png			normal	Ranee	weChat	active		Ranee	u_5c0b4e986751a_pMw20SKgA6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1229	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c0b22a5c031d_eSyhu0CMl4.png			normal	sandy	weChat	active		sandy	u_5c0b22a5c031d_eSyhu0CMl4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1230	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c0a5050f1fd9_JAh2RsQB9t.png			normal	Helen	weChat	active		Helen	u_5c0a5050f1fd9_JAh2RsQB9t	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1231	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5c04acd03b858_9yzsHy6vvN.png			normal	sandra	weChat	active		sandra	u_5c04acd03b858_9yzsHy6vvN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1232	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bff5341f1f8b_kJVZn97INq.png			normal	谢琳	weChat	active		谢琳	u_5bff5341f1f8b_kJVZn97INq	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1233	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bfd4b2c1d6a3_690JsEqhi5.png			normal	蠡	weChat	active		蠡	u_5bfd4b2c1d6a3_690JsEqhi5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1234	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bfd47af63032_tXBTC3YzDV.png			normal	Daisymyq	weChat	active		Daisymyq	u_5bfd47af63032_tXBTC3YzDV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1235	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bef9135f35e8_zWdy05kMho.png			normal	昔艺	weChat	active		昔艺	u_5bef9135f35e8_zWdy05kMho	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1236	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bec625aa9636_FUnS7uY3YO.png			normal	Amy_金SM ????	weChat	active		Amy_金SM ????	u_5bec625aa9636_FUnS7uY3YO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1237	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5be8220e717ff_KgGFwMNTVJ.png			normal	Soldier.	weChat	active		Soldier.	u_5be8220e717ff_KgGFwMNTVJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1238	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5be63f49ec875_ywbly1OD7L.png			normal	Emily	weChat	active		Emily	u_5be63f49ec875_ywbly1OD7L	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1239	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5be4d7b670d86_cgB20Zh4kN.png			normal	Jane	weChat	active		Jane	u_5be4d7b670d86_cgB20Zh4kN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1240	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5be21e5c23248_XUtCpe9Osg.png			normal	Jinman	weChat	active		Jinman	u_5be21e5c23248_XUtCpe9Osg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1241	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5be21d7fd591e_uBW7bMjyoE.png			normal	endless space	weChat	active		endless space	u_5be21d7fd591e_uBW7bMjyoE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1242	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5be21caca9b9c_YZVP6HLApg.png			normal	杨文波	weChat	active		杨文波	u_5be21caca9b9c_YZVP6HLApg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1243	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bdefe4bc07d1_c0uenRkDbm.png			normal	您的好友	weChat	active		您的好友	u_5bdefe4bc07d1_c0uenRkDbm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1244	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bdbc4c23c370_dJg6WSkcgD.png			normal	魏楠	weChat	active		魏楠	u_5bdbc4c23c370_dJg6WSkcgD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1245	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bd443a9b5093_jslS5XCqn3.png			normal	Yzed	weChat	active		Yzed	u_5bd443a9b5093_jslS5XCqn3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1246	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bcdbe228e8ce_DO5KO7tHW2.png			normal	伟大与渺小	weChat	active		伟大与渺小	u_5bcdbe228e8ce_DO5KO7tHW2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1247	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bcaeb0c4e07d_kfbFmIswke.png			normal	长卿	weChat	active		长卿	u_5bcaeb0c4e07d_kfbFmIswke	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1248	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bc933b09d09e_pJpIEbzc4r.png			normal	????玉兒????	weChat	active		????玉兒????	u_5bc933b09d09e_pJpIEbzc4r	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1249	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bc360f90a18e_FsksWi7Djr.png			normal	马曲琦	weChat	active		马曲琦	u_5bc360f90a18e_FsksWi7Djr	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1250	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bc35b10e6793_wBNYrbvAhK.png			normal	黄云瀚	weChat	active		黄云瀚	u_5bc35b10e6793_wBNYrbvAhK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1251	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bc11b064d875_VODYRuWOgw.png			normal	静静看世界	weChat	active		静静看世界	u_5bc11b064d875_VODYRuWOgw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1252	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bbf59f9e5e04_Bqdj0cCEQj.png			normal	IDALYN	weChat	active		IDALYN	u_5bbf59f9e5e04_Bqdj0cCEQj	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1253	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bbf59aaced3d_qDjNHnNxx7.png			normal	天	weChat	active		天	u_5bbf59aaced3d_qDjNHnNxx7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1254	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bbf55a59b347_d9OeGneNoT.png			normal	Aliceeee	weChat	active		Aliceeee	u_5bbf55a59b347_d9OeGneNoT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1255	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bbf4e077cb40_m4DoaTNFUZ.png			normal	Sonya	weChat	active		Sonya	u_5bbf4e077cb40_m4DoaTNFUZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1256	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bbf43b91603d_nhawIbbIRb.png			normal	Jennifer	weChat	active		Jennifer	u_5bbf43b91603d_nhawIbbIRb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1257	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bbf3d7497de7_Rr69VH4Sa2.png			normal	ALEX	weChat	active		ALEX	u_5bbf3d7497de7_Rr69VH4Sa2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1258	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bbe200becdec_IX6IkxhAgz.png			normal	hc	weChat	active		hc	u_5bbe200becdec_IX6IkxhAgz	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1259	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bbdf11f9bb9f_WUHlcmY2k8.png			normal	窈窕淑婆	weChat	active		窈窕淑婆	u_5bbdf11f9bb9f_WUHlcmY2k8	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1260	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bbd6a7c48a91_qd3sUJuEaJ.png			normal	深蓝	weChat	active		深蓝	u_5bbd6a7c48a91_qd3sUJuEaJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1261	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bbd68547128f_5DxZdYMmDY.png			normal	简单	weChat	active		简单	u_5bbd68547128f_5DxZdYMmDY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1262	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bbcb329b6aca_zKxdAVcAXB.png			normal	陈军-日志易	weChat	active		陈军-日志易	u_5bbcb329b6aca_zKxdAVcAXB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1263	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bbb44f31dae7_D2AhKuSQUc.png			normal	杨志宏	weChat	active		杨志宏	u_5bbb44f31dae7_D2AhKuSQUc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1264	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bb877ddbe704_jsvy23dbrB.png			normal	Helium	weChat	active		Helium	u_5bb877ddbe704_jsvy23dbrB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1265	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bb59ecb91d5c_kgoFfETgks.png			normal	CZ	weChat	active		CZ	u_5bb59ecb91d5c_kgoFfETgks	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1266	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5baf1a3cc9ec6_IuqaTWaQNF.png			normal	云朵面包	weChat	active		云朵面包	u_5baf1a3cc9ec6_IuqaTWaQNF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1267	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bae3631ddd5d_mpfIoV5OMZ.png			normal	(๑╹∀╹๑)	weChat	active		(๑╹∀╹๑)	u_5bae3631ddd5d_mpfIoV5OMZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1268	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bae361fc5dd9_MROgxnyxDh.png			normal	王艺斌	weChat	active		王艺斌	u_5bae361fc5dd9_MROgxnyxDh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1269	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bae30379327e_Wr4KWz10H0.png			normal	秋的喁语	weChat	active		秋的喁语	u_5bae30379327e_Wr4KWz10H0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1270	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bae2c29e9549_wPHLQaaPch.png			normal	静默如初	weChat	active		静默如初	u_5bae2c29e9549_wPHLQaaPch	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1271	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5bac533906734_dhn0FSEKOk.png			normal	qlq	weChat	active		qlq	u_5bac533906734_dhn0FSEKOk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1272	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ba8bd8e45eca_G6zPrYLWF0.png			normal	Unidentified？	weChat	active		Unidentified？	u_5ba8bd8e45eca_G6zPrYLWF0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1273	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ba24b1d19806_Q34RpDQGGT.png			normal	丹&双????妈妈	weChat	active		丹&双????妈妈	u_5ba24b1d19806_Q34RpDQGGT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1274	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b9cc856a9475_i11dWI6a6V.png			normal	Leo	weChat	active		Leo	u_5b9cc856a9475_i11dWI6a6V	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1275	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b95e51d1a4a2_72SYXMI4JH.png			normal	紫七七	weChat	active		紫七七	u_5b95e51d1a4a2_72SYXMI4JH	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1276	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b9238d0bde0a_DHhdn87Mud.png			normal	是 卡 人 ！	weChat	active		是 卡 人 ！	u_5b9238d0bde0a_DHhdn87Mud	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1277	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b923238c547b_0RYf1TxtH1.png			normal	秋帆	weChat	active		秋帆	u_5b923238c547b_0RYf1TxtH1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1278	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b7ff576c4dd7_QSBuw2RoDJ.png			normal	Jennifer	weChat	active		Jennifer	u_5b7ff576c4dd7_QSBuw2RoDJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1279	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b7fdf01695a2_GucE696Buc.png			normal	号子	weChat	active		号子	u_5b7fdf01695a2_GucE696Buc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1280	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b662d7de8162_8UmtLZdHgc.png			normal	LXH	weChat	active		LXH	u_5b662d7de8162_8UmtLZdHgc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1281	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b602ee7e47a7_LONvwkFo6V.png			normal	ysy	weChat	active		ysy	u_5b602ee7e47a7_LONvwkFo6V	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1282	http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL9IiaW6fZGBXWefHABejSxY5mpWGWZ9w2arHicr3fKDqhojNPze4ESrhR065L9d6Xgo4BccACG6fJw/132			normal	QinChuan	weChat	active		QinChuan	u_5b430110a7b9c_97xz99C5tc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1283	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b3c74459589d_QHZ7y5OSHL.png			normal	秋	weChat	active		秋	u_5b3c74459589d_QHZ7y5OSHL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1284	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b3c6b569b6fa_GKzcaqhytJ.png			normal	青雁	weChat	active		青雁	u_5b3c6b569b6fa_GKzcaqhytJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1285	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b3c3982b1f61_wuIttFTsaI.png			normal	渔乐	weChat	active		渔乐	u_5b3c3982b1f61_wuIttFTsaI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1286	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b3c2d4f6c86b_tym8tvDUd7.png			normal	Viola'	weChat	active		Viola'	u_5b3c2d4f6c86b_tym8tvDUd7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1287	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b3c236473178_iyn7PlEdPT.png			normal	Yang Aijing	weChat	active		Yang Aijing	u_5b3c236473178_iyn7PlEdPT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1288	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b3b3b4e64fa4_nca1SgvsVm.png			normal	queen-wang	weChat	active		queen-wang	u_5b3b3b4e64fa4_nca1SgvsVm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1289	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b3a02ca8b8f9_X70EXDVpEh.png			normal	tian li	weChat	active		tian li	u_5b3a02ca8b8f9_X70EXDVpEh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1290	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b3a00ea0b631_oq6ClwVY1G.png			normal	ipaomo	weChat	active		ipaomo	u_5b3a00ea0b631_oq6ClwVY1G	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1291	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b39ff81dd1ad_BKMGYSwavz.png			normal	蔡天天	weChat	active		蔡天天	u_5b39ff81dd1ad_BKMGYSwavz	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1292	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b39e4767d7e9_VIpeRSNyX3.png			normal	hj	weChat	active		hj	u_5b39e4767d7e9_VIpeRSNyX3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1293	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b39e27e5c004_XGv73k8Z8X.png			normal	薇	weChat	active		薇	u_5b39e27e5c004_XGv73k8Z8X	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1294	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b389db0a19bc_qQiuVj0lPX.png			normal	静待花开	weChat	active		静待花开	u_5b389db0a19bc_qQiuVj0lPX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1295	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b388579a2699_ByhUq2V6MI.png			normal	AMBS越	weChat	active		AMBS越	u_5b388579a2699_ByhUq2V6MI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1296	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b3874fad3b36_RDfiQijVJ2.png			normal	风	weChat	active		风	u_5b3874fad3b36_RDfiQijVJ2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1297	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b3874dbc6a4f_PSGTKh04h4.png			normal	杨雅琳	weChat	active		杨雅琳	u_5b3874dbc6a4f_PSGTKh04h4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1298	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b3870e2a2b72_M6ZG6ZGMvY.png			normal	球球	weChat	active		球球	u_5b3870e2a2b72_M6ZG6ZGMvY	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1299	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b37527956f35_O8iCShxJhO.png			normal	王天元	weChat	active		王天元	u_5b37527956f35_O8iCShxJhO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1300	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b35d48ba9911_s5Vn3hxCqH.png			normal	Ah！Glee	weChat	active		Ah！Glee	u_5b35d48ba9911_s5Vn3hxCqH	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1301	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b35cb1162f99_ZNGu0jKCnT.png			normal	我是Katie@新氧	weChat	active		我是Katie@新氧	u_5b35cb1162f99_ZNGu0jKCnT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1302	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b35c1df7c082_4BWuVMAABf.png			normal	牵啊牵	weChat	active		牵啊牵	u_5b35c1df7c082_4BWuVMAABf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1303	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b35ba8a03bf0_d0X0cQjni7.png			normal	张亲发kinfa_z	weChat	active		张亲发kinfa_z	u_5b35ba8a03bf0_d0X0cQjni7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1304	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b35b95a7c915_Th44vKrAjn.png			normal	Qiao	weChat	active		Qiao	u_5b35b95a7c915_Th44vKrAjn	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1305	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b34883149817_Cc4mtx2b0o.png			normal	Daisy	weChat	active		Daisy	u_5b34883149817_Cc4mtx2b0o	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1306	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b343c323c769_9V0q5HxYmp.png			normal	Yuhua	weChat	active		Yuhua	u_5b343c323c769_9V0q5HxYmp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1307	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b34390fca857_yFU9Ci8giI.png			normal	Lily	weChat	active		Lily	u_5b34390fca857_yFU9Ci8giI	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1308	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b3438becadf3_k4WyVv5fNA.png			normal	千江月	weChat	active		千江月	u_5b3438becadf3_k4WyVv5fNA	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1309	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b34300811f18_t8IxKKk0UG.png			normal	wine	weChat	active		wine	u_5b34300811f18_t8IxKKk0UG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1310	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b2b442e31428_KDxueZ4jhs.png			normal	maggie	weChat	active		maggie	u_5b2b442e31428_KDxueZ4jhs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1311	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b24bbe1c327d_XCOArHJRiD.png			normal	可欣	weChat	active		可欣	u_5b24bbe1c327d_XCOArHJRiD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1312	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b239849458c3_rxcaIyzedn.png			normal	BILLI	weChat	active		BILLI	u_5b239849458c3_rxcaIyzedn	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1313	https://wechatavator-1252524126.cos.ap-shanghai.myqcloud.com/aaa/people_default-2.png			normal	balance	weChat	active		balance	u_5b20b056d9154_VB1eQiGxIV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1314	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b20b00ea0750_BzBKhh2vCT.png			normal	Épica????	weChat	active		Épica????	u_5b20b00ea0750_BzBKhh2vCT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1315	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b20ae758c859_ZTxNBUPWmM.png			normal	闽	weChat	active		闽	u_5b20ae758c859_ZTxNBUPWmM	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1316	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b207ac05a305_dViZQTOxLx.png			normal	！！！！！	weChat	active		！！！！！	u_5b207ac05a305_dViZQTOxLx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1317	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1fe3e58a1d0_cDdBaMbXOK.png			normal	努力！静待！	weChat	active		努力！静待！	u_5b1fe3e58a1d0_cDdBaMbXOK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1318	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1fd0d328dee_r8GA0QXan9.png			normal	美誉	weChat	active		美誉	u_5b1fd0d328dee_r8GA0QXan9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1319	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1fb89dda8c3_FBQv92ffFr.png			normal	小曹	weChat	active		小曹	u_5b1fb89dda8c3_FBQv92ffFr	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1320	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f94f7c3d0e_V2siNiFJIl.png			normal	昱文	weChat	active		昱文	u_5b1f94f7c3d0e_V2siNiFJIl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1321	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f835849569_wjlMN5GE5m.png			normal	蕊	weChat	active		蕊	u_5b1f835849569_wjlMN5GE5m	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1322	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f815fcbadb_8FluGba2gB.png			normal	姚美红	weChat	active		姚美红	u_5b1f815fcbadb_8FluGba2gB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1323	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f7ef86cfc1_ewDjlKxuG7.png			normal	????????????晨橙????????????	weChat	active		????????????晨橙????????????	u_5b1f7ef86cfc1_ewDjlKxuG7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1324	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f7c8d8df5b_vS5kCj7YjX.png			normal	坚持不懈	weChat	active		坚持不懈	u_5b1f7c8d8df5b_vS5kCj7YjX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1325	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f7c0d5fcad_dz1U4Gpg6r.png			normal	qqy	weChat	active		qqy	u_5b1f7c0d5fcad_dz1U4Gpg6r	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1326	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f7b64ae432_5b595nTnM8.png			normal	且歌且行	weChat	active		且歌且行	u_5b1f7b64ae432_5b595nTnM8	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1327	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f7b17c874f_yIaTDiWUS3.png			normal	紫月	weChat	active		紫月	u_5b1f7b17c874f_yIaTDiWUS3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1328	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f7ac27c9b9_UGPeBiiCdC.png			normal	Sharon Wu	weChat	active		Sharon Wu	u_5b1f7ac27c9b9_UGPeBiiCdC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1329	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f7a4ba15cd_7epTohcSas.png			normal	cathleenzh	weChat	active		cathleenzh	u_5b1f7a4ba15cd_7epTohcSas	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1330	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f799c14a1b_nX3SFuGViV.png			normal	玲	weChat	active		玲	u_5b1f799c14a1b_nX3SFuGViV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1331	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f780b6e72d_44Cys8ECuk.png			normal	Lcz0577	weChat	active		Lcz0577	u_5b1f780b6e72d_44Cys8ECuk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1332	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f77d131261_anx4zu4YpX.png			normal	瑞	weChat	active		瑞	u_5b1f77d131261_anx4zu4YpX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1333	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f763026f70_muWNfaSpFw.png			normal	nini	weChat	active		nini	u_5b1f763026f70_muWNfaSpFw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1334	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f75fe5621b_k3A6sQQRmC.png			normal	Shino	weChat	active		Shino	u_5b1f75fe5621b_k3A6sQQRmC	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1335	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f75fbb60b5_rXokdGlXty.png			normal	豌豆公主	weChat	active		豌豆公主	u_5b1f75fbb60b5_rXokdGlXty	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1336	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f75ceb680d_OuiKyRSbo3.png			normal	娜小妮子	weChat	active		娜小妮子	u_5b1f75ceb680d_OuiKyRSbo3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1337	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f75cd1da4c_WA9pvUfwQT.png			normal	hh	weChat	active		hh	u_5b1f75cd1da4c_WA9pvUfwQT	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1338	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1f5d852001c_U4Z9Cmj6lb.png			normal	卓	weChat	active		卓	u_5b1f5d852001c_U4Z9Cmj6lb	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1339	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1ecfcd1fa05_QjRDigzQXz.png			normal	yoyoaimama	weChat	active		yoyoaimama	u_5b1ecfcd1fa05_QjRDigzQXz	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1340	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e8f2539ea0_LSyHLUAZ2l.png			normal	涵鹛	weChat	active		涵鹛	u_5b1e8f2539ea0_LSyHLUAZ2l	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1341	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e8e28e6211_KCEZKv5k9d.png			normal	kelly	weChat	active		kelly	u_5b1e8e28e6211_KCEZKv5k9d	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1342	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e7b5eccb88_tNop1TmJMZ.png			normal	牙刷宝宝	weChat	active		牙刷宝宝	u_5b1e7b5eccb88_tNop1TmJMZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1343	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e6a097303a_TqVMfLuePQ.png			normal	dxCeline豆妈	weChat	active		dxCeline豆妈	u_5b1e6a097303a_TqVMfLuePQ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1344	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e62c692586_0RW9aUSR6C.png			normal	萌丼	weChat	active		萌丼	u_5b1e62c692586_0RW9aUSR6C	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1345	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e5e8602939_oewAieHbE7.png			normal	菠菜????	weChat	active		菠菜????	u_5b1e5e8602939_oewAieHbE7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1346	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e5d8baf537_TLYydOQxXX.png			normal	宸亦	weChat	active		宸亦	u_5b1e5d8baf537_TLYydOQxXX	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1347	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e5a5ba1a8d_8gD5KpRsFh.png			normal	liena	weChat	active		liena	u_5b1e5a5ba1a8d_8gD5KpRsFh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1348	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e59c76dbf7_DHuSm9U4tO.png			normal	王儷桐????心想事成	weChat	active		王儷桐????心想事成	u_5b1e59c76dbf7_DHuSm9U4tO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1349	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e58eaa1ec4_LVO7xxH4JS.png			normal	安安不静	weChat	active		安安不静	u_5b1e58eaa1ec4_LVO7xxH4JS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1350	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e57f2a3883_mGgzM6xX1w.png			normal	钟声	weChat	active		钟声	u_5b1e57f2a3883_mGgzM6xX1w	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1351	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e559278412_E719xNMak8.png			normal	王蓉????????????	weChat	active		王蓉????????????	u_5b1e559278412_E719xNMak8	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1352	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e53c594fcc_YfvKh7mKQj.png			normal	Shirley????????	weChat	active		Shirley????????	u_5b1e53c594fcc_YfvKh7mKQj	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1353	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e4c03ee24d_QZEvG0dstJ.png			normal	song	weChat	active		song	u_5b1e4c03ee24d_QZEvG0dstJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1354	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e46a7c0ad0_VtbLNGSNJt.png			normal	宝妮楼	weChat	active		宝妮楼	u_5b1e46a7c0ad0_VtbLNGSNJt	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1355	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e46755549a_F5ihukbKBk.png			normal	顾旻POPO	weChat	active		顾旻POPO	u_5b1e46755549a_F5ihukbKBk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1356	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1e43dd56864_CsFkCbYGte.png			normal	Linda Liu	weChat	active		Linda Liu	u_5b1e43dd56864_CsFkCbYGte	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1357	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1de01610619_95c0SJiett.png			normal	宝岛大春	weChat	active		宝岛大春	u_5b1de01610619_95c0SJiett	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1358	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1ce85636be9_RjPHzzrCkQ.png			normal	天天向上	weChat	active		天天向上	u_5b1ce85636be9_RjPHzzrCkQ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1359	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b19fb8a8259e_rZ3oNgLTZz.png			normal	Diana	weChat	active		Diana	u_5b19fb8a8259e_rZ3oNgLTZz	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1360	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b19f3b96b134_H7rpFzHXwW.png			normal	景慧 	weChat	active		景慧 	u_5b19f3b96b134_H7rpFzHXwW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1361	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b19d7773a90b_170z8t2oBW.png			normal	馨????????	weChat	active		馨????????	u_5b19d7773a90b_170z8t2oBW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1362	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b192fb7809d4_WmMyVrzs1Z.png			normal	芬达归来	weChat	active		芬达归来	u_5b192fb7809d4_WmMyVrzs1Z	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1363	https://wechatavator-1252524126.cos.ap-shanghai.myqcloud.com/aaa/people_default-2.png			normal	禾廖廖	weChat	active		禾廖廖	u_5b192946a91cb_LC84B72sji	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1364	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b19264ed3504_4CqU9RD1Og.png			normal	Caomei	weChat	active		Caomei	u_5b19264ed3504_4CqU9RD1Og	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1365	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b191fe069dc2_VqryEsf5eA.png			normal	Mei	weChat	active		Mei	u_5b191fe069dc2_VqryEsf5eA	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1366	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b19132f0566e_XRTyvs3AOO.png			normal	书叶儿	weChat	active		书叶儿	u_5b19132f0566e_XRTyvs3AOO	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1367	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b19038fed4b8_vpf4mwoLSa.png			normal	view	weChat	active		view	u_5b19038fed4b8_vpf4mwoLSa	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1368	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b19033ce28aa_lYRSaWwWFk.png			normal	katrina	weChat	active		katrina	u_5b19033ce28aa_lYRSaWwWFk	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1369	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b18fe20d4c0a_HeY9mDoFWS.png			normal	Meiqi	weChat	active		Meiqi	u_5b18fe20d4c0a_HeY9mDoFWS	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1370	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b18ce6cac93d_7ahG2lKNV3.png			normal	AWESOME	weChat	active		AWESOME	u_5b18ce6cac93d_7ahG2lKNV3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1371	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b188c53eee0b_LoxKsV3Zqx.png			normal	duoduo	weChat	active		duoduo	u_5b188c53eee0b_LoxKsV3Zqx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1372	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b188786cc4e5_fahnzMIJmU.png			normal	溪	weChat	active		溪	u_5b188786cc4e5_fahnzMIJmU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1373	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b18857eea4b8_Jj9F8AOl8x.png			normal	杨益妈妈	weChat	active		杨益妈妈	u_5b18857eea4b8_Jj9F8AOl8x	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1374	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b180083eb16b_aEX1Al7Ofu.png			normal	Xu	weChat	active		Xu	u_5b180083eb16b_aEX1Al7Ofu	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1375	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17f281f1e2e_vAjNSs2mhR.png			normal	ZHOUYUHONG	weChat	active		ZHOUYUHONG	u_5b17f281f1e2e_vAjNSs2mhR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1376	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17ef32c13ba_cITvwfMsD8.png			normal	史红宇（Alice）	weChat	active		史红宇（Alice）	u_5b17ef32c13ba_cITvwfMsD8	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1377	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17eb5592525_r5YDHeP3RL.png			normal	Stephanie LHZ	weChat	active		Stephanie LHZ	u_5b17eb5592525_r5YDHeP3RL	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1378	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17eb42b3f26_n6LGRIeU6s.png			normal	陈征	weChat	active		陈征	u_5b17eb42b3f26_n6LGRIeU6s	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1379	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17e9d45aae4_gifpNlZZM3.png			normal	姜映吟	weChat	active		姜映吟	u_5b17e9d45aae4_gifpNlZZM3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1380	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17e851f082d_Hb43itu9AD.png			normal	Rachel	weChat	active		Rachel	u_5b17e851f082d_Hb43itu9AD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1381	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17cf26846d2_IMDYI7uRtE.png			normal	好娃娃	weChat	active		好娃娃	u_5b17cf26846d2_IMDYI7uRtE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1382	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17b451558c7_vMRnxJ1wfx.png			normal	小彦子	weChat	active		小彦子	u_5b17b451558c7_vMRnxJ1wfx	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1383	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17b0dd46b96_1uTnggh3k3.png			normal	ShirleyShen	weChat	active		ShirleyShen	u_5b17b0dd46b96_1uTnggh3k3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1384	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17b0862e6b5_iuBEAMLvMJ.png			normal	张岚	weChat	active		张岚	u_5b17b0862e6b5_iuBEAMLvMJ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1385	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17b004c3e6e_3YajVVH3ex.png			normal	Rachael （笑妈）	weChat	active		Rachael （笑妈）	u_5b17b004c3e6e_3YajVVH3ex	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1386	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17ab69845c3_91ohrtcknK.png			normal	蓓蕾	weChat	active		蓓蕾	u_5b17ab69845c3_91ohrtcknK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1387	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17aaf89a2ce_ixqtbZpnUZ.png			normal	红雨	weChat	active		红雨	u_5b17aaf89a2ce_ixqtbZpnUZ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1388	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17aacc81725_GXvU7lGgCd.png			normal	DONGNING	weChat	active		DONGNING	u_5b17aacc81725_GXvU7lGgCd	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1389	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17a69230e9d_EeNH1FBu1w.png			normal	????家蕊	weChat	active		????家蕊	u_5b17a69230e9d_EeNH1FBu1w	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1390	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b176d5cdb632_G7ELXo5jSz.png			normal	阳阳	weChat	active		阳阳	u_5b176d5cdb632_G7ELXo5jSz	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1391	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b176d33e8099_QqItjIvbtE.png			normal	Miki	weChat	active		Miki	u_5b176d33e8099_QqItjIvbtE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1392	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1759535d720_VAxgrWQEBw.png			normal	jia	weChat	active		jia	u_5b1759535d720_VAxgrWQEBw	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1393	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17594d91798_ritb3STV3X.png			normal	刘莉洁	weChat	active		刘莉洁	u_5b17594d91798_ritb3STV3X	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1394	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1757e1c181e_9N0tRR0yVG.png			normal	Grace	weChat	active		Grace	u_5b1757e1c181e_9N0tRR0yVG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1395	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1757e0d6add_kdhX68sXPs.png			normal	开心的申申	weChat	active		开心的申申	u_5b1757e0d6add_kdhX68sXPs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1396	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1756d4a95b6_JlsOl6OXZi.png			normal	RICKIE	weChat	active		RICKIE	u_5b1756d4a95b6_JlsOl6OXZi	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1397	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b17569e2b0ab_VioSzJd3z4.png			normal	Carol Song	weChat	active		Carol Song	u_5b17569e2b0ab_VioSzJd3z4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1398	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1755fdd51c5_oqhvPXp1vc.png			normal	7	weChat	active		7	u_5b1755fdd51c5_oqhvPXp1vc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1399	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1755cf86e1e_o3lvwZ3pzh.png			normal	Celine	weChat	active		Celine	u_5b1755cf86e1e_o3lvwZ3pzh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1400	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1754d53c04a_EjfKzjQ3cv.png			normal	美妈	weChat	active		美妈	u_5b1754d53c04a_EjfKzjQ3cv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1401	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b175498bb620_G19chQRjJW.png			normal	萌萌	weChat	active		萌萌	u_5b175498bb620_G19chQRjJW	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1402	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b14f9a781c27_SlZAjTXdbo.png			normal	oui	weChat	active		oui	u_5b14f9a781c27_SlZAjTXdbo	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1403	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b14f80a7c9e8_cEwnG7TcM7.png			normal	张颖	weChat	active		张颖	u_5b14f80a7c9e8_cEwnG7TcM7	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1404	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b1115e0cd3b0_oBjg5PLCWo.png			normal	婠婠	weChat	active		婠婠	u_5b1115e0cd3b0_oBjg5PLCWo	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1405	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b10f61fc1ef3_HXy42zg97M.png			normal	数学杨老师	weChat	active		数学杨老师	u_5b10f61fc1ef3_HXy42zg97M	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1406	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b10f522992be_7jqrnCwOX0.png			normal	小泽麻麻	weChat	active		小泽麻麻	u_5b10f522992be_7jqrnCwOX0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1407	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0fcfe7bd50d_NRFSGTjLrc.png			normal	L Zhang	weChat	active		L Zhang	u_5b0fcfe7bd50d_NRFSGTjLrc	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1408	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0fc15bd88c9_DvECoaSl9A.png			normal	Cheryl	weChat	active		Cheryl	u_5b0fc15bd88c9_DvECoaSl9A	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1409	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0e9ea7c34b6_5Gj0RuvPNq.png			normal	Miss Liang	weChat	active		Miss Liang	u_5b0e9ea7c34b6_5Gj0RuvPNq	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1410	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0e750294407_mI9AXmDr41.png			normal	『    』	weChat	active		『    』	u_5b0e750294407_mI9AXmDr41	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1411	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0d2da37f03d_MM3HYY8TMi.png			normal	小柳成荫	weChat	active		小柳成荫	u_5b0d2da37f03d_MM3HYY8TMi	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1412	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0c5276575db_2qsAsPkzT3.png			normal	正清（男10岁）妈吴燕	weChat	active		正清（男10岁）妈吴燕	u_5b0c5276575db_2qsAsPkzT3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1413	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0acebcd7baa_RJvugfyF6A.png			normal	Céline	weChat	active		Céline	u_5b0acebcd7baa_RJvugfyF6A	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1414	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b093af4534a4_CmvJYZhes0.png			normal	Emma	weChat	active		Emma	u_5b093af4534a4_CmvJYZhes0	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1415	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0922635ca95_Ttf9Ge05zV.png			normal	????	weChat	active		????	u_5b0922635ca95_Ttf9Ge05zV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1416	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b092026b8b82_7CuaGRlKOR.png			normal	吴可航	weChat	active		吴可航	u_5b092026b8b82_7CuaGRlKOR	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1417	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b091e14d6602_vZC3pO4eZj.png			normal	ZY	weChat	active		ZY	u_5b091e14d6602_vZC3pO4eZj	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1418	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b091cbcf0e98_qb3IPUIgdA.png			normal	喬治豬豬豬	weChat	active		喬治豬豬豬	u_5b091cbcf0e98_qb3IPUIgdA	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1419	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b08ff131680f_1qQWHNwGJh.png			normal	浣熊老师	weChat	active		浣熊老师	u_5b08ff131680f_1qQWHNwGJh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1420	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b079129917ed_kwCeRBMfn3.png			normal	彪悍的小丫????	weChat	active		彪悍的小丫????	u_5b079129917ed_kwCeRBMfn3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1421	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b075f37f3824_LSJZadrYZ1.png			normal	Sue	weChat	active		Sue	u_5b075f37f3824_LSJZadrYZ1	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1422	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b073f3848fff_MVjR3El2J5.png			normal	京非昔比	weChat	active		京非昔比	u_5b073f3848fff_MVjR3El2J5	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1423	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06e5e6d0a57_y11thnEBua.png			normal	QQ乔迁	weChat	active		QQ乔迁	u_5b06e5e6d0a57_y11thnEBua	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1424	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06e1f94a6e2_2qcRfMSqIQ.png			normal	卡布奇诺	weChat	active		卡布奇诺	u_5b06e1f94a6e2_2qcRfMSqIQ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1425	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06d26cbec21_n0ERXTQIxQ.png			normal	乔托	weChat	active		乔托	u_5b06d26cbec21_n0ERXTQIxQ	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1426	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06c3a47d537_U5ZrmwM7Dv.png			normal	Christin Yin-妞妈	weChat	active		Christin Yin-妞妈	u_5b06c3a47d537_U5ZrmwM7Dv	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1427	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06c0ee6439e_aZz64YnYsN.png			normal	张凌	weChat	active		张凌	u_5b06c0ee6439e_aZz64YnYsN	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1428	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06c0cb440cd_EMD2Y7Eoz6.png			normal	夏	weChat	active		夏	u_5b06c0cb440cd_EMD2Y7Eoz6	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1429	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06be9c59aa6_APLkK6CTcm.png			normal	陆海	weChat	active		陆海	u_5b06be9c59aa6_APLkK6CTcm	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1430	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06bd497dcd2_JlAJsdEVYs.png			normal	胡同????	weChat	active		胡同????	u_5b06bd497dcd2_JlAJsdEVYs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1431	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06aafc54fe2_vcKQqTFFba.png			normal	Jessica	weChat	active		Jessica	u_5b06aafc54fe2_vcKQqTFFba	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1432	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06a88c84746_2Y5X7VkiWo.png			normal	fishinwater	weChat	active		fishinwater	u_5b06a88c84746_2Y5X7VkiWo	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1433	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06a66defc6d_JzsHedL9BU.png			normal	amyanan	weChat	active		amyanan	u_5b06a66defc6d_JzsHedL9BU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1434	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06a0d7096fd_e0xuaRK8lp.png			normal	Lhx	weChat	active		Lhx	u_5b06a0d7096fd_e0xuaRK8lp	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1435	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06a0b49f98a_uGjW9CU1Yt.png			normal	sheila	weChat	active		sheila	u_5b06a0b49f98a_uGjW9CU1Yt	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1436	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b069f4a7dc91_su6jlbTKQF.png			normal	晨曦	weChat	active		晨曦	u_5b069f4a7dc91_su6jlbTKQF	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1437	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b069f17923a7_T4KbtQtSDP.png			normal	????lynn????	weChat	active		????lynn????	u_5b069f17923a7_T4KbtQtSDP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1438	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b069d876fcf3_a5wSWcYy9D.png			normal	Gabie	weChat	active		Gabie	u_5b069d876fcf3_a5wSWcYy9D	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1439	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b069af4512e0_M3xne6fxYt.png			normal	猪妈	weChat	active		猪妈	u_5b069af4512e0_M3xne6fxYt	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1440	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0698c40b508_ELhAO6MaUV.png			normal	LDD	weChat	active		LDD	u_5b0698c40b508_ELhAO6MaUV	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1441	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0696c0a97b0_2vkPf0FNyU.png			normal	徐春华	weChat	active		徐春华	u_5b0696c0a97b0_2vkPf0FNyU	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1442	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b069300d203c_DmQNY2EwE2.png			normal	闲云	weChat	active		闲云	u_5b069300d203c_DmQNY2EwE2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1443	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0692f802e78_5hm9aKBAoy.png			normal	喜宝宝	weChat	active		喜宝宝	u_5b0692f802e78_5hm9aKBAoy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1444	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b068a6a0a6e5_os5ikTgfRd.png			normal	rh_guo	weChat	active		rh_guo	u_5b068a6a0a6e5_os5ikTgfRd	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1445	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b068a22051f0_NGuEXuttJy.png			normal	漆晨曦	weChat	active		漆晨曦	u_5b068a22051f0_NGuEXuttJy	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1446	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0688f2eec9c_qrOPwzdCNE.png			normal	ZY	weChat	active		ZY	u_5b0688f2eec9c_qrOPwzdCNE	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1447	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06889a35169_QMcB7kuUJH.png			normal	YQT	weChat	active		YQT	u_5b06889a35169_QMcB7kuUJH	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1448	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0688825bbc3_BjToka30Pg.png			normal	隐形人	weChat	active		隐形人	u_5b0688825bbc3_BjToka30Pg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1449	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b068842587b6_x52vqH16gB.png			normal	段	weChat	active		段	u_5b068842587b6_x52vqH16gB	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1450	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0685b0395cd_LHxzSEw1Iq.png			normal	Amanda	weChat	active		Amanda	u_5b0685b0395cd_LHxzSEw1Iq	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1451	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06823378cf7_SM3A7zBHXh.png			normal	T&M	weChat	active		T&M	u_5b06823378cf7_SM3A7zBHXh	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1452	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06822bb35fd_QT3lGcCS4u.png			normal	gu	weChat	active		gu	u_5b06822bb35fd_QT3lGcCS4u	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1453	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0680887ebca_MtNQwzSUpf.png			normal	Yolanda	weChat	active		Yolanda	u_5b0680887ebca_MtNQwzSUpf	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1454	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b06807acb97e_B17HbO6zXK.png			normal	lisa	weChat	active		lisa	u_5b06807acb97e_B17HbO6zXK	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1455	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b067f30e431f_2D5gqwUnws.png			normal	????????	weChat	active		????????	u_5b067f30e431f_2D5gqwUnws	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1456	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b067f02e6508_aJIVLX1aAs.png			normal	蝴蝶	weChat	active		蝴蝶	u_5b067f02e6508_aJIVLX1aAs	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1457	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b067b7f53d01_e5qohOOph2.png			normal	小宝	weChat	active		小宝	u_5b067b7f53d01_e5qohOOph2	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1458	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b067ad59cfc6_GqrDh9Ocys.png			normal	幽蓝	weChat	active		幽蓝	u_5b067ad59cfc6_GqrDh9Ocys	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1459	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b067a3defd76_gl39vfXMh4.png			normal	王艳	weChat	active		王艳	u_5b067a3defd76_gl39vfXMh4	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1460	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b067a22ec8ba_f95VscJx6a.png			normal	牙牙儿✨	weChat	active		牙牙儿✨	u_5b067a22ec8ba_f95VscJx6a	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1461	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b067a219f71d_QJWXofKt5a.png			normal	玉兔阁主	weChat	active		玉兔阁主	u_5b067a219f71d_QJWXofKt5a	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1462	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b067a01bf0b4_LUvKbyILp9.png			normal	kkmm	weChat	active		kkmm	u_5b067a01bf0b4_LUvKbyILp9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1463	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5b0678c66f739_PIVxGayRLl.png			normal	铖妈-Lisa	weChat	active		铖妈-Lisa	u_5b0678c66f739_PIVxGayRLl	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1464	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5aea82a33093d_Irn8z5DJPD.png			normal	CoCo	weChat	active		CoCo	u_5aea82a33093d_Irn8z5DJPD	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1465	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5aea7d51861c4_G5XMXJcznG.png			normal	汪酱	weChat	active		汪酱	u_5aea7d51861c4_G5XMXJcznG	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1466	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5aea7c044a7f6_n3sw7lcKCg.png			normal	罗新	weChat	active		罗新	u_5aea7c044a7f6_n3sw7lcKCg	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1467	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ae96abca8be1_4ebqfPF4y9.png			normal	萨尔瓦托雷	weChat	active		萨尔瓦托雷	u_5ae96abca8be1_4ebqfPF4y9	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1468	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ae96a249e18e_nq3BKFUU29.png			normal	小石	weChat	active		小石	u_5ae96a249e18e_nq3BKFUU29	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
1469	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_5ae925f43309d_SmVLlQlTkP.png			normal	杨柳依依 依依东望	weChat	active		杨柳依依 依依东望	u_5ae925f43309d_SmVLlQlTkP	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
50	http://wechatavator-1252524126.file.myqcloud.com/appzlexVn1H3846/image/compress/u_6052048a15eab_wUU2J3dAWj.png	male		normal	Mera	weChat		18060208566	Mera	u_6052048a15eab_wUU2J3dAWj	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000077040000000078
\.


--
-- Data for Name: customer_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_activity (id, content, current_step, history, status, submitter, "timestamp", customer_id) FROM stdin;
2	yehruei	3	\\xaced0005737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a657870000000047704000000047372002f636f6d2e6578616d706c652e64656d6f2e637573746f6d65722e7574696c6974792e41637469766974795374657073978cdc268d107dbb02000449000269644c000b6465736372697074696f6e7400124c6a6176612f6c616e672f537472696e673b4c00086564697454696d6571007e00034c000a6c61737445646974656471007e00037870000000007400057465737431740013323032312d30382d33312031303a35343a3339740006e58fb6e994907371007e0002000000007400057465737432740013323032312d30382d33312031303a35343a3430740006e58fb6e994907371007e0002000000007400057465737433740013323032312d30382d33312031303a35343a3430740006e58fb6e994907371007e0002000000007400057465737434740013323032312d30382d33312031303a35343a3431740006e58fb6e9949078	closed	叶锐	2021-08-31 10:54:41	49
\.


--
-- Data for Name: customer_connection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_connection (id, channel_name, connection_type, date, connect_by_id, self_id) FROM stdin;
7	厦门莱普顿学校	channel	1630339200000	\N	51
\.


--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.event (id, by_week_day, color, dt_start, duration, event_name, event_student, ex_date, freq, teacher, until) FROM stdin;
972	fr	rgba(0, 206, 209, 1)	20210806T160000	01:30:00	数学 	睿涵		weekly	小鸥	20210806T235959
974	fr	rgba(45, 179, 45, 1)	20210820T160000	01:00:00	数学 	菲菲		weekly	小鸥	20210820T235959
15	we	rgba(116, 11, 197, 0.46)	20210602T161500	00:45:00	 	Mandy	20210623T161500	weekly	龙猫	20210623T235959
24	fr	rgba(144, 240, 144, 0.5)	20210604T182000	01:00:00	化学	Emily	20210611T182000	weekly	龙猫	20210611T235959
975	tu	rgba(45, 179, 45, 1)	20210810T160000	01:00:00	数学 	菲菲		weekly	小鸥	20210810T235959
998	fr	rgba(0, 12, 250, 1)	20210813T171500	01:00:00	写作 	刘行		weekly	牧牧	20210813T235959
34	mo tu we th fr	rgba(250, 212, 0, 1)	20210624T141500	00:45:00	阅读	Lucy	20210709T141500 20210721T141500 20210716T141500 20210705T141500	weekly	龙猫	20210721T235959
28	sa	rgba(0, 55, 255, 1)	20210605T164000	01:00:00	雅思口语	李获		weekly	龙猫	20210612T235959
581	fr	rgba(237, 118, 12, 1)	20210723T150000	01:00:00	语法 	李拓		weekly	牧牧	20210723T235959
595	tu	rgba(59, 72, 167, 1)	20210727T153000	01:00:00	语法 	诗雅		weekly	小鹿	20210727T235959
608	th tu we	rgba(0, 89, 255, 1)	20210817T103000	01:30:00	 数学	刘行		weekly	小鸥	20210826T235959
9	tu		20210601T094000	02:00:00	词汇	Rey		weekly	龙猫	20210601T235959
42	th	rgba(199, 21, 133, 1)	20210603T101500	01:00:00	科学	泽霖		weekly	多比	20210603T235959
10	tu	rgba(250, 212, 0, 1)	20210601T160000	00:45:00	阅读 	Lucy	20210622T160000	weekly	龙猫	20210622T235959
22	fr	rgba(199, 21, 133, 0.46)	20210604T163000	00:45:00	 阅读	Mandy		weekly	龙猫	20210625T235959
14	we	rgba(31, 147, 255, 0.73)	20210602T152000	01:00:00	读写课	Michael		weekly	龙猫	20210602T235959
18	th	rgba(31, 147, 255, 0.73)	20210603T110000	01:00:00	读写课	Michael		weekly	龙猫	20210603T235959
20	fr	rgba(31, 147, 255, 0.73)	20210604T104000	01:00:00	读写课	Michael		weekly	龙猫	20210604T235959
23	fr	rgba(250, 212, 0, 1)	20210604T171500	01:00:00	阅读	Lucy		weekly	龙猫	20210611T235959
21	fr	rgba(255, 140, 0, 1)	20210604T153000	01:00:00	口语 	诗雅	20210611T153000 20210618T153000	weekly	龙猫	20210618T235959
12	tu	rgba(199, 21, 133, 0.46)	20210601T183000	00:45:00	 阅读	Mandy		weekly	龙猫	20210622T235959
63	th	rgba(144, 240, 144, 0.5)	20210429T170000	01:00:00	语法	菲菲		weekly	小铁	20210603T235959
35	mo tu we th fr	rgba(250, 212, 0, 1)	20210624T151500	00:45:00	阅读	Lucy	20210709T151500 20210721T151500 20210716T151500 20210705T151500	weekly	龙猫	20210721T235959
30	su	rgba(144, 240, 144, 0.5)	20210606T103000	01:00:00	化学	Tico		weekly	龙猫	20210613T235959
46	sa	rgba(153, 0, 255, 0.42)	20210605T153000	01:30:00	口语 	孺亦	20210612T153000 20210626T153000 20210619T153000	weekly	多比	20210626T235959
56	sa	rgba(255, 69, 0, 1)	20210605T090000	01:00:00	语法	启铭		weekly	小奈	20210605T235959
57	sa	rgba(144, 240, 144, 0.5)	20210605T101500	01:30:00	雅思阅读	李获	20210605T101500	weekly	小奈	20210612T235959
58	sa	rgba(199, 21, 133, 0.46)	20210605T140000	01:30:00	雅思听力	李获		weekly	小奈	20210612T235959
59	su	rgba(31, 147, 255, 0.73)	20210606T140000	01:30:00	词汇	心婷		weekly	小奈	20210627T235959
43	fr	rgba(30, 144, 255, 1)	20210601T170000	01:00:00	线下词汇课 	Nova	20210430T170000 20210604T170000	weekly	多比	20210701T235959
62	we	rgba(31, 147, 255, 0.73)	20210428T181500	01:00:00	语法	Queenie	20210505T181500	weekly	小铁	20210526T235959
40	tu th	rgba(144, 240, 144, 0.5)	20210601T190000	01:00:00	高阶科学班课	 	20210617T190000	weekly	多比	20210617T235959
39	tu	rgba(31, 147, 255, 0.73)	20210601T094000	01:00:00	词汇 	宜林	20210622T094000	weekly	多比	20210622T235959
61	tu we	rgba(199, 21, 133, 0.46)	20210504T193000	01:00:00	igcse物理 	Tico	20210602T193000 20210616T193000 20210622T193000 20210630T193000	weekly	小铁	20210630T235959
31	su	rgba(0, 186, 189, 1)	20210606T150000	01:30:00	外教数学 	松涛	20210613T150000	weekly	龙猫	20210627T235959
33	we fr	rgba(31, 147, 255, 0.73)	20210609T103000	01:00:00	读写课 	Michael	20210609T104000 20210611T104000 20210616T104000 20210618T104000 20210616T103000 20210618T103000 20210609T103000 20210611T103000	weekly	龙猫	20210625T235959
11	tu	rgba(255, 120, 0, 1)	20210601T170000	01:00:00	读写课 	Nova	20210622T170000	weekly	龙猫	20210622T235959
29	su	rgba(199, 21, 133, 0.46)	20210530T090000	01:00:00	阅读 	Kevin		weekly	龙猫	20210627T235959
17	we	rgba(0, 206, 209, 1)	20210602T190000	01:00:00	阅读 	Timmy	20210623T190000	weekly	龙猫	20210623T235959
19	th	rgba(250, 212, 0, 1)	20210603T161500	01:15:00	阅读 	Lucy		weekly	龙猫	20210617T235959
27	sa	rgba(0, 255, 204, 1)	20210605T140000	01:00:00	化学 	刘行	20210619T140000	weekly	龙猫	20210619T235959
25	sa	rgba(197, 144, 238, 1)	20210605T090000	01:00:00	化学 	鸿润		weekly	龙猫	20210626T235959
946	we	rgba(132, 112, 0, 1)	20210825T103000	01:30:00	数学 	Tony		weekly	Summer	20210825T235959
976	th	rgba(45, 179, 45, 1)	20210805T170000	01:00:00	数学 	菲菲		weekly	小鸥	20210805T235959
999	mo	rgba(69, 106, 174, 1)	20210809T170000	01:00:00	物理 	刘行		weekly	小鸥	20210809T235959
97	sa	rgba(0, 206, 209, 1)	20210605T200000	01:30:00	数学 	睿涵		weekly	小鸥	20210612T235959
72	su	rgba(199, 21, 133, 0.46)	20210606T093000	01:00:00	igcse物理 	Tico		weekly	小铁	20210606T235959
528	fr	rgba(199, 21, 21, 0.46)	20210716T140000	01:00:00	 数学	Cady		weekly	小鸥	20210716T235959
70	sa	rgba(239, 157, 109, 1)	20210605T140000	01:00:00	数学 	琦岚	20210626T140000 20210717T140000	weekly	小铁	20210724T235959
94	su	rgba(199, 21, 133, 0.46)	20210606T090000	01:00:00	语法	Wendy	20210613T090000	weekly	牧牧	20210613T235959
79	su mo tu we th fr	rgba(255, 69, 0, 0.68)	20210628T111500	01:00:00	托福口语 	Joy	20210704T111500	weekly	小铁	20210712T235959
69	sa	rgba(56, 0, 209, 0.76)	20210605T110000	01:00:00	物理 	鸿润	20210703T110000	weekly	小铁	20210703T235959
89	fr	rgba(183, 0, 250, 0.5)	20210611T210000	01:00:00	托福写作	桃子		weekly	小鹿	20210618T235959
80	mo fr we	rgba(71, 47, 234, 1)	20210705T093000	01:30:00	数学 	Tico	20210721T093000 20210705T093000	weekly	小铁	20210730T235959
91	we	rgba(31, 147, 255, 0.73)	20210602T200000	01:00:00	线上高阶写作班课	 		weekly	牧牧	20210630T235959
569	tu th	rgba(174, 133, 228, 1)	20210729T130000	01:00:00	IB经济 	Molly	20210810T130000	weekly	牧牧	20210812T235959
96	mo tu we th	rgba(0, 206, 209, 1)	20210531T104000	01:30:00	数学 	睿涵		weekly	小鸥	20210603T235959
95	su	rgba(255, 69, 0, 0.46)	20210606T101500	01:30:00	雅思写作	李获		weekly	牧牧	20210613T235959
103	sa	rgba(199, 21, 133, 0.46)	20210612T150000	01:00:00	igcse物理 	Tico		weekly	小铁	20210612T235959
105	fr we tu	rgba(77, 0, 209, 0.36)	20210609T140000	01:30:00	物理 	Ric		weekly	小铁	20210616T235959
104	fr mo tu we	rgba(77, 0, 209, 0.36)	20210618T093000	01:30:00	物理 	Ric	20210621T093000	weekly	小铁	20210623T235959
554	su sa	rgba(174, 133, 228, 1)	20210724T100000	01:00:00	IB经济 	Molly	20210725T100000	weekly	牧牧	20210725T235959
68	sa	rgba(0, 206, 209, 1)	20210508T100000	01:00:00	阅读语法	Edward	20210508T100000	weekly	小铁	20210612T235959
81	tu th	rgba(199, 21, 133, 0.46)	20210601T190000	01:00:00	语法	心婷	20210601T190000 20210617T190000 20210622T190000	weekly	小鹿	20210624T235959
944	sa	rgba(122, 148, 225, 1)	20210821T150000	01:00:00	托福听力 	宜林		weekly	龙猫	20210821T235959
570	sa	rgba(174, 133, 228, 1)	20210731T130000	01:00:00	IB经济 	Molly		weekly	牧牧	20210731T235959
107	we	rgba(31, 147, 255, 0.73)	20210602T181500	01:00:00	语法	Queenie		weekly	小铁	20210616T235959
108	th	rgba(12, 228, 12, 0.5)	20210610T170000	01:00:00	语法	菲菲	20210701T170000 20210715T170000 20210722T170000 20210805T170000 20210624T170000 20210812T170000 20210819T170000 20210826T170000	weekly	小铁	20210826T235959
98	fr we	rgba(31, 147, 255, 0.73)	20210604T170000	01:00:00	语法	Queenie	20210609T170000 20210616T170000 20210611T170000 20210623T170000 20210702T170000 20210721T170000 20210723T170000 20210730T170000 20210804T170000 20210811T170000 20210813T170000	weekly	小铁	20210813T235959
117	we th	rgba(250, 212, 0, 1)	20210526T204000	01:00:00	生物 	Edmund		weekly	小铁	20210527T235959
119	su	rgba(250, 212, 0, 1)	20210613T110000	01:00:00	生物 	Edmund		weekly	小铁	20210613T235959
75	su	rgba(0, 206, 209, 1)	20210606T153000	01:30:00	数学	纬濠	20210613T153000 20210627T153000 20210620T153000	weekly	小铁	20210627T235959
84	sa	rgba(31, 147, 255, 0.73)	20210605T103000	01:30:00	阅读	纬濠	20210612T103000 20210619T103000 20210626T103000	weekly	小鹿	20210626T235959
86	su	rgba(0, 186, 189, 1)	20210606T103000	01:30:00	写作	松涛	20210613T103000	weekly	小鹿	20210627T235959
83	fr	rgba(19, 220, 19, 0.5)	20210604T200000	01:00:00	刷题 	Timmy	20210618T200000 20210625T200000	weekly	小鹿	20210625T235959
85	sa	rgba(255, 69, 0, 1)	20210605T133000	01:30:00	写作	孺亦	20210612T133000 20210619T133000 20210626T133000	weekly	小鹿	20210626T235959
99	sa	rgba(255, 69, 0, 0.68)	20210605T150000	01:00:00	生物 	Emily		weekly	小铁	20210605T235959
71	sa	rgba(250, 212, 0, 1)	20210508T160000	01:00:00	生物 	Edmund	20210508T160000 20210605T160000	weekly	小铁	20210605T235959
106	fr	rgba(31, 147, 255, 0.73)	20210507T170000	01:00:00	语法	Queenie	20210514T170000	weekly	小铁	20210528T235959
947	tu	rgba(122, 148, 225, 1)	20210824T130000	01:00:00	科学	Lulu		weekly	多比	20210824T235959
73	su	rgba(254, 8, 37, 0.5)	20210606T103000	01:30:00	数学 	慧卿	20210613T103000 20210627T103000 20210704T103000	weekly	小铁	20210704T235959
124	su	rgba(0, 82, 149, 1)	20210509T140000	01:00:00	英文	欣睿	20210613T140000 20210509T140000	weekly	小铁	20210627T235959
977	th	rgba(45, 179, 45, 1)	20210812T160000	01:00:00	数学 	菲菲		weekly	小鸥	20210812T235959
543	sa	rgba(239, 157, 109, 1)	20210717T110000	01:00:00	数学 	琦岚		weekly	小铁	20210717T235959
127	mo fr we	rgba(111, 180, 178, 1)	20210705T140000	01:30:00	物理 	Tico		weekly	小铁	20210730T235959
239	mo th	rgba(254, 180, 43, 1)	20210621T160000	01:00:00	数学	Caesar	20210705T160000 20210708T160000 20210726T160000 20210729T160000 20210802T160000 20210805T160000 20210812T160000 20210809T160000	weekly	小鸥	20210812T235959
1000	mo	rgba(13, 155, 157, 1)	20210816T181500	01:00:00	 数学	Simon		weekly	小鸥	20210816T235959
156	su	rgba(254, 5, 134, 0.75)	20210613T150500	01:30:00	化学	瑞娜		weekly	龙猫	20210613T235959
132	sa	rgba(255, 120, 0, 0.42)	20210508T140000	01:30:00	英语 	粲然	20210529T140000 20210626T140000 20210619T140000	weekly	多比	20210626T235959
1010	sa	rgba(27, 217, 220, 1)	20210814T160000	01:00:00	文学 	Michael		weekly	Summer	20210814T235959
136	we fr	rgba(205, 28, 28, 1)	20210623T153000	01:30:00	项目	Ashley		weekly	多比	20210625T235959
137	th	rgba(205, 28, 28, 1)	20210624T153000	01:00:00	项目 	Ashley		weekly	多比	20210624T235959
138	mo we	rgba(30, 144, 255, 1)	20210705T144500	01:00:00	词汇	Nova		weekly	多比	20210728T235959
142	sa	rgba(59, 149, 237, 1)	20210619T090000	01:00:00	语法 	启铭	20210626T090000	weekly	小鹿	20210626T235959
175	fr	rgba(199, 21, 133, 0.46)	20210618T160000	01:00:00	语法 	Wendy	20210702T160000 20210709T160000 20210716T160000 20210723T160000 20210730T160000	weekly	牧牧	20210730T235959
555	su	rgba(101, 99, 8, 1)	20210718T110000	01:00:00	助教课 	Tico		weekly	多比	20210718T235959
152	mo	rgba(144, 238, 144, 1)	20210628T130000	01:30:00	 	慧卿		weekly	小鹿	20210628T235959
143	sa	rgba(199, 21, 133, 0.46)	20210619T110000	01:30:00	语法 	心婷		weekly	小鹿	20210619T235959
148	th	rgba(40, 173, 255, 1)	20210624T094500	01:00:00	阅读	诗雅		weekly	小鹿	20210624T235959
150	sa	rgba(144, 0, 255, 1)	20210626T090000	01:00:00	雅思阅读 	李获		weekly	小鹿	20210626T235959
87	su	rgba(250, 212, 0, 1)	20210606T133000	01:30:00	英语	慧卿	20210613T133000 20210627T133000 20210704T133000	weekly	小鹿	20210704T235959
582	tu	rgba(237, 118, 12, 1)	20210727T143000	01:00:00	语法 	李拓		weekly	牧牧	20210727T235959
541	mo fr	rgba(13, 155, 157, 1)	20210719T170000	01:00:00	 数学	Simon	20210802T170000 20210806T170000 20210809T170000 20210813T170000 20210820T170000 20210816T170000 20210726T170000 20210730T170000	weekly	小鸥	20210820T235959
153	mo	rgba(144, 0, 255, 1)	20210712T093000	01:00:00	雅思阅读 	李获		weekly	小鹿	20210712T235959
154	tu th	rgba(144, 0, 255, 1)	20210713T104500	01:00:00	雅思阅读 	李获		weekly	小鹿	20210715T235959
163	th	rgba(255, 140, 0, 1)	20210624T110000	01:00:00	口语 	诗雅		weekly	龙猫	20210624T235959
583	th	rgba(237, 118, 12, 1)	20210729T143000	01:00:00	语法 	李拓		weekly	牧牧	20210729T235959
160	sa	rgba(255, 69, 0, 1)	20210605T100500	01:00:00	词汇 	启铭	20210612T100500 20210626T100500	weekly	龙猫	20210626T235959
157	we fr mo	rgba(31, 147, 255, 0.73)	20210616T100000	01:00:00	读写课 	Michael		weekly	龙猫	20210621T235959
596	tu	rgba(59, 72, 167, 1)	20210727T140000	01:00:00	词汇 	诗雅		weekly	Summer	20210727T235959
609	mo fr	rgba(0, 89, 255, 1)	20210816T140000	01:30:00	 数学	刘行		weekly	小鸥	20210827T235959
162	tu th	rgba(255, 0, 94, 0.93)	20210706T110000	01:00:00	数学 	冠宇		weekly	龙猫	20210713T235959
574	th	rgba(254, 180, 43, 1)	20210819T161500	01:00:00	数学 	Caesar		weekly	小鸥	20210826T235959
529	tu th	rgba(194, 41, 41, 1)	20210720T083000	01:00:00	小学英语 	茗捷&诗淇	20210720T083000 20210729T083000	weekly	小鹿	20210729T235959
166	mo	rgba(0, 55, 255, 1)	20210712T104500	01:00:00	雅思口语	李获		weekly	龙猫	20210712T235959
149	sa su	rgba(144, 0, 255, 1)	20210626T093000	01:00:00	雅思阅读 	李获	20210626T093000 20210711T093000	weekly	小鹿	20210711T235959
171	sa	rgba(0, 55, 255, 1)	20210703T140000	01:00:00	雅思口语	李获		weekly	龙猫	20210710T235959
155	sa	rgba(108, 108, 108, 1)	20210605T111000	01:00:00	 	Bryant	20210703T111000	weekly	龙猫	20210703T235959
173	tu th	rgba(40, 238, 40, 0.5)	20210706T093000	01:30:00	化学 	Tico		weekly	龙猫	20210729T235959
147	tu th	rgba(205, 179, 32, 1)	20210629T093000	01:00:00	英语 	冠宇	20210701T093000 20210708T093000	weekly	小鹿	20210713T235959
129	we	rgba(0, 206, 209, 1)	20210714T160000	01:00:00	阅读语法	Edward		weekly	小铁	20210721T235959
128	tu th	rgba(63, 61, 234, 1)	20210705T140000	01:30:00	数学 	Tico		weekly	小铁	20210730T235959
164	sa	rgba(0, 55, 255, 1)	20210626T101000	01:00:00	雅思口语	李获		weekly	龙猫	20210626T235959
174	tu th	rgba(0, 55, 255, 1)	20210713T160000	01:00:00	雅思听力 	李获	20210715T160000	weekly	龙猫	20210715T235959
172	su	rgba(199, 21, 133, 0.46)	20210704T093000	01:00:00	阅读 	Kevin	20210711T093000	weekly	龙猫	20210711T235959
530	mo tu we th	rgba(0, 206, 209, 1)	20210719T140000	01:30:00	数学 	睿涵		weekly	小鸥	20210722T235959
203	tu	rgba(255, 119, 86, 1)	20210601T180000	01:00:00	AMC8基础	刘司泽	20210622T180000 20210706T180000	weekly	小鸥	20210720T235959
978	mo	rgba(45, 179, 45, 1)	20210816T170000	01:00:00	数学 	菲菲		weekly	小鸥	20210816T235959
204	tu	rgba(68, 142, 69, 0.85)	20210601T190000	01:00:00	物理 	Emily		weekly	小鸥	20210608T235959
948	tu		20210824T093000	01:30:00	数学 	Tony		weekly	Summer	20210824T235959
180	tu th	rgba(24, 150, 154, 1)	20210713T093000	01:00:00	雅思写作 	李获		weekly	牧牧	20210715T235959
1001	tu	rgba(30, 144, 255, 1)	20210907T170000	01:00:00	词汇 	Nova		weekly	多比	20211228T235959
184	fr mo we	rgba(197, 148, 1, 1)	20210712T110000	01:00:00	班课	Pre-AWS		weekly	牧牧	20210806T235959
187	th	rgba(133, 235, 82, 1)	20210715T103000	01:00:00	语法 	泽霖		weekly	牧牧	20210715T235959
205	fr mo we th	rgba(188, 103, 0, 1)	20210531T141500	01:00:00	数学	Michael	20210531T141500	weekly	小鸥	20210604T235959
189	mo tu we th fr	rgba(0, 206, 209, 1)	20210618T104000	01:30:00	数学 	睿涵	20210625T104000	weekly	小鸥	20210701T235959
190	mo tu we th fr	rgba(0, 206, 209, 1)	20210702T104000	01:30:00	数学 	睿涵	20210705T104000 20210707T104000 20210708T104000	weekly	小鸥	20210709T235959
928	th	rgba(255, 0, 94, 0.93)	20210819T104500	01:00:00	化学 	冠宇		weekly	龙猫	20210819T235959
206	we	rgba(13, 155, 157, 1)	20210602T153000	01:00:00	 数学	Simon	20210623T153000	weekly	小鸥	20210623T235959
213	fr	rgba(179, 2, 255, 1)	20210604T193000	01:00:00	数学 	Nina	20210618T193000 20210625T193000 20210716T193000 20210723T193000 20210709T193000 20210730T193000 20210806T193000 20210813T193000 20210820T193000 20210827T193000 20210903T193000	weekly	小鸥	20210903T235959
194	mo th	rgba(255, 154, 218, 1)	20210531T173000	01:00:00	数学	诺诺	20210607T173000 20210610T173000 20210614T173000 20210617T173000 20210624T173000	weekly	小鸥	20210624T235959
195	mo	rgba(45, 179, 45, 1)	20210531T183000	01:00:00	数学	菲菲		weekly	小鸥	20210607T235959
196	mo	rgba(45, 179, 45, 1)	20210614T140000	01:00:00	数学 	菲菲		weekly	小鸥	20210614T235959
200	mo	rgba(0, 149, 255, 1)	20210531T193000	01:00:00	数学	Timmy	20210614T193000	weekly	小鸥	20210614T235959
201	fr	rgba(0, 149, 255, 1)	20210604T183000	01:00:00	数学 	Timmy		weekly	小鸥	20210618T235959
209	we	rgba(250, 212, 0, 1)	20210602T164000	01:00:00	数学	Laura	20210609T164000	weekly	小鸥	20210616T235959
202	tu	rgba(203, 53, 30, 1)	20210601T170000	01:00:00	C 数学	Little	20210622T170000 20210629T170000	weekly	小鸥	20210831T235959
229	tu	rgba(132, 112, 0, 1)	20210622T190000	01:00:00	数学 	天歌	20210629T190000 20210706T190000 20210713T190000 20210720T190000	weekly	小鸥	20210727T235959
182	su	rgba(24, 150, 154, 1)	20210704T140000	01:00:00	雅思写作 	李获	20210711T140000	weekly	牧牧	20210711T235959
188	mo tu we th fr	rgba(0, 206, 209, 1)	20210604T104000	01:30:00	数学 	睿涵	20210616T104000	weekly	小鸥	20210617T235959
219	th	rgba(205, 168, 0, 1)	20210603T194500	01:00:00	数学	逸然	20210603T194500	weekly	小鸥	20210617T235959
220	sa	rgba(205, 168, 0, 1)	20210605T140000	01:00:00	数学 	逸然		weekly	小鸥	20210612T235959
221	sa	rgba(205, 168, 0, 1)	20210619T130000	01:00:00	数学 	逸然		weekly	小鸥	20210619T235959
222	tu fr	rgba(205, 168, 0, 1)	20210622T093000	01:00:00	数学 	逸然		weekly	小鸥	20210629T235959
223	fr	rgba(205, 168, 0, 1)	20210702T140000	01:00:00	数学 	逸然		weekly	小鸥	20210702T235959
211	we	rgba(250, 212, 0, 1)	20210728T164000	01:00:00	数学 	Laura	20210901T164000	weekly	小鸥	20210901T235959
572	tu	rgba(254, 180, 43, 1)	20210803T150000	01:00:00	数学 	Caesar		weekly	小鸥	20210803T235959
185	we th mo	rgba(133, 235, 82, 1)	20210628T094500	01:00:00	语法 	泽霖	20210715T094500 20210701T094500 20210707T094500 20210714T094500 20210721T094500 20210728T094500	weekly	牧牧	20210729T235959
228	we	rgba(132, 112, 0, 1)	20210616T141500	01:00:00	数学 	天歌		weekly	小鸥	20210616T235959
224	fr tu	rgba(205, 168, 0, 1)	20210706T160000	01:00:00	数学 	逸然	20210716T160000 20210709T160000 20210713T160000 20210723T160000 20210730T160000 20210803T160000 20210806T160000	weekly	小鸥	20210806T235959
179	sa	rgba(24, 150, 154, 1)	20210626T112000	01:00:00	雅思写作 	李获	20210703T112000 20210710T112000	weekly	牧牧	20210710T235959
191	mo we	rgba(0, 206, 209, 1)	20210705T160000	01:30:00	数学 	睿涵		weekly	小鸥	20210707T235959
192	mo we tu th	rgba(0, 206, 209, 1)	20210712T140000	01:30:00	数学 	睿涵		weekly	小鸥	20210715T235959
193	fr	rgba(0, 206, 209, 1)	20210716T151000	01:30:00	数学 	睿涵		weekly	小鸥	20210716T235959
979	we	rgba(45, 179, 45, 1)	20210818T183000	01:00:00	数学 	菲菲		weekly	小鸥	20210818T235959
226	sa	rgba(199, 21, 21, 0.46)	20210605T170000	01:00:00	 数学	Cady	20210619T170000 20210710T170000 20210717T170000 20210724T170000 20210731T170000 20210703T170000	weekly	小鸥	20210731T235959
243	mo we fr	rgba(0, 89, 255, 1)	20210705T140000	01:30:00	 数学	刘行	20210705T140000 20210707T140000	weekly	小鸥	20210709T235959
1012	tu	rgba(12, 228, 12, 0.5)	20210824T110000	01:00:00	语法 	菲菲		weekly	小铁	20210824T235959
236	sa	rgba(0, 229, 255, 0.82)	20210619T110000	01:00:00	数学	天畅		weekly	小鸥	20210619T235959
271	tu	rgba(255, 0, 94, 0.93)	20210629T110000	01:00:00	数学 	冠宇		weekly	龙猫	20210629T235959
531	fr	rgba(244, 17, 17, 1)	20210716T130000	01:00:00	面试辅导 	冠宇		weekly	龙猫	20210716T235959
544	we	rgba(132, 112, 0, 1)	20210721T153000	01:00:00	数学 	天歌		weekly	小鸥	20210721T235959
256	sa	rgba(0, 250, 4, 0.68)	20210703T111000	01:00:00	口语比赛训练 	Bryant		weekly	龙猫	20210703T235959
259	sa	rgba(247, 71, 6, 1)	20210703T151500	01:00:00	托福听力 	Loretta		weekly	龙猫	20210703T235959
260	mo	rgba(247, 71, 6, 1)	20210705T104500	01:00:00	托福听力 	Loretta		weekly	龙猫	20210705T235959
208	mo we fr	rgba(13, 155, 157, 1)	20210705T093000	01:00:00	 数学	Simon	20210712T093000 20210714T093000 20210716T093000 20210719T093000 20210721T093000 20210705T093000 20210709T093000 20210707T093000 20210726T093000 20210730T093000 20210723T093000	weekly	小鸥	20210813T235959
929	th	rgba(30, 144, 255, 1)	20210819T143000	01:00:00	物理 	冠宇		weekly	Summer	20210819T235959
242	sa	rgba(68, 142, 69, 0.85)	20210626T140000	01:00:00	物理 	Emily		weekly	小鸥	20210626T235959
161	we fr th mo tu	rgba(255, 0, 94, 0.93)	20210623T093000	01:00:00	数学 	冠宇	20210706T093000 20210708T093000 20210707T093000 20210709T093000 20210629T093000 20210630T093000 20210701T093000 20210702T093000 20210712T093000	weekly	龙猫	20210712T235959
262	mo we	rgba(179, 24, 200, 1)	20210705T160000	01:00:00	读写 	Nova		weekly	龙猫	20210728T235959
282	mo we fr	rgba(255, 69, 0, 1)	20210630T150000	01:00:00	写作	Loretta	20210702T150000	weekly	牧牧	20210702T235959
246	mo we fr	rgba(13, 155, 157, 1)	20210712T090000	01:00:00	 数学	Simon	20210719T090000 20210721T090000	weekly	小鸥	20210721T235959
250	mo we fr	rgba(143, 31, 255, 0.89)	20210628T083000	01:00:00	阅读 	Panlam	20210630T083000 20210702T083000	weekly	龙猫	20210702T235959
244	tu th	rgba(0, 89, 255, 1)	20210706T090000	01:30:00	 数学	刘行		weekly	小鸥	20210708T235959
237	sa	rgba(0, 206, 209, 1)	20210619T200000	01:30:00	数学 	睿涵		weekly	小鸥	20210626T235959
264	sa	rgba(247, 71, 6, 1)	20210710T151500	01:00:00	托福听力 	Loretta		weekly	龙猫	20210710T235959
272	we	rgba(255, 0, 94, 0.93)	20210630T104500	01:00:00	数学 	冠宇		weekly	龙猫	20210630T235959
557	sa su mo we th fr	rgba(205, 179, 32, 1)	20210814T093000	01:00:00	英语 	冠宇	20210814T093000 20210815T093000 20210816T093000 20210819T093000 20210818T093000	weekly	小鹿	20210820T235959
252	fr	rgba(0, 250, 4, 0.68)	20210702T130000	01:00:00	口语比赛训练	Bryant		weekly	龙猫	20210702T235959
273	th	rgba(255, 0, 94, 0.93)	20210701T104500	01:00:00	数学 	冠宇		weekly	龙猫	20210701T235959
265	tu th sa	rgba(255, 115, 0, 0.76)	20210629T180000	01:00:00	托福听力 	Lawrence		weekly	龙猫	20210703T235959
267	mo su	rgba(255, 115, 0, 0.76)	20210711T180000	01:00:00	托福听力 	Lawrence		weekly	龙猫	20210712T235959
269	we	rgba(255, 0, 94, 0.93)	20210707T104500	01:00:00	数学 	冠宇		weekly	龙猫	20210707T235959
270	fr	rgba(255, 0, 94, 0.93)	20210709T104500	01:00:00	数学 	冠宇		weekly	龙猫	20210709T235959
274	th fr	rgba(255, 0, 94, 0.93)	20210702T104500	01:00:00	数学 	冠宇		weekly	龙猫	20210702T235959
277	we	rgba(205, 28, 28, 1)	20210630T153000	01:30:00	项目 	Ashley		weekly	多比	20210630T235959
275	mo	rgba(250, 212, 0, 1)	20210628T140000	01:00:00	 词汇	Lawrence		weekly	多比	20210628T235959
276	tu	rgba(250, 212, 0, 1)	20210629T100000	01:00:00	 词汇	Lawrence		weekly	多比	20210629T235959
279	mo	rgba(255, 215, 0, 1)	20210628T110000	01:00:00	写作班课	Lawrence&Loretta		weekly	牧牧	20210628T235959
280	tu th	rgba(199, 21, 133, 1)	20210629T151500	01:00:00	语法 	Lawrence		weekly	牧牧	20210701T235959
281	mo we fr	rgba(255, 140, 0, 1)	20210630T110000	01:00:00	写作	Lawrence		weekly	牧牧	20210709T235959
232	we	rgba(0, 89, 255, 1)	20210609T190000	01:00:00	物理 	刘行	20210616T190000 20210623T190000 20210630T190000	weekly	小鸥	20210630T235959
245	mo we tu th fr	rgba(0, 89, 255, 1)	20210712T100000	01:30:00	 数学	刘行		weekly	小鸥	20210716T235959
266	mo we fr	rgba(255, 115, 0, 0.76)	20210705T180000	01:00:00	托福听力 	Lawrence	20210709T180000	weekly	龙猫	20210709T235959
950	th	rgba(122, 148, 225, 1)	20210812T190000	01:00:00	托福听力 	宜林		weekly	龙猫	20210812T235959
284	sa	rgba(8, 111, 8, 1)	20210703T093000	01:00:00	写作 	Nina		weekly	牧牧	20210703T235959
285	sa	rgba(24, 150, 154, 1)	20210703T104500	01:00:00	雅思写作 	李获		weekly	牧牧	20210703T235959
600	th	rgba(0, 12, 250, 1)	20210812T154500	01:00:00	写作 	刘行		weekly	牧牧	20210812T235959
951	tu	rgba(123, 150, 230, 1)	20210810T190000	01:00:00	托福口语 	宜林		weekly	小铁	20210810T235959
300	mo	rgba(205, 179, 32, 1)	20210628T104500	01:00:00	英语 	冠宇		weekly	小鹿	20210628T235959
299	mo we tu th fr	rgba(133, 136, 191, 1)	20210628T163000	00:30:00	单词检查 	Lawrence		weekly	小鹿	20210702T235959
603	tu th	rgba(0, 12, 250, 1)	20210817T153000	01:00:00	写作 	刘行		weekly	牧牧	20210826T235959
604	we	rgba(0, 12, 250, 1)	20210818T140000	01:00:00	写作 	刘行		weekly	牧牧	20210825T235959
289	su	rgba(199, 21, 133, 1)	20210704T150000	01:00:00	语法 	Lawrence		weekly	牧牧	20210704T235959
545	mo th	rgba(224, 24, 24, 1)	20210719T190000	01:00:00	AWS二期	子杰	20210823T190000 20210826T190000 20210802T190000 20210805T190000	weekly	牧牧	20210826T235959
292	mo we	rgba(8, 111, 8, 1)	20210705T190000	01:00:00	写作 	Nina		weekly	牧牧	20210707T235959
294	th	rgba(199, 21, 133, 1)	20210708T150000	01:00:00	语法 	Lawrence		weekly	牧牧	20210708T235959
337	we	rgba(69, 106, 174, 1)	20210630T093000	01:00:00	物理 	刘行		weekly	小鸥	20210630T235959
291	fr	rgba(255, 69, 0, 1)	20210709T093000	01:00:00	写作 	Loretta		weekly	牧牧	20210709T235959
293	sa	rgba(199, 21, 133, 1)	20210710T093006	01:00:00	语法 	Lawrence		weekly	牧牧	20210710T235959
295	mo we	rgba(255, 69, 0, 1)	20210705T150000	01:00:00	写作 	Loretta		weekly	牧牧	20210707T235959
296	tu	rgba(199, 21, 133, 1)	20210706T150000	01:00:00	语法 	Lawrence		weekly	牧牧	20210706T235959
930	th	rgba(123, 150, 230, 1)	20210819T143000	01:00:00	托福口语 	宜林		weekly	小铁	20210819T235959
980	we th fr su	rgba(96, 233, 235, 1)	20210825T190000	01:00:00	IB经济 	Sherry		weekly	牧牧	20210829T235959
283	sa th tu su mo we fr	rgba(8, 111, 8, 1)	20210703T110000	01:00:26	写作 	Nina	20210703T100000 20210703T110000 20210705T110000 20210707T110000 20210706T110000	weekly	牧牧	20210708T235959
307	tu	rgba(8, 111, 8, 1)	20210706T100000	01:00:00	写作 	Nina		weekly	牧牧	20210706T235959
308	mo	rgba(205, 179, 32, 1)	20210705T104500	01:00:00	英语 	冠宇		weekly	小鹿	20210706T235959
981	su	rgba(96, 233, 235, 1)	20210808T200000	01:00:00	IB经济 	Sherry		weekly	牧牧	20210808T235959
298	su	rgba(199, 21, 133, 1)	20210711T151500	01:00:00	语法 	Lawrence		weekly	牧牧	20210711T235959
982	fr	rgba(31, 147, 255, 0.73)	20210827T190000	01:00:00	语法 	Queenie(John)		weekly	小铁	20210827T235959
310	sa	rgba(24, 150, 154, 1)	20210710T104500	01:00:00	雅思写作 	李获		weekly	牧牧	20210710T235959
1003	mo	rgba(205, 168, 0, 1)	20210830T163000	01:00:00	数学 	逸然		weekly	小鸥	20211227T235959
1004	fr	rgba(205, 168, 0, 1)	20210903T163000	01:00:00	数学 	逸然		weekly	小鸥	20211231T235959
1013	tu th	rgba(179, 2, 255, 1)	20210831T180000	01:00:00	数学 	Nina		weekly	小鸥	20211230T235959
610	we	rgba(69, 106, 174, 1)	20210804T153000	01:00:00	物理 	刘行		weekly	小鸥	20210825T235959
290	th tu su mo we	rgba(8, 111, 8, 1)	20210704T161500	01:00:00	写作 	Nina	20210711T161500 20210712T161500 20210713T161500 20210714T161500 20210715T161500 20210718T161500 20210719T161500 20210720T161500 20210721T161500 20210722T161500 20210725T161500 20210726T161500 20210727T161500 20210728T161500	weekly	牧牧	20210728T235959
597	tu	rgba(0, 12, 250, 1)	20210810T093000	01:00:00	写作 	刘行		weekly	牧牧	20210810T235959
301	tu	rgba(144, 238, 149, 1)	20210629T130000	01:30:00	 	慧卿		weekly	小鹿	20210629T235959
611	fr	rgba(69, 106, 174, 1)	20210806T140000	01:00:00	物理 	刘行		weekly	小鸥	20210806T235959
317	su	rgba(21, 42, 199, 0.53)	20210627T150000	01:00:00	口语 	心婷		weekly	小鹿	20210627T235959
318	su	rgba(21, 42, 199, 0.53)	20210620T150000	01:00:00	口语 	心婷		weekly	小鹿	20210620T235959
1014	fr	rgba(199, 21, 133, 1)	20210903T190000	01:00:00	物理	Emily		weekly	小鸥	20211231T235959
1015	tu	rgba(255, 215, 0, 1)	20210831T200000	01:00:00	化学 	Emily		weekly	龙猫	20211228T235959
227	th sa	rgba(132, 112, 0, 1)	20210603T183000	01:00:00	数学 	天歌	20210703T183000 20210710T183000 20210717T183000 20210724T183000 20210731T183000	weekly	小鸥	20210731T235959
322	we	rgba(13, 155, 157, 1)	20210630T153000	01:00:00	 数学	Simon		weekly	小鸥	20210630T235959
615	fr	rgba(69, 106, 174, 1)	20210813T140000	01:00:00	物理 	刘行		weekly	小鸥	20210813T235959
616	mo	rgba(69, 106, 174, 1)	20210816T093000	01:00:00	物理 	刘行		weekly	小鸥	20210816T235959
617	fr	rgba(69, 106, 174, 1)	20210820T093000	01:00:00	物理 	刘行		weekly	小鸥	20210820T235959
328	tu th	rgba(146, 76, 120, 1)	20210629T140000	01:00:00	口语 	Lawrence		weekly	小铁	20210701T235959
329	mo we	rgba(146, 76, 120, 1)	20210705T154500	01:00:00	口语 	Lawrence		weekly	小铁	20210707T235959
592	th	rgba(254, 180, 43, 1)	20210902T161500	01:00:00	数学 	Caesar		weekly	小鸥	20211021T235959
101	mo	rgba(0, 147, 149, 1)	20210426T183500	01:00:00	语法 	Laura	20210503T183500 20210614T183500 20210621T183500 20210628T183500 20210712T183500 20210719T183500 20210705T183500 20210726T183500 20210802T183500 20210809T183500 20210816T183500	weekly	小铁	20210816T235959
324	tu th	rgba(172, 114, 239, 1)	20210706T094500	01:00:00	班课 	托福口语		weekly	小铁	20210708T235959
249	mo tu we th fr	rgba(30, 144, 255, 1)	20210623T140000	02:30:00	监督写作业+检查 	冠宇	20210712T140000 20210705T140000	weekly	Summer	20210713T235959
313	mo th	rgba(255, 120, 0, 1)	20210705T103000	01:00:00	数学	鸿润	20210705T103000	weekly	Summer	20210712T235959
372	mo we	rgba(255, 120, 0, 1)	20210714T140000	01:00:00	数学 	鸿润	20210728T140000 20210804T140000 20210811T140000 20210809T140000 20210802T140000	weekly	Summer	20210811T235959
368	mo	rgba(0, 89, 255, 1)	20210705T103000	01:30:00	 数学	刘行		weekly	小鸥	20210705T235959
369	we	rgba(0, 89, 255, 1)	20210707T104000	01:30:00	 数学	刘行		weekly	小鸥	20210707T235959
327	sa	rgba(127, 82, 8, 1)	20210605T163000	01:00:00	生物 	Edmund	20210612T163000 20210619T163000 20210703T163000 20210626T163000	weekly	小铁	20210705T235959
952	tu	rgba(179, 2, 255, 1)	20210824T181000	01:00:00	数学 	Nina		weekly	小鸥	20210824T235959
931	mo	rgba(255, 69, 0, 1)	20210830T193000	01:00:00	数学	Timmy		weekly	小鸥	20211227T235959
983	fr	rgba(31, 147, 255, 0.73)	20210820T170000	00:30:00	作业单词检查 	Steven		weekly	小鹿	20210820T235959
340	mo we fr	rgba(172, 114, 239, 1)	20210628T094500	01:00:00	班课 	托福口语		weekly	小铁	20210702T235959
1005	tu	rgba(202, 230, 25, 1)	20210810T181500	01:00:00	数学 	Michael		weekly	小鸥	20210810T235959
342	fr	rgba(172, 114, 239, 1)	20210709T154500	01:00:00	班课 	托福口语		weekly	小铁	20210709T235959
343	sa	rgba(172, 114, 239, 1)	20210710T111500	01:00:00	班课 	托福口语		weekly	小铁	20210710T235959
344	su	rgba(172, 114, 239, 1)	20210711T140000	01:00:00	班课 	托福口语		weekly	小铁	20210711T235959
345	mo	rgba(172, 114, 239, 1)	20210712T154500	01:00:00	班课 	托福口语		weekly	小铁	20210712T235959
1016	th	rgba(0, 206, 209, 1)	20210902T190000	01:00:00	生物	Emily		weekly	小铁	20211230T235959
348	fr	rgba(13, 155, 157, 1)	20210702T153000	01:00:00	 数学	Simon		weekly	小鸥	20210702T235959
598	mo	rgba(0, 12, 250, 1)	20210809T151500	01:00:00	写作 	刘行		weekly	牧牧	20210809T235959
351	we fr	rgba(59, 72, 167, 1)	20210702T103000	01:00:00	语法 	诗雅		weekly	小鹿	20210707T235959
355	mo fr we	rgba(59, 72, 167, 1)	20210716T090000	01:00:00	语法 	诗雅	20210721T090000	weekly	小鹿	20210721T235959
354	we	rgba(59, 72, 167, 1)	20210714T090000	01:00:00	语法 	诗雅		weekly	小鹿	20210714T235959
356	mo fr we	rgba(59, 72, 167, 1)	20210716T103000	01:00:00	语法 	诗雅	20210721T103000	weekly	小鹿	20210721T235959
358	we fr	rgba(59, 72, 167, 1)	20210723T103000	01:00:00	语法 	诗雅		weekly	小鹿	20210723T235959
359	we fr	rgba(59, 72, 167, 1)	20210702T090000	01:00:00	词汇	诗雅		weekly	Summer	20210707T235959
362	we th fr	rgba(205, 179, 32, 1)	20210623T104500	01:00:00	英语 	冠宇		weekly	小鹿	20210625T235959
146	we th fr	rgba(205, 179, 32, 1)	20210623T093000	01:00:00	英语 	冠宇	20210708T104500 20210628T093042 20210705T093042 20210712T093042 20210623T093042 20210624T093042 20210625T093042 20210708T093042 20210623T093000 20210624T093000 20210625T093000	weekly	小鹿	20210712T235959
585	tu th	rgba(237, 118, 12, 1)	20210810T143000	01:00:00	语法 	李拓	20210812T143000	weekly	牧牧	20210812T235959
357	mo fr we	rgba(59, 72, 167, 1)	20210723T090000	01:00:00	语法 	诗雅	20210726T090000	weekly	小鹿	20210726T235959
373	mo	rgba(255, 120, 0, 1)	20210705T103000	01:00:00	数学 	鸿润		weekly	Summer	20210705T235959
361	we mo	rgba(59, 72, 167, 1)	20210714T103000	01:00:00	词汇 	诗雅	20210719T103000 20210721T103000 20210726T103000	weekly	Summer	20210726T235959
374	we	rgba(8, 112, 55, 1)	20210707T093000	01:00:00	化学	鸿润		weekly	龙猫	20210707T235959
599	we	rgba(0, 12, 250, 1)	20210811T141500	01:00:00	写作 	刘行		weekly	牧牧	20210811T235959
605	we fr	rgba(0, 89, 255, 1)	20210804T104000	01:30:00	 数学	刘行		weekly	小鸥	20210806T235959
382	mo tu	rgba(12, 228, 12, 0.5)	20210705T170000	01:00:00	语法 	菲菲		weekly	小铁	20210706T235959
386	sa	rgba(255, 140, 0, 1)	20210703T111500	01:00:00	托福写作	Joy		weekly	小萨	20210703T235959
387	sa	rgba(255, 140, 0, 1)	20210710T111500	01:00:00	托福写作 	Joy		weekly	小萨	20210710T235959
606	th	rgba(0, 89, 255, 1)	20210805T103000	01:30:00	 数学	刘行		weekly	小鸥	20210805T235959
389	tu	rgba(255, 140, 0, 1)	20210713T111500	01:00:00	托福写作 	Joy		weekly	小萨	20210713T235959
618	mo fr	rgba(69, 106, 174, 1)	20210823T093000	01:00:00	物理 	刘行		weekly	小鸥	20210827T235959
620	we fr	rgba(179, 2, 255, 1)	20210804T180000	01:00:00	数学 	Nina		weekly	小鸥	20210813T235959
586	we	rgba(237, 118, 12, 1)	20210811T160000	01:00:00	语法 	李拓	20210818T160000 20210825T160000	weekly	牧牧	20210825T235959
375	fr	rgba(8, 112, 55, 1)	20210709T163000	01:00:00	化学 	鸿润	20210709T163000 20210730T163000 20210806T163000 20210813T163000	weekly	龙猫	20210813T235959
367	su	rgba(183, 55, 230, 1)	20210704T200000	00:30:00	单词检查	诗雅	20210711T200000 20210725T200000	weekly	Summer	20210725T235959
911	tu	rgba(203, 53, 30, 1)	20210907T170000	01:00:00	C 数学	Little		weekly	小鸥	20211231T235959
391	sa	rgba(199, 21, 133, 1)	20210703T150000	01:00:00	语法 	Lawrence		weekly	牧牧	20210703T235959
392	sa	rgba(255, 69, 0, 1)	20210703T140000	01:30:00	写作 	孺亦		weekly	小鹿	20210703T235959
393	sa	rgba(133, 136, 191, 1)	20210703T153000	00:30:00	单词检查 	Lawrence		weekly	小鹿	20210703T235959
953	mo	rgba(205, 168, 0, 1)	20210816T193000	01:00:00	数学 	逸然		weekly	小鸥	20210816T235959
395	mo fr sa tu we th	rgba(133, 136, 191, 1)	20210705T140000	00:30:00	单词检查 	Lawrence		weekly	小鹿	20210710T235959
955	mo	rgba(205, 168, 0, 1)	20210823T181500	01:00:00	数学 	逸然		weekly	小鸥	20210823T235959
956	fr	rgba(205, 168, 0, 1)	20210827T183000	01:00:00	数学 	逸然		weekly	小鸥	20210827T235959
932	we	rgba(199, 21, 133, 1)	20210901T193000	01:00:00	阅读	Timmy		weekly	龙猫	20211229T235959
401	tu th	rgba(153, 0, 255, 0.42)	20210713T140000	01:30:00	口语 	孺亦		weekly	多比	20210715T235959
933	fr	rgba(250, 212, 0, 1)	20210903T193000	01:00:00	语法	Timmy		weekly	小鹿	20211231T235959
957	th	rgba(205, 168, 0, 1)	20210812T171500	01:00:00	数学 	逸然		weekly	小鸥	20210812T235959
984	we	rgba(31, 147, 255, 0.73)	20210811T170000	00:30:00	作业单词检查 	Steven		weekly	小鹿	20210811T235959
434	mo we fr	rgba(250, 212, 0, 1)	20210712T130000	01:00:00	写作 	Eva	20210726T130000 20210721T130000 20210723T130000 20210802T130000	weekly	牧牧	20210804T235959
987	tu	rgba(31, 147, 255, 0.73)	20210817T164500	00:30:00	作业单词检查 	Steven		weekly	小鹿	20210817T235959
1006	th	rgba(254, 180, 43, 1)	20210805T160000	01:00:00	数学 	Caesar		weekly	小鸥	20210805T235959
408	tu th	rgba(255, 69, 0, 1)	20210713T160000	01:30:00	写作 	孺亦		weekly	小鹿	20210715T235959
412	sa	rgba(255, 69, 0, 1)	20210717T140000	01:30:00	写作 	孺亦		weekly	小鹿	20210717T235959
549	th	rgba(59, 72, 167, 1)	20210722T140000	01:00:00	词汇 	诗雅		weekly	Summer	20210722T235959
550	th	rgba(59, 72, 167, 1)	20210722T153000	01:00:00	语法 	诗雅		weekly	小鹿	20210722T235959
577	fr	rgba(13, 155, 157, 1)	20210730T093000	01:00:00	 数学	Simon		weekly	小鸥	20210730T235959
112	sa	rgba(0, 206, 209, 1)	20210619T100000	01:00:00	阅读语法	Edward	20210731T100000 20210717T100000 20210807T100000 20210814T100000	weekly	小铁	20210814T235959
590	tu	rgba(199, 21, 133, 0.46)	20210810T160000	01:00:00	阅读写作 	李拓	20210817T160000 20210824T160000	weekly	Summer	20210824T235959
421	tu	rgba(250, 212, 0, 1)	20210706T135000	01:00:00	写作	Eva		weekly	牧牧	20210706T235959
565	mo we fr	rgba(250, 212, 0, 1)	20210806T130000	01:00:00	写作 	Eva		weekly	牧牧	20210811T235959
424	th	rgba(199, 21, 21, 0.46)	20210708T104000	01:00:00	 数学	Cady		weekly	小鸥	20210708T235959
425	we	rgba(132, 112, 0, 1)	20210707T150000	01:00:00	数学 	天歌		weekly	小鸥	20210707T235959
576	mo	rgba(13, 155, 157, 1)	20210726T093000	01:00:00	 数学	Simon		weekly	小鸥	20210726T235959
427	tu	rgba(179, 2, 255, 1)	20210706T140000	01:00:00	数学 	Nina		weekly	小鸥	20210706T235959
547	tu fr	rgba(163, 43, 67, 1)	20210720T190000	01:30:00	AWS二期助教课	郑子杰	20210824T190000 20210803T190000 20210806T190000	weekly	Summer	20210826T235959
429	mo	rgba(250, 212, 0, 1)	20210712T133000	00:30:00	Pre-AWS 助教课 	Bryant		weekly	Summer	20210712T235959
431	fr	rgba(250, 212, 0, 1)	20210716T140000	00:30:00	Pre-AWS 助教课	Bryant		weekly	Summer	20210806T235959
433	th	rgba(250, 212, 0, 1)	20210708T135000	01:00:00	写作 	Eva		weekly	牧牧	20210708T235959
435	th	rgba(255, 140, 0, 1)	20210708T124500	01:00:00	托福写作 	Joy		weekly	小萨	20210708T235959
436	mo	rgba(255, 140, 0, 1)	20210712T124500	01:00:00	托福写作 	Joy		weekly	小萨	20210712T235959
437	th	rgba(205, 168, 0, 1)	20210708T150000	01:00:00	数学 	逸然		weekly	小鸥	20210708T235959
441	sa	rgba(255, 0, 94, 0.93)	20210710T093000	01:00:00	数学 	冠宇		weekly	龙猫	20210710T235959
442	sa	rgba(205, 179, 32, 1)	20210710T104500	01:00:00	英语 	冠宇		weekly	小鹿	20210710T235959
443	sa	rgba(30, 144, 255, 1)	20210710T140000	02:30:00	监督写作业+检查 	冠宇		weekly	Summer	20210710T235959
430	mo we	rgba(250, 212, 0, 1)	20210714T151500	00:30:00	Pre-AWS 助教课	Bryant	20210726T151500 20210728T151500 20210802T151500	weekly	Summer	20210804T235959
447	th	rgba(179, 2, 255, 1)	20210708T140000	01:00:00	数学 	Nina		weekly	小鸥	20210708T235959
440	fr mo we	rgba(0, 12, 250, 1)	20210712T150000	01:00:00	写作 	刘行	20210714T150000	weekly	牧牧	20210716T235959
444	mo we fr	rgba(144, 238, 144, 1)	20210712T173000	00:30:00	Pre-AWS 助教课	琦岚	20210716T160000 20210723T160000 20210730T160000 20210806T160000 20210712T173000 20210714T173000	weekly	Summer	20210806T235959
934	mo	rgba(30, 144, 255, 1)	20210906T193000	01:00:00	化学	刘行		weekly	龙猫	20211227T235959
450	fr	rgba(198, 11, 73, 1)	20210709T093000	01:00:00	物理 	刘行		weekly	小鸥	20210709T235959
986	mo	rgba(31, 147, 255, 0.73)	20210816T190000	00:30:00	作业单词检查 	Steven		weekly	小鹿	20210816T235959
536	mo we	rgba(144, 238, 144, 1)	20210712T160000	00:30:00	Pre-AWS 助教课	琦岚		weekly	Summer	20210714T235959
621	th mo	rgba(8, 111, 8, 1)	20210802T201000	01:00:00	写作 	Nina	20210802T201000	weekly	牧牧	20210812T235959
1007	mo	rgba(254, 180, 43, 1)	20210816T160000	01:00:00	数学 	Caesar		weekly	小鸥	20210816T235959
1018	we		20210825T100000	01:00:00	写作 	Sam		weekly	牧牧	20210825T235959
1019	tu	rgba(45, 76, 214, 1)	20210824T173000	01:00:00	托福阅读听力 	桃子		weekly	小鹿	20210824T235959
449	mo th	rgba(198, 11, 73, 1)	20210712T170000	01:00:00	物理 	刘行	20210715T170000	weekly	小鸥	20210715T235959
458	fr	rgba(205, 28, 28, 1)	20210702T140000	00:30:00	项目 	Ashley		weekly	多比	20210702T235959
462	mo we tu th fr	rgba(19, 201, 59, 1)	20210719T093000	01:00:00	科学	Laura	20210802T093000 20210803T093000 20210804T093000 20210805T093000 20210806T093000	weekly	多比	20210813T235959
460	tu	rgba(205, 28, 28, 1)	20210706T150000	01:30:00	项目 	Ashley		weekly	多比	20210706T235959
461	su	rgba(101, 99, 8, 1)	20210530T113000	00:30:00	助教课 	Tico		weekly	多比	20210530T235959
177	su	rgba(199, 21, 133, 0.46)	20210620T100000	01:00:00	语法 	Wendy	20210627T100000 20210704T100000 20210711T100000 20210718T100000 20210725T100000	weekly	牧牧	20210725T235959
485	sa	rgba(194, 41, 41, 1)	20210710T120000	00:45:00	小学英语	茗捷&诗淇		weekly	小鹿	20210710T235959
465	mo	rgba(27, 217, 220, 1)	20210712T150000	00:30:00	Pre-AWS 助教课	Michael		weekly	Summer	20210712T235959
455	we	rgba(250, 212, 0, 1)	20210714T164000	01:00:00	数学 	Laura	20210804T164000 20210811T164000 20210728T164000 20210721T164000	weekly	小鸥	20210811T235959
466	mo we	rgba(27, 217, 220, 1)	20210714T164500	00:30:00	Pre-AWS 助教课	Michael	20210728T164500	weekly	Summer	20210804T235959
474	th tu	rgba(237, 118, 12, 1)	20210713T140000	01:00:00	语法	李拓		weekly	牧牧	20210715T235959
475	th tu	rgba(237, 118, 12, 1)	20210720T110000	01:00:00	语法 	李拓	20210722T110000 20210727T110000 20210729T110000	weekly	牧牧	20210729T235959
484	sa	rgba(8, 112, 55, 1)	20210710T110000	01:00:00	化学 	鸿润		weekly	龙猫	20210710T235959
477	we fr	rgba(237, 118, 12, 1)	20210721T093000	01:00:00	语法 	李拓	20210723T093000 20210728T093000 20210730T093000	weekly	牧牧	20210730T235959
488	sa	rgba(215, 75, 163, 1)	20210710T110000	00:45:00	小学科学	茗捷&诗淇		weekly	多比	20210710T235959
480	we fr th tu	rgba(225, 146, 50, 1)	20210720T160000	01:00:00	科学 	李拓	20210723T160000	weekly	多比	20210723T235959
481	we fr th tu mo	rgba(225, 146, 50, 1)	20210726T160000	01:00:00	科学 	李拓	20210727T160000 20210728T160000 20210729T160000 20210730T160000	weekly	多比	20210730T235959
593	we fr	rgba(0, 12, 250, 1)	20210804T093000	01:00:00	写作 	刘行		weekly	牧牧	20210806T235959
494	tu	rgba(225, 0, 255, 1)	20210713T100000	01:00:00	数学	瑞娜		weekly	Summer	20210713T235959
495	mo	rgba(59, 72, 167, 1)	20210712T135000	01:00:00	语法 	诗雅		weekly	小鹿	20210712T235959
496	mo	rgba(59, 72, 167, 1)	20210712T145500	01:00:00	语法 	诗雅		weekly	小鹿	20210712T235959
602	fr mo	rgba(0, 12, 250, 1)	20210816T110000	01:00:00	写作 	刘行		weekly	牧牧	20210827T235959
622	tu	rgba(8, 111, 8, 1)	20210803T190000	01:00:00	写作 	Nina		weekly	牧牧	20210810T235959
467	fr	rgba(27, 217, 220, 1)	20210716T144500	00:30:00	Pre-AWS 助教课	Michael	20210730T144500	weekly	Summer	20210806T235959
637	su	rgba(101, 99, 8, 1)	20210725T110000	01:00:00	助教课 	Tico		weekly	多比	20210725T235959
178	mo we fr	rgba(187, 0, 255, 1)	20210621T140000	01:00:00	线上经济	Rebecca	20210702T140000 20210705T140000 20210712T140000 20210726T140000 20210728T140000 20210730T140000 20210802T140000 20210804T140000	weekly	牧牧	20210804T235959
463	fr mo tu we th	rgba(101, 233, 235, 1)	20210719T105000	01:00:00	科学思维	Laura	20210802T105000 20210803T105000 20210804T105000 20210805T105000 20210806T105000	weekly	多比	20210813T235959
491	su	rgba(199, 21, 133, 0.46)	20210718T093000	01:00:00	阅读 	Kevin	20210829T093000 20210822T093000 20210718T093000 20210808T093000 20210815T093000	weekly	龙猫	20210829T235959
498	tu	rgba(132, 112, 0, 1)	20210713T110000	01:00:00	数学 	Tony		weekly	Summer	20210713T235959
499	we	rgba(132, 112, 0, 1)	20210714T093000	01:00:00	数学 	Tony		weekly	Summer	20210714T235959
501	mo we	rgba(215, 75, 163, 1)	20210712T093000	01:00:00	小学科学 	茗捷&诗淇		weekly	多比	20210714T235959
503	fr	rgba(215, 75, 163, 1)	20210716T103000	01:00:00	小学科学 	茗捷&诗淇		weekly	多比	20210716T235959
504	tu	rgba(215, 75, 163, 1)	20210713T094000	01:00:00	小学科学 	茗捷&诗淇		weekly	多比	20210713T235959
505	th	rgba(215, 75, 163, 1)	20210715T104000	01:00:00	小学科学 	茗捷&诗淇		weekly	多比	20210715T235959
935	tu	rgba(0, 206, 209, 1)	20210907T193000	01:00:00	写作	刘行		weekly	牧牧	20211228T235959
988	mo	rgba(45, 179, 45, 1)	20210823T170000	01:00:00	数学 	菲菲		weekly	小鸥	20210823T235959
961	th	rgba(250, 212, 0, 1)	20210812T183000	01:00:00	数学	Michael		weekly	小鸥	20210812T235959
511	mo we	rgba(194, 41, 41, 1)	20210712T104000	01:00:00	小学英语 	茗捷&诗淇		weekly	小鹿	20210714T235959
512	fr	rgba(194, 41, 41, 1)	20210716T114000	01:00:00	小学英语 	茗捷&诗淇		weekly	小鹿	20210716T235959
513	tu	rgba(194, 41, 41, 1)	20210713T083000	01:00:00	小学英语 	茗捷&诗淇		weekly	小鹿	20210713T235959
514	th	rgba(194, 41, 41, 1)	20210715T093000	01:00:00	小学英语 	茗捷&诗淇		weekly	小鹿	20210715T235959
963	th		20210819T173000	01:00:00	数学	Michael		weekly	小鸥	20210826T235959
517	we	rgba(225, 146, 50, 1)	20210714T110000	01:00:00	科学 	李拓		weekly	多比	20210714T235959
580	fr	rgba(199, 21, 21, 0.46)	20210723T150000	01:00:00	 数学	Cady		weekly	小鸥	20210723T235959
519	sa	rgba(245, 167, 247, 1)	20210717T151500	01:00:00	物理 	鸿润		weekly	小铁	20210717T235959
607	mo tu we th fr	rgba(0, 89, 255, 1)	20210809T104000	01:30:00	 数学	刘行		weekly	小鸥	20210813T235959
623	we	rgba(8, 111, 8, 1)	20210803T191000	01:00:00	写作 	Nina		weekly	牧牧	20210810T235959
624	we	rgba(8, 111, 8, 1)	20210803T191000	01:00:00	写作 	Nina	20210804T191000	weekly	牧牧	20210811T235959
625	fr	rgba(8, 111, 8, 1)	20210806T191000	01:00:00	写作 	Nina		weekly	牧牧	20210813T235959
537	su	rgba(0, 55, 255, 1)	20210627T104500	01:00:00	雅思听力 	李获	20210711T104500	weekly	龙猫	20210711T235959
628	th	rgba(205, 28, 28, 1)	20210708T150000	02:30:00	项目 	Ashley		weekly	多比	20210708T235959
479	mo tu we fr	rgba(225, 146, 50, 1)	20210712T160000	01:00:00	科学 	李拓	20210714T160000 20210713T160000	weekly	多比	20210716T235959
551	tu	rgba(174, 133, 228, 1)	20210720T090000	01:00:00	IB经济 	Molly		weekly	牧牧	20210720T235959
644	sa	rgba(239, 157, 109, 1)	20210731T140000	01:00:00	数学 	琦岚		weekly	小铁	20210731T235959
548	sa we	rgba(163, 43, 67, 1)	20210721T190000	01:00:00	AWS二期助教课 	郑子杰	20210825T190000 20210828T190000 20210724T190000 20210804T190000 20210807T190000	weekly	Summer	20210828T235959
312	th mo	rgba(133, 235, 82, 1)	20210802T094500	01:00:00	语法 	泽霖	20210802T094500 20210805T094500	weekly	牧牧	20210819T235959
633	mo	rgba(163, 43, 67, 1)	20210726T100000	01:00:00	AWS二期助教课 	郑子杰		weekly	Summer	20210726T235959
566	tu we th fr sa	rgba(46, 221, 101, 0.53)	20210721T093000	01:30:00	英语 	心婷	20210723T093000 20210724T093000 20210727T093000 20210728T093000 20210729T093000 20210730T093000 20210731T093000	weekly	小鹿	20210731T235959
527	tu th	rgba(215, 75, 163, 1)	20210720T072000	01:00:00	小学科学 	茗捷&诗淇	20210720T072000 20210729T072000	weekly	多比	20210729T235959
526	mo we fr	rgba(215, 75, 163, 1)	20210719T083000	01:00:00	小学科学 	茗捷&诗淇	20210728T083000 20210730T083000	weekly	多比	20210730T235959
525	mo we fr	rgba(194, 41, 41, 1)	20210719T072000	01:00:00	小学英语 	茗捷&诗淇	20210728T072000 20210730T072000	weekly	小鹿	20210730T235959
521	we fr	rgba(254, 8, 37, 0.5)	20210714T110000	01:00:00	数学 	慧卿	20210730T110000	weekly	小铁	20210730T235959
649	tu we fr	rgba(96, 233, 235, 1)	20210727T190000	01:00:00	IB经济 	Sherry		weekly	牧牧	20210730T235959
643	fr	rgba(133, 235, 82, 1)	20210806T153000	01:00:00	语法 	泽霖	20210813T153000	weekly	牧牧	20210813T235959
640	mo	rgba(250, 212, 0, 1)	20210802T151500	00:30:00	Pre-AWS 助教课	Bryant		weekly	Summer	20210802T235959
650	th sa	rgba(96, 233, 235, 1)	20210729T110000	01:00:00	IB经济 	Sherry	20210731T110000	weekly	牧牧	20210731T235959
482	we fr th tu mo	rgba(225, 146, 50, 1)	20210809T160000	01:00:00	科学 	李拓	20210810T160000 20210811T160000 20210817T160000 20210818T160000 20210824T160000 20210825T160000 20210812T160000 20210819T160000 20210826T160000 20210813T160000 20210820T160000 20210816T160000 20210823T160000 20210827T160000	weekly	多比	20210827T235959
965	tu	rgba(27, 50, 220, 1)	20210817T190000	01:00:00	科学 	Michael		weekly	多比	20210817T235959
989	mo	rgba(12, 228, 12, 0.5)	20210802T160000	01:00:00	语法 	菲菲		weekly	小铁	20210802T235959
651	su	rgba(96, 233, 235, 1)	20210801T110000	01:00:00	IB经济 	Sherry	20210808T110000 20210815T110000 20210822T110000	weekly	牧牧	20210822T235959
990	mo	rgba(12, 228, 12, 0.5)	20210809T160000	01:00:00	语法 	菲菲		weekly	小铁	20210809T235959
915	we	rgba(31, 147, 255, 0.73)	20210818T190000	01:00:00	语法 	Queenie(John)		weekly	小铁	20210831T235959
653	we	rgba(199, 21, 133, 0.46)	20210728T093000	01:00:00	语法 	Wendy		weekly	牧牧	20210728T235959
966	fr	rgba(199, 21, 21, 0.46)	20210820T183000	01:00:00	 数学	Cady		weekly	小鸥	20210820T235959
370	tu th	rgba(245, 167, 247, 1)	20210706T154500	01:00:00	物理 	鸿润	20210708T154500 20210713T154500 20210727T154500 20210729T154500 20210803T154500 20210805T154500 20210812T154500 20210810T154500	weekly	小铁	20210812T235959
655	fr	rgba(199, 21, 133, 0.46)	20210730T093000	01:00:00	语法 	Wendy		weekly	牧牧	20210730T235959
656	mo th	rgba(199, 21, 133, 0.46)	20210802T093000	01:00:00	语法 	Wendy		weekly	牧牧	20210805T235959
657	tu	rgba(199, 21, 133, 0.46)	20210803T100000	01:00:00	语法 	Wendy		weekly	牧牧	20210803T235959
659	tu mo we th	rgba(199, 21, 133, 0.46)	20210809T110000	01:00:00	语法 	Wendy		weekly	牧牧	20210812T235959
660	fr	rgba(199, 21, 133, 0.46)	20210813T093000	01:00:00	语法 	Wendy		weekly	牧牧	20210813T235959
662	fr	rgba(35, 220, 189, 0.46)	20210604T163000	00:45:00	 阅读	Mandy	20210625T163000	weekly	龙猫	20210625T235959
663	fr	rgba(34, 164, 169, 0.46)	20210730T110000	01:00:00	阅读	Mandy	20210813T110000	weekly	龙猫	20210813T235959
666	we	rgba(187, 0, 255, 1)	20210811T093000	01:00:00	线上经济 	Rebecca		weekly	牧牧	20210811T235959
524	tu th	rgba(254, 8, 37, 0.5)	20210715T103000	01:30:00	数学 	慧卿	20210729T103000	weekly	小铁	20210729T235959
668	fr	rgba(199, 21, 21, 0.46)	20210730T110000	01:00:00	 数学	Cady		weekly	小鸥	20210730T235959
669	fr	rgba(225, 146, 50, 1)	20210730T140000	01:00:00	科学 	李拓		weekly	多比	20210730T235959
672	tu	rgba(51, 133, 211, 1)	20210803T143000	01:30:00	IB经济	Lora		weekly	牧牧	20210803T235959
673	su	rgba(51, 133, 211, 1)	20210808T140000	01:30:00	IB经济 	Lora		weekly	牧牧	20210808T235959
693	tu	rgba(45, 179, 45, 1)	20210803T140000	01:00:00	数学 	菲菲		weekly	小鸥	20210803T235959
679	sa	rgba(31, 147, 255, 0.73)	20210731T153000	01:00:00	语法 	Queenie		weekly	小铁	20210731T235959
671	sa su	rgba(250, 212, 0, 1)	20210731T150000	00:30:00	Pre-AWS 助教课	Bryant	20210731T150000	weekly	Summer	20210801T235959
688	su	rgba(101, 99, 8, 1)	20210801T110000	01:00:00	助教课 	Tico		weekly	多比	20210801T235959
520	mo tu we th fr	rgba(250, 212, 0, 1)	20210714T140000	01:30:00	英语 	慧卿	20210719T140000 20210729T140000 20210730T140000 20210802T140000 20210803T140000 20210804T140000 20210805T140000 20210806T140000 20210809T140000 20210810T140000 20210811T140000 20210812T140000 20210813T140000	weekly	小鹿	20210813T235959
691	we fr	rgba(12, 228, 12, 0.5)	20210804T153000	01:00:00	语法 	菲菲		weekly	小铁	20210813T235959
695	sa	rgba(45, 179, 45, 1)	20210807T100000	01:00:00	数学 	菲菲		weekly	小鸥	20210807T235959
698	sa	rgba(45, 179, 45, 1)	20210814T100000	01:00:00	数学 	菲菲		weekly	小鸥	20210814T235959
686	mo tu we th	rgba(250, 212, 0, 1)	20210802T140000	00:45:00	阅读 	Lucy	20210802T140000 20210803T140000 20210804T140000	weekly	龙猫	20210805T235959
967	we	rgba(45, 179, 45, 1)	20210825T183000	01:00:00	数学 	菲菲		weekly	小鸥	20210825T235959
992	we fr	rgba(187, 0, 255, 1)	20210825T171500	01:00:00	线上经济 	Rebecca		weekly	牧牧	20210827T235959
718	tu fr	rgba(255, 69, 0, 1)	20210803T150000	01:30:00	AWS助教	孺亦	20210827T150000	weekly	小鹿	20210827T235959
707	tu	rgba(132, 112, 0, 1)	20210803T093000	01:00:00	数学 	天歌		weekly	小鸥	20210803T235959
708	th	rgba(132, 112, 0, 1)	20210805T093000	01:00:00	数学 	天歌		weekly	小鸥	20210805T235959
709	sa	rgba(132, 112, 0, 1)	20210807T110000	01:00:00	数学 	天歌		weekly	小鸥	20210807T235959
710	tu	rgba(132, 112, 0, 1)	20210810T093000	01:00:00	数学 	天歌		weekly	小鸥	20210810T235959
711	th	rgba(132, 112, 0, 1)	20210812T093000	01:00:00	数学 	天歌		weekly	小鸥	20210812T235959
713	we	rgba(205, 168, 0, 1)	20210804T140000	01:00:00	数学 	逸然		weekly	小鸥	20210804T235959
714	tu	rgba(187, 0, 255, 1)	20210803T110000	01:00:00	线上经济 	Rebecca		weekly	牧牧	20210803T235959
939	fr	rgba(34, 164, 169, 0.46)	20210820T151500	01:00:00	阅读 	Mandy		weekly	龙猫	20210820T235959
720	we sa	rgba(255, 69, 0, 1)	20210818T150000	01:00:00	AWS助教 	孺亦	20210828T150000	weekly	小鹿	20210828T235959
731	tu	rgba(31, 147, 255, 0.73)	20210803T093000	01:30:00	读写课 	Steven		weekly	小鹿	20210803T235959
717	mo th	rgba(30, 144, 255, 1)	20210802T150000	01:00:00	AWS	孺亦		weekly	小萨	20210826T235959
719	we sa	rgba(255, 69, 0, 1)	20210804T140000	01:00:00	AWS助教 	孺亦		weekly	小鹿	20210814T235959
724	th	rgba(239, 157, 109, 1)	20210805T153000	01:00:00	数学 	琦岚		weekly	小铁	20210812T235959
725	sa	rgba(239, 157, 109, 1)	20210821T140000	01:00:00	数学 	琦岚		weekly	小铁	20211009T235959
726	we fr	rgba(224, 24, 24, 1)	20210804T140000	01:00:00	AWS二期 	子杰		weekly	牧牧	20210806T235959
743	we th fr	rgba(31, 147, 255, 0.73)	20210804T093000	01:30:00	读写课 	Steven		weekly	小鹿	20210806T235959
733	fr	rgba(199, 21, 21, 0.46)	20210806T150000	01:00:00	 数学	Cady		weekly	小鸥	20210813T235959
735	sa	rgba(199, 21, 21, 0.46)	20210904T170000	01:00:00	 数学	Cady		weekly	小鸥	20211009T235959
675	fr	rgba(51, 133, 211, 1)	20210813T140000	01:30:00	IB经济 	Lora	20210903T140000	weekly	牧牧	20210903T235959
681	mo tu we th fr	rgba(250, 212, 0, 1)	20210806T130000	00:45:00	阅读 	Lucy	20210826T130000	weekly	龙猫	20210827T235959
706	tu th sa	rgba(12, 228, 12, 0.5)	20210817T160000	01:00:00	语法 	菲菲	20210824T160000 20210828T160000	weekly	小铁	20210828T235959
923	su	rgba(31, 147, 255, 0.73)	20210829T140000	00:30:00	作业单词检查 	Steven	20210829T140000	weekly	小鹿	20210905T235959
757	sa	rgba(46, 221, 101, 0.53)	20210807T153000	01:30:00	英语 	心婷		weekly	小鹿	20210807T235959
738	th	rgba(0, 206, 209, 1)	20210805T140000	01:30:00	数学 	睿涵		weekly	小鸥	20210805T235959
750	fr mo tu we th	rgba(101, 233, 235, 1)	20210816T105000	01:00:00	科学思维 	Laura		weekly	多比	20210820T235959
744	tu	rgba(31, 147, 255, 0.73)	20210810T093000	01:30:00	读写课 	Steven		weekly	小鹿	20210810T235959
745	mo	rgba(31, 147, 255, 0.73)	20210809T103000	01:30:00	读写课 	Steven		weekly	小鹿	20210809T235959
752	th	rgba(0, 12, 250, 1)	20210805T153000	01:00:00	写作 	刘行		weekly	牧牧	20210805T235959
732	tu	rgba(31, 147, 255, 0.73)	20210803T140000	00:30:00	作业单词检查 	Steven		weekly	小鹿	20210803T235959
746	we mo	rgba(31, 147, 255, 0.73)	20210804T153000	00:30:00	作业单词检查 	Steven		weekly	小鹿	20210809T235959
747	th fr tu	rgba(31, 147, 255, 0.73)	20210805T140000	00:30:00	作业单词检查 	Steven		weekly	小鹿	20210810T235959
727	th	rgba(163, 43, 67, 1)	20210805T150000	01:30:00	AWS二期助教课 	郑子杰		weekly	Summer	20210805T235959
749	mo we tu th fr	rgba(19, 201, 59, 1)	20210816T093000	01:00:00	科学 	Laura		weekly	多比	20210820T235959
754	fr	rgba(132, 112, 0, 1)	20210806T103000	01:30:00	数学 	Tony		weekly	Summer	20210806T235959
685	mo tu we th	rgba(250, 212, 0, 1)	20210802T130000	00:45:00	阅读 	Lucy	20210802T130000 20210803T130000 20210804T130000	weekly	龙猫	20210805T235959
751	sa	rgba(205, 168, 0, 1)	20210807T140000	01:00:00	数学 	逸然		weekly	小鸥	20210807T235959
736	tu th	rgba(27, 217, 220, 1)	20210803T140000	00:30:00	Pre-AWS 助教课	Michael	20210805T140000	weekly	Summer	20210805T235959
756	mo we fr	rgba(132, 112, 0, 1)	20210811T103000	01:30:00	数学 	Tony	20210811T103000	weekly	Summer	20210820T235959
755	mo	rgba(132, 112, 0, 1)	20210809T091500	01:30:00	数学 	Tony		weekly	Summer	20210809T235959
758	sa we	rgba(46, 221, 101, 0.53)	20210811T153000	01:30:00	英语 	心婷		weekly	小鹿	20210814T235959
759	mo th	rgba(46, 221, 101, 0.53)	20210809T140000	01:30:00	英语 	心婷		weekly	小鹿	20210812T235959
742	th mo tu we	rgba(0, 206, 209, 1)	20210809T140000	01:30:00	数学 	睿涵	20210811T140000	weekly	小鸥	20210812T235959
734	th	rgba(199, 21, 21, 0.46)	20210819T093000	01:00:00	 数学	Cady	20210819T093000	weekly	小鸥	20210826T235959
968	fr	rgba(45, 179, 45, 1)	20210827T160000	01:00:00	数学 	菲菲		weekly	小鸥	20210827T235959
993	tu	rgba(174, 133, 228, 1)	20210817T164500	01:00:00	IB经济 	Molly		weekly	牧牧	20210817T235959
994	fr	rgba(199, 21, 133, 0.46)	20210806T170000	01:00:00	语法 	Wendy		weekly	牧牧	20210806T235959
918	we fr	rgba(31, 147, 255, 0.73)	20210818T104000	01:30:00	读写课 	Steven		weekly	小鹿	20210820T235959
919	th	rgba(31, 147, 255, 0.73)	20210819T140000	01:30:00	读写课 	Steven		weekly	小鹿	20210819T235959
783	mo	rgba(123, 150, 230, 1)	20210823T111000	01:00:00	托福口语 	宜林	20210817T104500 20210817T190000	weekly	小铁	20210823T235959
782	mo	rgba(122, 148, 225, 1)	20210823T100000	01:00:00	托福听力 	宜林	20210819T104500 20210819T190000	weekly	龙猫	20210823T235959
969	mo	rgba(45, 179, 45, 1)	20210830T183000	01:00:00	数学 	菲菲		weekly	小鸥	20211227T235959
921	th we	rgba(31, 147, 255, 0.73)	20210818T173000	00:30:00	作业单词检查 	Steven		weekly	小鹿	20210819T235959
995	mo	rgba(8, 111, 8, 1)	20210802T160000	01:00:00	写作 	Nina		weekly	牧牧	20210802T235959
771	tu	rgba(30, 144, 255, 1)	20210817T093000	01:00:00	物理 	冠宇		weekly	Summer	20210817T235959
775	mo	rgba(145, 128, 36, 1)	20210816T104500	01:00:00	IG生物 	冠宇		weekly	小铁	20210816T235959
776	su	rgba(187, 0, 255, 1)	20210808T110000	01:00:00	线上经济 	Rebecca		weekly	牧牧	20210808T235959
802	mo	rgba(45, 76, 214, 1)	20210809T093000	01:00:00	托福阅读听力 	桃子		weekly	小鹿	20210809T235959
803	mo	rgba(45, 76, 214, 1)	20210823T093000	01:00:00	托福阅读听力 	桃子		weekly	小鹿	20210823T235959
804	sa	rgba(45, 76, 214, 1)	20210814T110000	01:00:00	托福阅读听力 	桃子		weekly	小鹿	20210814T235959
805	sa	rgba(45, 76, 214, 1)	20210821T140000	01:00:00	托福阅读听力 	桃子		weekly	小鹿	20210821T235959
787	fr	rgba(34, 164, 169, 0.46)	20210813T150000	01:00:00	阅读 	Mandy		weekly	龙猫	20210813T235959
788	mo	rgba(205, 168, 0, 1)	20210809T154500	01:00:00	数学 	逸然		weekly	小鸥	20210809T235959
790	mo th	rgba(232, 90, 90, 1)	20210809T104500	01:00:00	托福口语	桃子		weekly	小铁	20210812T235959
791	th tu fr sa	rgba(232, 90, 90, 1)	20210817T104500	01:00:00	托福口语 	桃子		weekly	小铁	20210821T235959
792	tu	rgba(232, 90, 90, 1)	20210810T093000	01:00:00	托福口语 	桃子		weekly	小铁	20210810T235959
793	mo	rgba(232, 90, 90, 1)	20210816T140000	01:00:00	托福口语 	桃子		weekly	小铁	20210823T235959
794	tu	rgba(232, 90, 90, 1)	20210824T140000	01:00:00	托福口语 	桃子		weekly	小铁	20210824T235959
795	th we fr	rgba(204, 90, 232, 1)	20210811T093000	01:00:00	托福写作	桃子		weekly	小鹿	20210813T235959
796	mo tu sa	rgba(204, 90, 232, 1)	20210809T190000	01:00:00	托福写作 	桃子		weekly	小鹿	20210814T235959
797	tu fr	rgba(204, 90, 232, 1)	20210817T140000	01:00:00	托福写作 	桃子		weekly	小鹿	20210820T235959
798	th we mo	rgba(204, 90, 232, 1)	20210816T163000	01:00:00	托福写作 	桃子		weekly	小鹿	20210819T235959
799	mo tu	rgba(204, 90, 232, 1)	20210823T163000	01:00:00	托福写作 	桃子		weekly	小鹿	20210824T235959
801	mo	rgba(45, 76, 214, 1)	20210816T104500	01:00:00	托福阅读听力 	桃子		weekly	小鹿	20210816T235959
809	tu th sa	rgba(27, 217, 220, 1)	20210810T110000	01:00:00	文学	Michael	20210814T110000	weekly	Summer	20210814T235959
811	th	rgba(27, 217, 220, 1)	20210819T093000	01:00:00	文学 	Michael		weekly	Summer	20210819T235959
824	tu	rgba(202, 230, 25, 1)	20210817T154500	01:00:00	数学 	Michael		weekly	小鸥	20210817T235959
816	mo	rgba(199, 21, 133, 0.46)	20210809T110000	01:00:00	阅读 	Kevin		weekly	龙猫	20210809T235959
818	mo	rgba(0, 206, 209, 1)	20210816T104000	01:30:00	数学 	睿涵		weekly	小鸥	20210816T235959
819	th tu we	rgba(0, 206, 209, 1)	20210817T140000	01:30:00	数学 	睿涵		weekly	小鸥	20210819T235959
820	fr	rgba(0, 206, 209, 1)	20210820T104000	01:30:00	数学 	睿涵		weekly	小鸥	20210820T235959
822	mo fr	rgba(0, 206, 209, 1)	20210823T104000	01:30:00	数学 	睿涵		weekly	小鸥	20210827T235959
810	tu th sa	rgba(27, 217, 220, 1)	20210817T110000	01:00:00	文学 	Michael	20210819T110000 20210821T110000 20210828T110000	weekly	Summer	20210828T235959
826	sa	rgba(202, 230, 25, 1)	20210814T140000	01:00:00	数学 	Michael		weekly	小鸥	20210814T235959
827	sa	rgba(202, 230, 25, 1)	20210821T100000	01:00:00	数学 	Michael		weekly	小鸥	20210828T235959
828	tu	rgba(202, 230, 25, 1)	20210824T154500	01:00:00	数学 	Michael		weekly	小鸥	20210824T235959
970	th	rgba(12, 228, 12, 0.5)	20210902T170000	01:00:00	语法 	菲菲		weekly	小铁	20211230T235959
832	sa	rgba(27, 50, 220, 1)	20210814T110000	01:00:00	科学 	Michael		weekly	多比	20210814T235959
834	sa	rgba(27, 217, 220, 1)	20210821T160000	01:00:00	文学 	Michael		weekly	Summer	20210828T235959
924	th	rgba(46, 221, 101, 0.53)	20210819T080000	01:30:00	英语 	心婷		weekly	小鹿	20210819T235959
870	we fr	rgba(8, 111, 8, 1)	20210818T160000	01:00:00	写作 	Nina	20210820T160000	weekly	牧牧	20210827T235959
169	su tu th	rgba(89, 158, 255, 1)	20210701T083000	01:00:00	阅读	霍品隽	20210706T083000 20210708T083000 20210704T083000 20210711T083000 20210720T083000 20210718T083000 20210715T083000 20210713T083000 20210722T083000 20210725T083000 20210727T083000 20210729T083000 20210801T083000 20210803T083000 20210805T083000 20210808T083000 20210810T083000	weekly	龙猫	20210810T235959
840	we th fr	rgba(31, 147, 255, 0.73)	20210811T104000	01:30:00	读写课 	Steven		weekly	小鹿	20210813T235959
841	tu	rgba(31, 147, 255, 0.73)	20210817T103000	01:30:00	读写课 	Steven		weekly	小鹿	20210817T235959
842	mo	rgba(31, 147, 255, 0.73)	20210816T130000	01:30:00	读写课 	Steven		weekly	小鹿	20210816T235959
843	we	rgba(46, 221, 101, 0.53)	20210818T080000	01:30:00	英语 	心婷		weekly	小鹿	20210818T235959
844	fr	rgba(46, 221, 101, 0.53)	20210820T080000	01:30:00	英语 	心婷		weekly	小鹿	20210820T235959
872	tu	rgba(199, 21, 133, 0.46)	20210817T093000	01:00:00	语法 	Wendy		weekly	牧牧	20210817T235959
845	fr	rgba(46, 221, 101, 0.53)	20210813T080000	01:30:00	英语 	心婷		weekly	小鹿	20210813T235959
846	mo	rgba(46, 221, 101, 0.53)	20210816T144500	01:30:00	英语 	心婷		weekly	小鹿	20210816T235959
849	th	rgba(31, 147, 255, 0.73)	20210812T154500	00:30:00	作业单词检查 	Steven		weekly	小鹿	20210812T235959
850	fr	rgba(31, 147, 255, 0.73)	20210813T140000	00:30:00	作业单词检查 	Steven		weekly	小鹿	20210813T235959
873	we	rgba(199, 21, 133, 0.46)	20210818T110000	01:00:00	语法 	Wendy		weekly	牧牧	20210818T235959
883	tu fr	rgba(255, 0, 94, 0.93)	20210817T104500	01:00:00	化学 	冠宇		weekly	龙猫	20210820T235959
888	we	rgba(250, 212, 0, 1)	20210818T093000	01:00:00	写作 	Eva		weekly	牧牧	20210818T235959
874	th	rgba(199, 21, 133, 0.46)	20210819T141500	01:00:00	语法 	Wendy		weekly	牧牧	20210819T235959
855	sa	rgba(0, 206, 209, 1)	20210814T100000	01:00:00	阅读语法 	Edward	20210821T100000	weekly	小铁	20210828T235959
856	sa	rgba(0, 206, 209, 1)	20210821T093000	01:00:00	阅读语法 	Edward		weekly	小铁	20210821T235959
857	th	rgba(132, 112, 0, 1)	20210812T093000	01:30:00	数学 	Tony		weekly	Summer	20210812T235959
859	we	rgba(13, 155, 157, 1)	20210818T093000	01:00:00	 数学	Simon		weekly	小鸥	20210825T235959
860	fr	rgba(13, 155, 157, 1)	20210820T171500	01:00:00	 数学	Simon		weekly	小鸥	20210827T235959
861	mo	rgba(13, 155, 157, 1)	20210823T154500	01:00:00	 数学	Simon		weekly	小鸥	20210823T235959
867	tu	rgba(179, 2, 255, 1)	20210817T181000	01:00:00	数学 	Nina	20210824T181000	weekly	小鸥	20210824T235959
886	su	rgba(51, 133, 211, 1)	20210822T140000	01:30:00	IB经济 	Lora		weekly	牧牧	20210822T235959
869	th	rgba(179, 2, 255, 1)	20210819T184000	01:00:00	数学 	Nina		weekly	小鸥	20210826T235959
879	mo	rgba(0, 206, 209, 1)	20210830T103000	01:30:00	数学 	睿涵		weekly	小鸥	20210830T235959
880	mo	rgba(30, 144, 255, 1)	20210816T093000	01:00:00	物理 	冠宇		weekly	Summer	20210816T235959
890	tu	rgba(27, 50, 220, 1)	20210810T140000	01:00:00	科学 	Michael		weekly	多比	20210810T235959
831	th sa tu	rgba(27, 50, 220, 1)	20210819T140000	01:00:00	科学 	Michael		weekly	多比	20210828T235959
892	th	rgba(27, 50, 220, 1)	20210812T140000	01:00:00	科学 	Michael		weekly	多比	20210812T235959
895	th		20210819T110000	01:00:00	 语法	诗雅		weekly	小鹿	20210819T235959
925	mo tu we th fr	rgba(255, 140, 0, 1)	20210823T093000	01:30:00	语法	Danny & Norman		weekly	小铁	20210831T235959
971	we	rgba(0, 206, 209, 1)	20210804T190000	01:30:00	数学 	睿涵		weekly	小鸥	20210804T235959
973	fr	rgba(0, 206, 209, 1)	20210813T161500	01:30:00	数学 	睿涵		weekly	小鸥	20210813T235959
997	fr	rgba(8, 111, 8, 1)	20210820T180000	01:00:00	写作 	Nina		weekly	牧牧	20210820T235959
900	mo	rgba(199, 21, 133, 0.46)	20210816T110000	01:00:00	阅读 	Kevin		weekly	龙猫	20210816T235959
902	sa	rgba(132, 112, 0, 1)	20210821T110000	01:00:00	数学 	天歌		weekly	小鸥	20210821T235959
1021	su	rgba(51, 133, 211, 1)	20210815T210000	01:30:00	IB经济 	Lora		weekly	牧牧	20210815T235959
1022	tu	rgba(51, 133, 211, 1)	20210810T160000	01:30:00	IB经济 	Lora		weekly	牧牧	20210810T235959
676	tu	rgba(51, 133, 211, 1)	20210817T103000	01:30:00	IB经济 	Lora	20210831T103000	weekly	牧牧	20210831T235959
1023	fr	rgba(187, 0, 255, 1)	20210813T160000	01:00:00	线上经济 	Rebecca		weekly	牧牧	20210813T235959
821	th tu we	rgba(0, 206, 209, 1)	20210824T140000	01:30:00	数学 	睿涵	20210826T140000	weekly	小鸥	20210826T235959
682	mo tu we th fr	rgba(250, 212, 0, 1)	20210806T140000	00:45:00	阅读 	Lucy	20210826T140000	weekly	龙猫	20210827T235959
1024	fr	rgba(255, 69, 0, 1)	20210827T190000	01:30:00	AWS助教 	孺亦		weekly	小鹿	20210827T235959
1026	we	rgba(122, 148, 225, 1)	20210901T170000	01:00:00	科学 	Lulu		weekly	多比	20211027T235959
1028	sa	rgba(122, 148, 225, 1)	20210828T153000	01:00:00	科学 	Lulu		weekly	多比	20210828T235959
1030	we	rgba(13, 155, 157, 1)	20210901T153000	01:00:00	 数学	Simon		weekly	小鸥	20211229T235959
1032	mo	rgba(30, 144, 255, 1)	20210830T151000	01:00:00	词汇 	Nova		weekly	多比	20210830T235959
1033	mo	rgba(255, 120, 0, 1)	20210830T140000	01:00:00	读写课 	Nova		weekly	龙猫	20210830T235959
1002	fr	rgba(255, 120, 0, 1)	20210903T170000	01:00:00	读写课 	Nova	20210903T170000	weekly	龙猫	20211231T235959
1031	sa	rgba(169, 17, 17, 1)	20210904T111000	01:00:00	IB数学 	Cecilia		weekly	小铁	20210904T235959
1034	we	rgba(250, 212, 0, 1)	20210901T170000	01:00:00	数学 	Laura		weekly	小鸥	20211229T235959
1037	su	rgba(31, 147, 255, 0.73)	20210829T140000	01:30:00	读写课 	Steven		weekly	小鹿	20210829T235959
1038	su	rgba(31, 147, 255, 0.73)	20210829T153000	00:30:00	作业单词检查 	Steven		weekly	小鹿	20210829T235959
920	su	rgba(31, 147, 255, 0.73)	20210829T090000	01:30:00	读写课 	Steven	20210829T090000	weekly	小鹿	20210905T235959
1065	th	rgba(122, 148, 225, 1)	20210902T180000	01:00:00	写作 	Sam		weekly	牧牧	20210902T235959
1043	sa	rgba(0, 206, 209, 1)	20210904T150000	01:30:00	数学 	睿涵		weekly	小鸥	20211113T235959
1044	we	rgba(8, 111, 8, 1)	20210901T160000	01:00:00	写作 	Nina		weekly	牧牧	20211229T235959
1045	fr	rgba(8, 111, 8, 1)	20210903T180000	01:00:00	写作 	Nina		weekly	牧牧	20211231T235959
1029	sa	rgba(122, 148, 225, 1)	20210904T110000	01:00:00	写作 	Sam	20210904T110000	weekly	牧牧	20211113T235959
1046	sa	rgba(0, 206, 209, 1)	20211120T150000	01:30:00	数学 	睿涵		weekly	小鸥	20211120T235959
1047	we	rgba(237, 118, 12, 1)	20210728T160000	01:00:00	语法 	李拓		weekly	牧牧	20210728T235959
1048	fr	rgba(237, 118, 12, 1)	20210730T160000	01:00:00	语法 	李拓		weekly	牧牧	20210730T235959
1049	tu	rgba(225, 146, 50, 1)	20210713T160000	01:00:00	科学 	李拓		weekly	多比	20210713T235959
1050	fr	rgba(225, 146, 50, 1)	20210723T161500	01:00:00	科学 	李拓		weekly	多比	20210723T235959
1052	th	rgba(199, 21, 133, 0.46)	20210715T160000	01:00:00	阅读写作 	李拓		weekly	Summer	20210715T235959
1053	th tu	rgba(199, 21, 133, 0.46)	20210727T160000	01:00:00	阅读写作 	李拓		weekly	Summer	20210729T235959
936	we	rgba(255, 69, 0, 0.68)	20210908T193000	01:00:00	物理	刘行		weekly	小鸥	20211229T235959
1054	tu th	rgba(250, 212, 0, 1)	20210831T180000	01:00:00	阅读 	Lucy		weekly	龙猫	20211230T235959
1055	sa	rgba(174, 133, 228, 1)	20210904T130000	01:00:00	IB经济 	Molly		weekly	牧牧	20211002T235959
1056	sa	rgba(224, 24, 24, 1)	20210904T140000	01:00:00	AWS二期 	子杰		weekly	牧牧	20210925T235959
1057	fr	rgba(163, 43, 67, 1)	20210910T190000	01:00:00	AWS二期助教课 	郑子杰		weekly	Summer	20211001T235959
1058	su	rgba(163, 43, 67, 1)	20210905T160000	01:30:00	AWS二期助教课 	郑子杰		weekly	Summer	20210926T235959
1060	we sa	rgba(255, 140, 0, 1)	20210828T110000	01:30:00	语法	Danny & Norman		weekly	小铁	20210828T235959
894	th		20210819T093000	01:00:00	语法	诗雅		weekly	小鹿	20210819T235959
1061	we	rgba(31, 147, 255, 0.73)	20210901T190000	01:00:00	语法 	Queenie(John)		weekly	小铁	20210901T235959
1066	su	rgba(122, 148, 225, 1)	20210905T130000	01:00:00	数学 	Molly		weekly	小艾	20210926T235959
1068	su	rgba(228, 44, 20, 1)	20210905T140000	01:30:00	数学 	泽霖		weekly	小艾	20211226T235959
1067	sa	rgba(208, 178, 17, 1)	20210904T140000	01:00:00	数学 	李拓		weekly	小艾	20211106T235959
1069	fr	rgba(51, 133, 211, 1)	20210903T170000	01:00:00	IB经济 	Lora		weekly	牧牧	20210903T235959
1041	we fr	rgba(51, 133, 211, 1)	20210901T193000	01:00:00	IB经济 	Lora	20210903T193000	weekly	牧牧	20211001T235959
1062	we	rgba(31, 147, 255, 0.73)	20210903T190000	01:00:00	语法 	Queenie(John)		weekly	小铁	20211029T235959
1070	sa	rgba(31, 147, 255, 0.73)	20210904T100000	01:00:00	语法 	Queenie(John)		weekly	小铁	20211030T235959
\.


--
-- Data for Name: event_response; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.event_response (id, date, event_id, responded_ha, feedback) FROM stdin;
1	1622946600000	73	t	\N
2	1624156200000	73	t	\N
5	1622876400000	99	t	\N
8	1620291600000	63	t	\N
9	1620896400000	63	t	\N
10	1621501200000	63	t	\N
11	1622106000000	63	t	\N
12	1622710800000	63	t	\N
13	1623315600000	108	t	\N
14	1623920400000	108	t	\N
18	1622428800000	96	t	\N
1307	1629687600000	602	t	【刘行】2021年08月23日 周一  中学语法课 Lesson 06\n\n课堂表现：\n今天我们进入到并列句了，再接下里就是从句。刘行要做好复习哦！\n\n今日重点：\n1.分词\n2. 不定式\n3. 并列连词\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
114	1623979800000	104	t	\N
115	1624325400000	104	t	\N
116	1624411800000	104	t	\N
1318	1629509400000	856	t	8月21日 Edward 英文课反馈\n课堂内容：逐字逐句精读《Greek Myth》第八章\n\n今天 Edward 小同学表现不错，他说上周姥姥给他买了很多乐高，所以很开心。我们在学习proud（自豪）这个词的时候，他很快能想到 I'm proud of making many Legos.\n\n作业：\n1. 抄写单词：\nlabours 劳动\nreputation 名声\nunknown 未知的\nhide 兽皮\ntrample 践踏\naccurate 准确的\n\n2. 写作作业
7	1619686800000	63	t	
21	1622686500000	42	t	\N
23	1621144800000	124	t	\N
24	1621749600000	124	t	\N
25	1622354400000	124	t	\N
26	1622959200000	124	t	\N
27	1624168800000	124	t	\N
28	1624773600000	124	t	\N
29	1624499100000	148	t	\N
31	1619604900000	62	t	\N
32	1620378000000	106	t	\N
33	1620814500000	62	t	\N
34	1621419300000	62	t	\N
35	1621587600000	106	t	\N
36	1622024100000	62	t	\N
37	1622192400000	106	t	\N
38	1622628900000	107	t	\N
39	1622797200000	98	t	\N
40	1623233700000	107	t	\N
41	1623838500000	107	t	\N
42	1624006800000	98	t	\N
43	1624611600000	98	t	\N
44	1625043600000	98	t	\N
121	1623477600000	70	t	kelland 的数学整体来说是在进步的，学校老师也鼓励她去挑战更难的题目。根据成绩单中的反馈，我觉得接下来她需要提升的能力模块是“把数学运用到实际生活场景”，我们会在课堂上多分析一些文字问题。
46	1625648400000	98	t	7月7日 Queenie 英文课反馈\n这节课我们学习了Lesson 2，难度要比上节课大一些，像 launch 这个词有“船首次下水”的意思，在中文中都没有对应的单词可以直接对应。这就要求我们多学习英文释义。\n\n作业：\n1. wordlywise 课本上的 Page 17-20 完成 2E 阅读部分
51	1622511600000	39	t	\N
52	1623116400000	39	t	\N
53	1623721200000	39	t	\N
56	1624433400000	136	t	\N
57	1624519800000	137	t	\N
58	1624606200000	136	t	\N
59	1625038200000	277	t	\N
62	1622345400000	461	t	\N
65	1620453600000	132	t	\N
66	1621058400000	132	t	\N
67	1621663200000	132	t	\N
68	1622872800000	132	t	\N
69	1623477600000	132	t	\N
70	1622545200000	40	t	\N
71	1622718000000	40	t	\N
72	1623150000000	40	t	\N
73	1623754800000	40	t	\N
74	1623322800000	40	t	\N
76	1620127800000	61	t	\N
77	1620214200000	61	t	\N
78	1620819000000	61	t	\N
79	1620732600000	61	t	\N
80	1621337400000	61	t	\N
81	1621423800000	61	t	\N
82	1621942200000	61	t	\N
83	1622028600000	61	t	\N
84	1622547000000	61	t	\N
85	1622943000000	72	t	\N
86	1623151800000	61	t	\N
87	1623238200000	61	t	\N
88	1623481200000	103	t	\N
89	1623756600000	61	t	\N
90	1624447800000	61	t	\N
91	1624966200000	61	t	\N
94	1621065600000	71	t	\N
95	1621670400000	71	t	\N
97	1622032800000	117	t	\N
98	1622119200000	117	t	\N
99	1622275200000	71	t	\N
101	1622881800000	327	t	\N
104	1623553200000	119	t	\N
105	1622862000000	69	t	\N
106	1623466800000	69	t	\N
107	1624071600000	69	t	\N
108	1624676400000	69	t	\N
110	1623218400000	105	t	\N
111	1623391200000	105	t	\N
112	1623736800000	105	t	\N
113	1623823200000	105	t	\N
122	1624082400000	70	t	\N
123	1621044000000	68	t	\N
124	1621648800000	68	t	\N
125	1622253600000	68	t	\N
126	1622858400000	68	t	\N
127	1623463200000	68	t	\N
128	1624672800000	112	t	\N
129	1624068000000	112	t	\N
130	1619433300000	101	t	\N
131	1620642900000	101	t	\N
132	1621247700000	101	t	\N
133	1621852500000	101	t	\N
134	1622457300000	101	t	\N
135	1623062100000	101	t	\N
137	1622964600000	75	t	\N
144	1624946400000	328	t	Lawrence 第一天的口语作业讲评，我来做个小总结：\n1. Lawrence 举例子的结构特别好，但是例子中故事的情节不够具体，例如说泛泛而谈：do something good，可以改成具体做的一件事（clean the room）；还有自信的体现，不只是说 confident，而是说 I feel like I'm being helpful.\n\n2. 语调方面太过平，建议学会强调时用上重音和停顿。
1240	1629262800000	681	t	8月18日 Lucy writing class 反馈\n\n我们今天主要学习的是介词的形式转化，Lucy 对代词的主格，宾格以及形容词格都比较熟悉，但是对反身代词（myself, yourself 等）和 物主代词（mine，yours 等）还是不够清楚。Lucy 上课的表现比较正常，能够回答老师的问题， 对于自己做错的地方能够改正，但是还是会稍微有一些走神，导致做题的速度会比较慢。
153	1623751200000	203	t	\N
161	1622787300000	205	t	\N
1308	1629423000000	617	t	08.20 刘行 物理课后反馈：\n这节课让刘行通过章节习题，review了下电学的电路问题。总体来说掌握的还是很不错的，不过还是要注意一点，在看电路图时，可以把电压表的部分擦掉，电流表看成导线，然后再去分析电路图是那种电路。
141	1625464800000	127	t	7月5日 Tico 物理课反馈\n今天我们复习了速度、加速度和相关的运动图像分析，Tico 对速度方面的理解还是不错的，但是加速度她就觉得比较难了。\n\n下课后根据例题去进行独立计算，一定要明天下午之前交作业哦！
146	1625017500000	340	t	\N
1310	1629513900000	791	t	8月21日 桃子托福口语课反馈\n课堂内容：托福口语全套车轮战\n\n今天桃子的独立口语依旧讲得很好，虽然有遇到一些没思路的题型，但是我们发现都是可以跟之前有的语料挂钩的，诀窍是一定要把题目中的关键词细化，找小的切入点，例如公园的具体受益对象是热爱锻炼的老人。\n\n综合口语的发挥有些不稳定，一部分原因是因为模板不够简洁，另一部分原因是面对难题的经验还不足。\n\n作业：\nDay 5（下节口语课前完成）
1314	1629532800000	834	t	Michael 8月21日文学课反馈\n \n内容：drama介绍+Shakespeare介绍\n表现：今天我们进入Drama的学习了哈，主要是简单介绍了drama以及莎士比亚的相关内容，我们也会从麦克白入手进行学习，Michael都能理解，不过对于什么是conflict说不太上来，conflict是drama里很重要的部分，不仅要能理解也要能输出哈\n \n作业：修改上节课作业
1317	1628766000000	950	t	8月12日 宜林 托福听力 反馈\n\n\n宜林有一段时间没有练过听力了，看得出生疏了很多，做题速度和正确率都有所下降，需要最近多去熟悉一下题目。我们今天主要讲的是艺术史类的听力材料，其中大多数都是目的题，也就是提问教授举例或者讲故事的目的是什么。对于这种题目，宜林需要注意的是，在意识到这是一个例子或者故事的时候，第一时间要去提醒自己这个故事或者例子的目的是什么，为什么教授要提及这些东西。
1319	1629426600000	756	t	Tony  8月20日数学课反馈\n \n内容： IG三角函数+AS/IG function复习\n表现：作业都做得很好哈，除了一道题没思路，主要是没想到公式，题目背景稍微复杂了些，三角函数的2D/3D的题目我们都过了一遍不错哈~Function的题目中反函数还记得，但是domain的小细节会漏或者和range混起来，这两个点要分清楚，今天作业专门再练一下这些题\n \n作业：课本相关function题目
1323	1629457200000	547	t	子杰 8月20日写作助教课反馈\n \n内容：evidence讲解，Fallicies详解\n表现：昨天课堂状态很好，作业还需要花点时间哈，主要是能够自己通过google找到一些idea，evidence就能比较有方向~Fallacies种类掌握都挺好的，特别是analogy现在有比较大进步哈\n\n作业：evidence2题+fallacies2题（文档里红色标注）
156	1623150000000	204	t	\N
176	1622712600000	194	t	\N
177	1624267800000	194	t	\N
1241	1629266400000	682	t	8月18日 Lucy writing class 反馈\n\n我们今天主要学习的是介词的形式转化，Lucy 对代词的主格，宾格以及形容词格都比较熟悉，但是对反身代词（myself, yourself 等）和 物主代词（mine，yours 等）还是不够清楚。Lucy 上课的表现比较正常，能够回答老师的问题， 对于自己做错的地方能够改正，但是还是会稍微有一些走神，导致做题的速度会比较慢。
1309	1629439200000	609	t	08.20 刘行 数学课后反馈：\n这节课讲解了图像的积分求法，分为对x的积分和对y的积分两种类型。需要先明确左右极限或者上下极限，再用上限函数 - 下限函数得出积分的表达式，再去求解。\n这部分的内容比较难，所以我们会多花一些时间来讲解。
1242	1629337500000	312	t	反馈【泽霖】2021年08月19日 周四  中学语法课 Lesson 15\n\n课堂表现：\n泽霖名词性从句的作业写得很好，全对！但是句子分析开始退步了哈，看来需要找找感觉了。\n\n今天重点：\n1. 宾语从句\n2.时态\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
148	1623488400000	226	t	\N
150	1624698000000	226	t	\N
151	1622541600000	203	t	\N
154	1624960800000	203	t	\N
155	1622545200000	204	t	\N
158	1624687200000	242	t	\N
159	1622614500000	205	t	\N
163	1622806200000	213	t	\N
165	1623411000000	213	t	\N
168	1622619000000	206	t	\N
173	1622882400000	28	t	\N
174	1623487200000	28	t	\N
1311	1629682200000	618	t	08.23 刘行 物理课后反馈：\n今天讲解了magnet（磁），磁极分为N极和S极，并且磁感线外部由N指向S，内部由S指向N，且不会重叠及交叉。磁性材料分为硬磁（steel）和软磁（iron），硬磁为永磁体，软磁为暂时性磁体。\n今天讲解的概念自己梳理下，明天讲解电磁方面的运算。
186	1624611600000	43	t	\N
410	1624777200000	317	t	\N
411	1622941200000	94	t	\N
413	1624003200000	175	t	\N
414	1624154400000	177	t	\N
143	1625810400000	127	t	Tico 7月9日物理课反馈\n讲解/练习的重点：平均速度、加速度、距离的计算；密度相关的实验题；胡克定律\n\nTico 目前在写作业的时候，已经会去写过程了，但是她很不自信，写完就擦掉了。\n这样的话，讲评的时候就忘记自己之前的思路是什么。所以说，要先改变心态，写过程是必须的，也要相信自己是对的！物理是注重思考过程大于计算结果的学科。
142	1625637600000	127	t	7月7日 Tico 物理课反馈\n这节课的重点知识：复习速度、加速度，新学质量、重力和密度\n\nTico 告诉我上次物理作业中遇到的困难是文字题，看到太多的英文就觉得题目一定很难。所以前半节课我们就练习了如何把英文题翻译成物理表达式。\n\n另外，在看数学图像的时候，关于横轴和纵轴分别代表的物理量是什么，需要 Tico 主动去关注并辨别。
145	1624844700000	340	t	\N
1315	1629525600000	831	t	0821 科学课反馈\n主要内容：\n- Introduction to Atom\n\n课堂反馈：\n上一份作业Michael完成得还行，还是有出现读题不够准确的情况（比如题目是让你介绍Phototropism，还是问phototropism发生的部位）。\n\n今天我们学习了与原子相关的基本概念。Michael课上能够保持积极主动。我们还通过一个网络互动实验来帮助Michael理解原子学说的发展过程。Michael对于原子（电子、质子、中子）的概念还是比较熟悉的，但是对于如何去描述原子（原子数、质量数、同位素）还比较生疏，需要再复习。\n\n最后还有一个视频，是讲述原子学说发展历程的。\n\n作业：\n - Assignment. Introduction to Atom\n - 完成本节课quizlet的制作\nQuizlet词汇列表: matter, atom, John Dalton, J.J. Thomson, Ernest Rutherford, Niels Bohr, James Chadwick, (有人名的词条，写那个人对原子理论的贡献哈)nucleus, proton, neutron, atomic mass unit, electron, electron cloud, atomic number, mass number, isotope.
1320	1629612000000	886	t	【Lora】2021年08月22日 周天  糯米经济学 IB 宏观知识点精讲课 07\n\n课堂表现：\nLora这次的进步蛮大的，作业正确率和完整度提高了很多。继续保持哦！\n\n今天重点：\n1. Economic Growth\n\n课后任务：\n1. 完成作业
1321	1629525600000	725	t	8月21日 琦岚数学课反馈\n课堂内容：作业讲评+分数的应用题读题方法\n\n这次讲评了前 2 次的作业，内容比较多，间隔的时间比较长了，所以琦岚好多地方想不起来之前是怎么做的，以后还是要在作业上写清楚过程，我们才好分析做错的原因。我从结果分析，可能是主要有两方面还不熟练：1、分数的乘法消除公因数后的步骤；2、分数加法的通分。\n\n这周学的计算题是一个挑战，要耐心一点，仔细读题。
1322	1629543600000	548	t	子杰 | 8月21日 写作助教课反馈\n \n内容： fallacy讲评，Evidence&Topic sentence讲评\n表现：fallacy都能很好的理解，也能判断类型并举出相应的例子，很棒哈~今天还是再花时间过了Topic sentence和evidence，子杰在部分题目的topic sentence上现在的问题是想法比较少，所以会不知道写什么，这个就是要多积累了哈；以及topic sentence有时候写得比较vague，像是reasoning，注意要能表达出观点+summary段落，基本是在present2-3个事物之间的关系，概括能力还需要加强哈\n \n作业：继续完成topic sentence&evidence一题
1312	1629682200000	925	t	8月23日暑假语法集训反馈\n课堂重点内容：主谓一致\n\n今天的课程中我们从最基础的主谓一致开始，先复习了基本的句子结构，动词和名词的单复数形式。然后再延伸到了如何区分名词是否可数、如何去判断复杂句中主语的单复数。8月23日语法作业\n1. 《Learning Grammar》第2-4页，第66-68页\n2. 《Conquer Grammar》第1页\n3. 选做作业：《Conquer Grammar》第5页
147	1622883600000	226	t	\N
152	1623146400000	203	t	\N
160	1622700900000	205	t	\N
169	1623223800000	206	t	\N
170	1623828600000	206	t	\N
171	1625038200000	322	t	\N
1313	1629417600000	844	t	8月20日 英语课反馈\n主要内容：复习+学习新的几何相关英语内容。\n\n今天学习了角的关系，相交和平行形成的不同的角怎么说，有什么特征。还有带心婷读一些文字题。\n\n现在心婷的理解能力有进步了，慢慢在利用我们最近学的内容去读懂题目。不过还要更自信一点，大胆猜测小心验证。\n昨天忘写英语作业了，今天继续写\n\n作业：昨天的英语题，抄单词。
175	1624673400000	164	t	\N
172	1622453400000	194	t	\N
194	1622957400000	87	t	\N
179	1625472000000	262	t	内容：今天正好我们语法也讲到了比较级的内容，主要讲到形容词如何变化，以及什么时候加 er 什么时候加 more。多比教她的 多比原则，对于比较短的形容词加 er ，我教她的 long more 原则，对于长的形容词要加 more 不加 er ，回去可以一起问问她还记不记得。\n表现：基本上写的她很积极，但是到读的时候会比较抗拒，不知道为什么她会有点抗拒读，我觉得是不是家里的读的时候妈妈给的压力有点大，我们稍微放轻松一点就行。\n
192	1626242400000	520	t	慧卿 | 7月14日 英语课反馈\n\n今天带慧卿学了初级语法的前两课：who，am， are，is，you，i，he，she这些搭配的问题。 顺便学了遇到的生词意思和发音。\n\n慧卿今天态度比较好，有些内容是她会的，所以她表现出来更多信心，也更愿意尝试。
180	1625644800000	262	t	 Nova 丨0707 读写课反馈\n今天我们讲的语法内容包括：\ncan 和 cannot 的使用方式\nand,or,but 的区别 （这一块 Nova 判断的很快，逻辑很强）\n以及如何区分普通，比较，最高级形容词的使用场景。\n上课表现非常不错，现在基本上能够适应这种学习方式，掌握的速度也很快，一个字，棒
181	1626076800000	262	t	Nova 丨 0712  课堂反馈\n\n今天的内容是 Question words，也就是学习如何去使用 wh 开头的疑问句，今天主要是让 Nova 去熟悉 when,what,who,which 这四个 wh 疑问词。Nova 目前的掌握情况还算理想，需要我告诉她问题以后她才能写出是用哪一个，这个知识点目前对于 Nova 来说难的地方在于他需要 Nova 能够完全理解问答的内容，可能是一个比较大的挑战，我会在下节课继续带 Nova 一起去熟悉这个内容，
182	1626249600000	262	t	Nova 丨 0714 读写课反馈\n\n今天我们继续讲 question words ，因为涉及到的 question words 比较多，我决定多花一个课时的时间来讲。今天更详细地讲了几个 WH 的疑问词具体应该使用在什么地方，并且和 Nova 互相使用疑问词进行问答。感觉今天 Nova 上完第一节课以后会有点累，打了一会儿哈欠，整体表现都还不错，但是有时候会不好好回答问题。现在开始语法内容会有点难了我会放慢一下学习的速度，让 Nova 多熟悉。
184	1623402000000	43	t	\N
185	1624006800000	43	t	\N
188	1625467500000	138	t	内容：形容词的比较级和最高级 part 2（more... than..., the most ...）\n表现：大部分时候，Nova能够积极回答老师问题，并一起完成板书和听力。可能是还没习惯新的上课时间，所以中间有一小段时间会显得比较累。\n
189	1625640300000	138	t	Nova | 0707 词汇听力课反馈\n内容：剑桥 A1 Mover Listening Part 1的听力练习，以及通过题目中的图例练习词汇。\n\n表现：Nova能够与老师积极互动，完成对听力题图中出现的词汇整理以及人物描述。其中，Nova比较不熟悉的词汇包括：a basket of 一篮 , wheel 轮子，sausage 香肠， lettuce 生菜 ，candle 蜡烛，sandle 凉鞋。\n
190	1626072300000	138	t	Nova | 0712 词汇听力课反馈\n内容：\n - 副词与形容词，常用副词\n表现：Nova在整体上能够跟上老师的思路，将常见的形容词转化为副词并造句。不过，在少数情况下，还是会开小差，把精力移到画画上面。\n提醒：\n上周三还有一张单词练习记得在这周三的课之前完成。
191	1626245100000	138	t	Nova | 0714 词汇听力课反馈\n\n内容：剑桥 A1 Mover Listening Part 2的听力练习，以及通过题目中的图例练习词汇。\n表现：今天Nova的状态很好。能够迅速地理解听力内容，抓住关键信息，并填写练习中空缺的词。\n比较不熟悉的词：lemonade 柠檬水，information 信息\n\n
193	1624167000000	87	t	\N
195	1626328800000	520	t	\n慧卿|7月15号 英语课反馈\n今天英语课也挺认真，学了指示代词，不定冠词，be动词的否定。\n\n题目中有她会写的题就会比较积极，然后遇到掌握得不太好的，也会努力去思
196	1626231600000	521	t	7 月 14 日 慧卿数学课反馈\n课堂重点：代数表达式的含义，从文字表达转换为代数表达\n\n今天慧卿学习很认真，一进课室先把手机调静音了，然后上课该写的时候都动笔写了。我们熟悉数学中各式各样的字母表达式，算是迈出了第一步。上课的练习题，基本都做对了。\n\n重点单词：\nadd\nsubtract\nmore than \nless than\n\n
197	1626316200000	524	t	7月15日 慧卿数学课反馈\n课堂重点内容：Evaluation Algebraic Expressions\n\n把数字代回代数式中，这是我之前观察到慧卿无法理解的一个知识点，今天是彻底弄懂了，因为作业基本全对。还有一些运算顺序搞混的问题，接下来慢慢巩固
198	1626066000000	434	t	【Eva】2021年07月12日 周一  Pre-AWS 第一季 Lesson 03\n\n课堂表现：\n今天花了点时间在作业上，所以原定的内容没讲完，下节课再讲。 Eva 不用太担心自己的句子写的好不好，只要想到就写下来，我们可以慢慢把句子变得更好！加油！\n\n今日重点：\n1. Concluding Sentences 的四个工具
199	1626238800000	434	t	【Eva】2021年07月14日 周三  Pre-AWS 第一季 Lesson 04\n\n课堂表现：\n今天作业进步很大！文章写得很完整了！继续保持哦！\n\n今日重点：\n1.Purpose Statement\n2. Persons \n\n
200	1626156000000	474	t	反馈【Lucas】2021年07月13日 周二  中学语法课 Lesson 01\n\n课堂表现：\nLucas 今天状态很好，很积极的在记笔记，理解的也很快。一定记住，先复习再做作业！\n\n今天重点：\n1. Noun
201	1626328800000	474	t	反馈【Lucas】2021年07月15日 周四  中学语法课 Lesson 02\n\n课堂表现：\nLucas 在学新东西的时候都吸收的很快，但是忘的也很快。一定记住在做作业前先复习笔记，不复习不准写作业。\n\n今天重点：\n1. 作业讲评 - Subject Verb Agreement\n2. Verb\n
202	1626076800000	479	t	0712 Lucas Pre-IG 科学课反馈\n主要内容：\n - 科学课入学测试的讲评与反馈\n - 细胞学说\n课堂表现：\nLucas能够积极配合老师讨论科学概念，完成课上的例题。上课过程中，Lucas可以主动一点记录不懂的英文单词， 比如： compressed, molecule。这些词汇虽然不是本堂课的重点，但是在将来你科学课的阅读中还是会遇到的。
208	1626229800000	361	t	\n诗雅 | 7月14日 词汇课反馈\n \n内容： 上节课重点内容复习检测，句子翻译练习，常见形容词名词后缀\n表现：周日检测的部分词根词缀重点诗雅能想起来哈，不过把前缀后缀拿掉后的词诗雅就联想不起来，即使是在句子中也觉得很陌生，所以这一周诗雅要专门复习一下形容词名词和否定前缀后缀，这些一定要不断熟悉成为猜词工具；句子翻译得还不错，注意一下roar和howl语境的区别，以及howl在不同情境中的运用，还有voice和sound的区别；
210	1626072900000	496	t	诗雅 | 7 月 12 日 语法课 3、4 反馈\n\n内容：今天学习了 动词、形容词、副词 的形式、功能以及特别用法\n\n表现：诗雅在学习这类带规则的知识时，总结和归类的习惯很好。上课很认真，会积极思考并及时提出问题。\n
211	1626224400000	354	t	诗雅 | 7 月14 日 语法课5 反馈\n\n内容：今天学习了介词，讲评了前一次的作业\n\n表现：对于用介词短语表示位置、时间，诗雅都理解掌握得不错，另外有些介词也可以作为连词连接从句，这部分特别需要诗雅注意这种从句和主句的问题，是容易出错的。\n\n上次的形容词作业涉及很多“常用搭配”是需要诗雅积累的。\n
213	1625810400000	178	t	\n\n【Rebecca】2021年07月09日 周三  糯米经济学 IB 微观知识点精讲课 08\n\n课堂表现：\nPaper 1 现在发挥稳定，但是你忘记定义terms这点，也发挥很稳定。下次再忘记，就抄定义了哈！\n\n今天重点：\n1. Monopoly\n
1243	1629336600000	811	t	Michael 8月19日文学课反馈\n \n内容：devices分析\n表现：之前课程的device有记得80%还不错哈，anaphora/sonic devices忘记了，所以在新的句子中没有马上反应出来anaphora，这两块还要再复习一下哦，对于偏于religion部分的内容Michael不太能理解，这个慢慢来没事；结尾Michael自己能分析挺好的；课上不愿意读诗那就课后完成哈~\n \n作业：1. 分析最后一句话，重点解释“wild””precious”（写在文档里） 2. 富有情感地读诗并录音
1324	1630216800000	923	f	\N
204	1626231600000	517	t	0714 Lucas Pre-IG 科学课反馈\n主要内容：\n -  复习真核生物和原核生物\n -  生命化学基础\n\n课堂表现：\nLucas在笔记方面有进步，能够主动记录科学图例（细胞膜结构）以及重要的科学概念。今天也遇到了几个比较难读的科学词汇（osmosis, flagellum, flagella, phospholipid），课后记得再熟悉一下
209	1626069000000	495	t	诗雅 | 7 月 12 日 语法课 3、4 反馈\n\n内容：今天学习了 动词、形容词、副词 的形式、功能以及特别用法\n\n表现：诗雅在学习这类带规则的知识时，总结和归类的习惯很好。上课很认真，会积极思考并及时提出问题。\n
212	1625637600000	178	t	  糯米经济学 IB 微观知识点精讲课 07\n\n课堂表现：\nPaper 1 现在进步巨大，唯一要注意的就是不要漏掉定义部分。\n\n今天重点：\n1. Cost\n2. Perfect Competition\n
214	1626242400000	178	t	\n\n【Rebecca】2021年07月14日 周三  糯米经济学 IB 微观知识点精讲课 09\n\n课堂表现：\n这几次课都在巩固 firm theory的知识点。比较琐碎，可以好好利用讲义把知识点整理好！\n\n今天重点：\n1. Monopoly\n
216	1622511600000	9	t	\N
218	1622802000000	24	t	\N
219	1622534400000	10	t	\N
220	1622708100000	19	t	\N
221	1622798100000	23	t	\N
222	1623139200000	10	t	\N
223	1623312900000	19	t	\N
224	1623402900000	23	t	\N
225	1623744000000	10	t	\N
226	1623917700000	19	t	\N
227	1624515300000	34	t	\N
228	1624518900000	35	t	\N
229	1624601700000	34	t	\N
230	1624605300000	35	t	\N
231	1624860900000	34	t	\N
232	1624864500000	35	t	\N
233	1624947300000	34	t	\N
234	1624950900000	35	t	\N
235	1625033700000	34	t	\N
236	1625037300000	35	t	\N
237	1622618400000	14	t	\N
238	1622689200000	18	t	\N
239	1622774400000	20	t	\N
240	1623808800000	157	t	\N
241	1623981600000	157	t	\N
242	1624240800000	157	t	\N
243	1624415400000	33	t	\N
244	1624588200000	33	t	\N
245	1622791800000	21	t	\N
246	1624503600000	163	t	\N
247	1622946600000	30	t	\N
248	1623551400000	30	t	\N
249	1622543400000	12	t	\N
250	1622621700000	15	t	\N
251	1623148200000	12	t	\N
252	1622795400000	22	t	\N
253	1623226500000	15	t	\N
254	1623400200000	22	t	\N
255	1623753000000	12	t	\N
256	1623831300000	15	t	\N
257	1624005000000	22	t	\N
258	1624357800000	12	t	\N
259	1624436100000	15	t	\N
261	1624609800000	22	t	\N
262	1622538000000	11	t	\N
263	1623142800000	11	t	\N
264	1623747600000	11	t	\N
265	1622336400000	29	t	\N
266	1622941200000	29	t	\N
267	1623546000000	29	t	\N
268	1624150800000	29	t	\N
269	1624755600000	29	t	\N
270	1622962800000	31	t	\N
271	1624172400000	31	t	\N
272	1624777200000	31	t	\N
273	1622631600000	17	t	\N
274	1623236400000	17	t	\N
275	1623841200000	17	t	\N
276	1622872800000	27	t	\N
277	1623477600000	27	t	\N
278	1622854800000	25	t	\N
279	1623459600000	25	t	\N
280	1624064400000	25	t	\N
281	1624669200000	25	t	\N
282	1623567900000	156	t	\N
283	1622858700000	160	t	\N
284	1624068300000	160	t	\N
285	1624411800000	161	t	\N
286	1624498200000	161	t	\N
287	1624584600000	161	t	\N
288	1624843800000	161	t	\N
289	1624935600000	271	t	\N
290	1625021100000	272	t	\N
291	1622862600000	155	t	\N
292	1623467400000	155	t	\N
293	1624072200000	155	t	\N
294	1624677000000	155	t	\N
295	1624761900000	537	t	\N
297	1624840200000	250	t	\N
298	1624071600000	236	t	\N
299	1622716200000	227	t	\N
300	1622889000000	227	t	\N
301	1623493800000	227	t	\N
302	1623321000000	227	t	\N
303	1623824100000	228	t	\N
304	1623925800000	227	t	\N
305	1624098600000	227	t	\N
306	1624359600000	229	t	\N
307	1624530600000	227	t	\N
308	1624703400000	227	t	\N
310	1622457000000	195	t	\N
1244	1629284400000	915	t	8月18日 John语法课详细反馈\n课堂内容: 主谓一致的原理和三个知识点\n\nJohn同学上课很积极，在理解语法的原理方面挺快的，遇到不会的会主动问我。没有额外要背的单词，但是以下这些动词的单复数变化是他要记的:\nhave-has\nbe 动词的单复数（is/are）\nbe 动词的过去式（was/were）\nstudy-studies
1325	1629427200000	918	t	8月20日 阅读课反馈\n主要内容：\n1、复习昨天的词汇\n2、读一篇unusual sports 的文章\n3、练习写句子\n\n表现：昨天的词，Steven把意思基本都记住了。今天讲了一个新的阅读技巧：scanning，并在课堂上进行练习了。通过读一些关键词（部分名词、形容词、动词）了解段落大意，Steven学得还不错，在我提问各个段落大意的时候，能够做出不错的推断。另外对文章中的一些实用句型进行了仿写，Steven 也基本能说对。\n作业：已经完成了
311	1623061800000	195	t	\N
1245	1629336600000	749	t	 0819 科学课反馈\n主要内容：\n- 整理笔记\n- Motion\n\n课堂反馈：\n检查笔记的过程中，还是发现有遗漏的地方（solubility，concentrated solution ，compound，element）。对于老师在课上重点强调并留出时间做笔记的概念，Laura还是要认真记录，不要开小差。\n\n我们今天学习了运动的基础内容。这一部分的内容，Laura在上一个学期有学习过，所以对概念比较熟悉。课上，我们学习了如何去绘制运动图表（路程、时间），这一部分Laura会比较生疏，需要课后复习。\n\n\n
1329	1629111600000	986	t	8月16日，Steven作业巩固课反馈\n今天Steven只拍了选择题出来，他觉得discussion的部分自己写得不够字数。我们在课上讲了一下回答这类问题的思路，确实就是把具体的细节写出来，时间地点发生了什么，内容就会很丰富了。今天没有时间检查单词了，明天上课会检查。\n\n今天还需要Steven把今天的单词放到quizlet里面，9点之前发出来。\n要仔细，输错的话，要抄写的
409	1624172400000	318	t	\N
1246	1629341400000	750	t	0819 科学思维课反馈\n\n主要内容：\n- 上节课作业讲评\n- Investigate A Question\n\n课堂反馈：\n昨天的实验过看似简单，但是在设计实验和编写实验报告的时候还是有很多学问的。Laura还需要对以下几个方面进行提升：1）标明实验里的自变量和因变量，并描述你是如何控制自变量的(control brightness in the room)；2）完整罗列实验中需要的器材和人员，每个人员负责什么；3）具体描述如何进行实验数据的测量和记录，不能以一句“record it”带过；4）标明实验的重复次数，以及相应的自变量变化（关灯 or 开灯）；5）无效数据（如，没能抓住尺子）可以弃用，而不是用“0”代替这个实验中“0”代表了什么？）；6）要根据自己的实验目标，调整数据表。\n\n\n今天我们讨论什么样的问题是“testable”和“practical”的。Laura在完成作业之前记得先认真复习相应的例子（也在作业里）。\n
1326	1628424000000	981	t	【Sherry】2021年08月08日 周天  糯米经济学 IB 微观知识点精讲课 06\n\n课堂表现：\nSherry 对知识点的串联有点不熟悉，复习的时候可以多想想现在学的知识点和之前学的是否有关联性且关联性在哪\n今天重点：\n1. PED\n\n
1327	1629450000000	983	t	8月20日 作业巩固课反馈\n今天下午Steven漏写了前面的题目，所以有一部分是中课上完成了。在discussion的题目部分，Steven觉得没什么想法，就想直接放弃，或者说不知道。后来我给他展示了如何在这种情况下去网上做一些搜索，找到一些灵感，他在作业课前写的Lion dance那段内容还不错，看得出来在搜索到内容后做了一些总结。具体的语法错误，我们在课上讲了。\n另外还有一部分是单词，需要把quizlet单词链接今晚9点前发出来@shygo_lone 10124 
312	1623650400000	196	t	\N
1247	1629352800000	831	t	 0819 科学课反馈\n主要内容：\n- Plant Processes\n\n课堂反馈：\n上一份作业（Work, Energy and Power）Michael完成得不错。能够理解功，能量与功率之间的关系，并使用公式进行计算。唯一一点需要注意的是：在使用公式的时候，要注意标明每个变量的单位（W=F*D， P= E/T 注意这两个公式中相关的单位）。\n\n今天我们在之前学习光合作用和细胞呼吸的基础上，继续讲解了植物体中会发生几个主要过程（枯萎、生长、冬眠）。Michael课上状态不错，能够积极地与老师讨论案例，完成练习题。课后记得先复习讲义，完成quizlet的整理以后，再做作业。\n\n作业：\n - Assignment. Plant Processes (第3、5、6题不写)\n - 完成本节课quizlet的制作\nQuizlet词汇列表：chloroplast, chlorophyll, photosynthesis, cellular respiration, stimulus, stoma, transpiration, wilting, tropism, phototropism, gravitropism, dormant
1328	1628672400000	984	t	Steven |8月11日 作业巩固课反馈\n今天作业也完成得不错，discussion部分写的观点都是有趣而且有道理的。具体需要改进的语法，我们上课讨论了，以后写时候就要注意。不过现在的句子已经比之前写得好了。\n今天的单词意思也都记得不错，全对，值得表扬
315	1622460600000	200	t	\N
316	1622802600000	201	t	\N
317	1623065400000	200	t	\N
318	1623407400000	201	t	\N
319	1624012200000	201	t	\N
320	1622623200000	209	t	\N
322	1623832800000	209	t	\N
324	1622538000000	202	t	\N
325	1623142800000	202	t	\N
326	1623747600000	202	t	\N
329	1626771600000	202	t	1
328	1626166800000	202	t	1
327	1625562000000	202	t	1
334	1622872800000	220	t	\N
335	1623325500000	219	t	\N
336	1623477600000	220	t	\N
337	1623930300000	219	t	\N
338	1624078800000	221	t	\N
339	1624325400000	222	t	\N
340	1624584600000	222	t	\N
341	1624930200000	222	t	\N
344	1623236400000	232	t	\N
346	1625016600000	337	t	\N
347	1624262400000	239	t	\N
348	1624521600000	239	t	\N
349	1624867200000	239	t	\N
350	1622515200000	96	t	\N
351	1622601600000	96	t	\N
352	1622688000000	96	t	\N
353	1622774400000	188	t	\N
354	1622894400000	97	t	\N
355	1623033600000	188	t	\N
356	1623120000000	188	t	\N
357	1623206400000	188	t	\N
358	1623292800000	188	t	\N
359	1625020800000	189	t	\N
360	1624848000000	189	t	\N
361	1624934400000	189	t	\N
362	1624708800000	237	t	\N
363	1624502400000	189	t	\N
364	1624416000000	189	t	\N
365	1624329600000	189	t	\N
366	1624243200000	189	t	\N
367	1624104000000	237	t	\N
368	1623897600000	188	t	\N
369	1623724800000	188	t	\N
370	1623638400000	188	t	\N
371	1623499200000	97	t	\N
372	1623379200000	188	t	\N
373	1623984000000	189	t	\N
375	1623416400000	89	t	\N
376	1624021200000	89	t	\N
379	1622718000000	81	t	\N
380	1623150000000	81	t	\N
381	1623322800000	81	t	\N
382	1623754800000	81	t	\N
383	1624071600000	143	t	\N
385	1624532400000	81	t	\N
387	1622860200000	84	t	\N
388	1622946600000	86	t	\N
389	1624156200000	86	t	\N
390	1624761000000	86	t	\N
391	1622808000000	83	t	\N
392	1623412800000	83	t	\N
394	1622871000000	85	t	\N
395	1624064400000	142	t	\N
396	1624856400000	152	t	\N
397	1624942800000	301	t	\N
398	1624669200000	150	t	\N
399	1624757400000	149	t	\N
400	1624416300000	362	t	\N
401	1624502700000	362	t	\N
402	1624589100000	362	t	\N
403	1624848300000	300	t	\N
404	1624930200000	147	t	\N
405	1625016600000	146	t	\N
415	1624608000000	175	t	\N
417	1622635200000	91	t	\N
418	1623240000000	91	t	\N
419	1623844800000	91	t	\N
420	1624449600000	91	t	\N
421	1625054400000	91	t	\N
423	1622945700000	95	t	\N
424	1623550500000	95	t	\N
425	1624677600000	179	t	\N
427	1624844700000	185	t	\N
428	1625017500000	185	t	\N
1330	1629189900000	987	t	8月17日 作业巩固课反馈\n\n今天作业题都会写，不过有两道题审题出现了失误，就答非所问。这个看题马虎的问题要注意改正，每次读题，确定好题目让你做的动作是什么，怎么做。\n\n今天单词记得不错，下午测的时候都记住了。\n\n上午课上的笔记也记得好，表扬
434	1624428000000	249	t	\N
435	1624514400000	249	t	\N
436	1624600800000	249	t	\N
437	1624860000000	249	t	\N
438	1624946400000	249	t	\N
439	1625032800000	249	t	\N
440	1626404400000	521	t	\n7月16日 慧卿数学课反馈\n课堂重点：继续练习了 Evaluating an algebraic expression; 学习了如何建立一个代数表达式\n\n目前慧卿在符号替换成数字方面已经有小进步了，不过有时还是不习惯，会不知道该如何处理式子中的字母，咱们需要继续多做题。今天我还注意到，慧卿已经有主动去参考例题的意识了，这是个很好的学习方法，我会鼓励她继续这么做。
431	1624950900000	280	t	【Lawrence】2021年06月29日 周二  中学语法课 Lesson 01\n\n课堂表现：\n我们今天开始讲名词了，这是接触语法体系的第一步，加油哦！\n\n今天重点：\n1.名词
441	1626415200000	520	t	慧卿| 7 月 16 日 英语课反馈\n\n主要内容：\n1、听写复习了前几天的单词，\n2、沟通了学校成绩单和老师评语，\n3、学了可数名词的单复数形式，记了新的单词。\n\n表现：慧卿今天学习态度很好，听写单词做了比较长时间，拼写、读音、意思这些重复去考和记，也没有失去耐心。\n\n分析老师们的评语时，她也愿意交流，老师们点评的那些问题，跟她上课听不懂、作业看不懂都有关系。遇到有的老师比较暴躁，大多数学生都会有抵触情绪。跟她说了课堂要多参与这个问题。
442	1626411600000	434	t	【Eva】2021年07月16日 周五  Pre-AWS 第一季 Lesson 05\n\n课堂表现：\n今天作业进步巨大，文章内容写的很好，但是在单复数和代词指代的问题上要多注意哦！\n\n今日重点：\n1. Clerity
444	1626397200000	355	t	诗雅 | 7月16日 语法课 6，7 反馈\n内容：\n1、分词（现在分词、过去分词）\n2、不定式\n3、完整句和句子片段\n表现：\n诗雅上课保持了一贯的认真。今天强调了分词和不定式都不能直接做句子中的动词成分，而是分别能够在句子中起名词、形容词、或者副词等作用。不带to的不定式和句子片段问题，也是这部分的难点，诗雅课后都有理解。我们之后还会继续巩固。\n
445	1626402600000	356	t	诗雅 | 7月16日 语法课 6，7 反馈\n内容：\n1、分词（现在分词、过去分词）\n2、不定式\n3、完整句和句子片段\n表现：\n诗雅上课保持了一贯的认真。今天强调了分词和不定式都不能直接做句子中的动词成分，而是分别能够在句子中起名词、形容词、或者副词等作用。不带to的不定式和句子片段问题，也是这部分的难点，诗雅课后都有理解。我们之后还会继续巩固。\n
446	1626415200000	178	t	【Rebecca】2021年07月16日 周五  糯米经济学 IB 微观知识点精讲课 10\n\n课堂表现：\n今天把 micro部分都复习完了，现在 Rebecca的Paper one已经写的很好了，要继续加油！\n\n今天重点：\n1. Monopolistic & Oligopoly
1248	1629353700000	874	t	反馈【Wendy】2021年08月19日 周四  写作练习课 Lesson 02\n\n课堂表现：\nWendy 要注意连词的使用哦，现在作文里比较多的语法错误都出在这里。今天的作文写得还不错，在故事上要多加强一些。\n\n今天重点：\n1.作文讲评\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
449	1626070500000	34	t	今天 Lucy 表现不错，最近我让她尝试着开始写观察日记，她养了乌龟，种了西红柿，每一个都可以让她观察发生了什么变化然后记录下来。目前对 Lucy 帮助比较大的应该就是这样每天持续去产出，每天的作业我想让她把我们每天写过的东西抄下来，这样自己会有一个记忆，可以帮我监督一下。现在这种模式 Lucy 自己也比较能够接受。
450	1626074100000	35	t	今天 Lucy 表现不错，最近我让她尝试着开始写观察日记，她养了乌龟，种了西红柿，每一个都可以让她观察发生了什么变化然后记录下来。目前对 Lucy 帮助比较大的应该就是这样每天持续去产出，每天的作业我想让她把我们每天写过的东西抄下来，这样自己会有一个记忆，可以帮我监督一下。现在这种模式 Lucy 自己也比较能够接受。
451	1626156900000	34	t	今天努力地写了 157 个词，红色地方是 Lucy 拼错或者写错的地方，需要妈妈监督一下，让 Lucy 把这篇重新手写一遍，她现在会有比较多的拼写错误，我觉得还是不要怕累用手抄会好一些。
452	1626160500000	35	t	今天努力地写了 157 个词，红色地方是 Lucy 拼错或者写错的地方，需要妈妈监督一下，让 Lucy 把这篇重新手写一遍，她现在会有比较多的拼写错误，我觉得还是不要怕累用手抄会好一些。
462	1625367600000	283	t	【Nina】2021年07月04日 周天  Pre-AWS 第一季 Lesson 03\n\n课堂表现：\n今天Nina 非常好！现在已经可以写出很优质的 Topic Sentence了！因为今天花了点时间讲解作业。第三题没写，是因为没想到描述的人物。现在有人物了，抓紧中午的时间写一下吧！
463	1625386500000	290	t	【Nina】2021年07月04日 周天  Pre-AWS 第一季 Lesson 04\n\n课堂表现：\n今天Nina 有进步哦，在课堂里的联系正确率越来越高了！加油！我们下午复习一下关于段落的几个部分。\n
455	1626329700000	34	t	今天 Lucy 又会有点注意力不集中，表现为写句子速度非常慢，今天开始我们会每天对阅读中出现的词汇进行测试，今天的作文是续写昨天，希望能让 Lucy 自己抄一遍下来加深下印象。
456	1626333300000	35	t	今天 Lucy 又会有点注意力不集中，表现为写句子速度非常慢，今天开始我们会每天对阅读中出现的词汇进行测试，今天的作文是续写昨天，希望能让 Lucy 自己抄一遍下来加深下印象。
534	1625708700000	324	t	\N
454	1626246900000	35	t	 今天我让 Lucy 自己在网上选了一种创意蛋糕进行描写。我们描写的是一个做成岛屿和海洋的蛋糕，让 Lucy 对其中的每一个部分进行描写。 Lucy 现在能够自己写出一些相对复杂的长句，比以前要进步了很多，但是可能速度上还需要在多努力一下
453	1626243300000	34	t	 今天我让 Lucy 自己在网上选了一种创意蛋糕进行描写。我们描写的是一个做成岛屿和海洋的蛋糕，让 Lucy 对其中的每一个部分进行描写。 Lucy 现在能够自己写出一些相对复杂的长句，比以前要进步了很多，但是可能速度上还需要在多努力一下
458	1625551200000	427	t	\N
459	1625724000000	447	t	\N
464	1625472900000	290	t	【Nina】2021年07月05日 周一  Pre-AWS 第一季 Lesson 5+6\n\n课堂表现：\n今天Nina 有进步哦，关于purpose statement 要多加练习。
465	1625482800000	292	t	【Nina】2021年07月05日 周一  Pre-AWS 第一季 Lesson 5+6\n\n课堂表现：\n今天Nina 有进步哦，关于purpose statement 要多加练习。
466	1625536800000	307	t	2021年07月06日 周二  Pre-AWS 第一季 Lesson 7+8\n\n课堂表现：\n今天 Nina 在课上的练习表现很好哦，就是下次在速度上可以加快一点点哈！\n补充： 我们今天的课堂内容是 五大写作元素之清晰性（clarity），主要学习了descriptive words 的运用 
467	1625559300000	290	t	2021年07月06日 周二  Pre-AWS 第一季 Lesson 7+8\n\n课堂表现：\n今天 Nina 在课上的练习表现很好哦，就是下次在速度上可以加快一点点哈！\n补充： 我们今天的课堂内容是 五大写作元素之清晰性（clarity），主要学习了descriptive words 的运用 
469	1625655600000	292	t	\n【Nina】2021年07月07日 周三  Pre-AWS 第一季 Lesson 9+10\n\n课堂表现：\n今天 Nina 在课上的表现进步了很多哦，做练习的时候速度越来越快，正确率也提高了！\n\n今日重点：\n1. Clarity\n2. Unity
443	1626422400000	479	t	0716 Lucas Pre-IG 科学课反馈\n主要内容：\n -  讲评生命化学基础的作业\n -  话题“细胞结构与功能”\n\n课堂表现：\n\n上节课简答题的答案写得比较主观，要注意结合背景知识和题目图例，提供证据来支撑你的答案，而不能自己想什么就是什么。\n\nLucas整体表现不错，记笔记也比之前勤快了。还是有些词汇不太熟悉（package，distribute，repiration），课后要花时间整理复习。
457	1625225400000	213	t	\N
460	1625275800000	284	t	【Nina】2021年07月03日 周六  Pre-AWS 第一季 Lesson 01\n\n课堂表现：\n今天Nina 表现很好，很积极的和老师交流和思考。我们今天学习了如何写Topic Sentence。\n
468	1625645700000	290	t	\n【Nina】2021年07月07日 周三  Pre-AWS 第一季 Lesson 9+10\n\n课堂表现：\n今天 Nina 在课上的表现进步了很多哦，做练习的时候速度越来越快，正确率也提高了！\n\n今日重点：\n1. Clarity\n2. Unity
1249	1629341100000	791	t	8月19日 桃子托福口语课反馈\n课堂内容：独立+Task 3 口语车轮战\n\n1. 总结了独立口语中儿童发展的常见论点。\n2. 综合口语 Task 3 桃子的发挥不错，但是在遇到某些题目时，如果听力做的不是很好，就会讲的比较卡或者是太着急。这个问题在练习中会得到改善，我们记笔记的详细程度是要随着内容难度来调整的。
1331	1629427500000	791	t	8月20日桃子托福口语课反馈（补）\n课堂内容：口语车轮战（主要是 Task 4）\n\n最后一道题不涉及阅读，只涉及听力，桃子有时会记漏一些信息。不过能记下来的信息是足够回答的，就是回答时会出现句子之间无法衔接的问题，例如说用了 because 这个词，但是 because 前后的句子不是因果关系。所以当天的作业主要是去做逻辑练习。
470	1625713200000	283	t	【Nina】2021年07月08日 周四  Pre-AWS 第一季 Lesson 11+12\n\n课堂表现：\n今天 Nina 要多复习哦，方法论忘的比较多。在写作业前先复习！\n\n今日重点：\n1. descriptive paragraph\n\n
471	1625732100000	290	t	【Nina】2021年07月08日 周四  Pre-AWS 第一季 Lesson 11+12\n\n课堂表现：\n今天 Nina 要多复习哦，方法论忘的比较多。在写作业前先复习！\n\n今日重点：\n1. descriptive paragraph\n\n
476	1626659100000	185	t	反馈【泽霖】2021年07月19日 周一  中学语法课 Lesson 07\n\n课堂表现：\n泽霖今天课上状态不错。最近几次发现泽霖在订正错题的时候会出现理解错误。要记住错题报告是重新写错题，不是单纯的搬运笔记。\n\n今天重点：\n1. relative clause
475	1626316200000	187	t	反馈【泽霖】2021年07月15日 周一  中学语法课 Lesson 06\n\n课堂表现：\n泽霖今天课上状态不错，我们已经学完了词性到句子的部分，课下要多复习哦！\n\n今天重点：\n1. clause\n\n
474	1626054300000	185	t	反馈【泽霖】2021年07月12日 周一  中学语法课 Lesson 05\n\n课堂表现：\n泽霖今天课上状态很好，作业也达到了100%正确率。现在进入句子部分了，难度开始加大，要注意复习哦。\n\n今天重点：\n1. infinitive\n2. the complete srntence
473	1625708700000	185	t	课堂表现：\n泽霖今天课上的吸收情况不错，但是知识点比较多需要课下多下功夫复习和分类记忆。另外需要认真的去做错题报告，我们每次课上都会检查。\n\n今天重点：\n1. prep\n2. participle\n
472	1625449500000	185	t	中学语法课 Lesson 03\n\n课堂表现：\n泽霖今天课上的吸收情况很好，也很主动的再思考。以后要多做错题报告，主动分析自己的错误。\n\n今天重点：\n1. svo\n2. adj\n
477	1625362200000	172	t	我们今天主要是帮助 Kevin 过一遍学校明天考试的阅读题型，Kevin 说自己对长文本题目会比较的困惑，我们挑了一些长文本，从 Kevin 的做题来总结出一些方法和注意事项。Kevin 做选择主旨的问题的时候会选成片面选项而忽略了真正的 topic sentence，还需要多去练习一下。
48	1625562000000	382	t	7月6日菲菲英文课反馈\n今天的重点内容: 精读《Posted》的第一章\n\n一些tips:\n1.每看完一页要问自己: 这一页的重点内容是什么？\n2.读书前先浏览一些每一页的主题句，试着去预测这一页的内容（叙事的视角是一个重要线索）\n3.在把握了重点情节之后再去赏析词句
1250	1629340200000	608	t	08.19 刘行 课后反馈：\n今天讲解了复合函数的积分求解，需要自己根据题目判断出哪一些量是在求导过程中会产生的“衍生物”，则积分的还原过程中则不需要考虑“衍生物”的存在。\n而积分回到图像的本质就是曲面面积的求解，对原函数的左右边界进行赋值并做差，即能得出面积的大小。
19	1625475600000	382	t	7 月 5 日 菲菲英文课反馈\n这节课我们进行了阅读 workshop，讨论了 Active Reading 的策略。一句话总结：阅读前明确目的，阅读中通过提问题的方式找到关键点，阅读后总结自己的心得以及整理生词。\n\n作业：\n1. 3-4 和 3-5 单词背诵，周三测试。@小佳@学霸山丘 小佳老师在测验时还会抽查一小部分前面几个单词集的单词。\n2. 《Posted》的第三章阅读，期待菲菲给我分享自己的阅读笔记。
1332	1629688200000	783	t	8月23日宜林托福口语课反馈\n课堂内容：模考口语讲评+口语车轮战\n\n讲评口语的时候，宜林很想知道为什么两次模考口语成绩会差一分，我就给他详细讲解了托福口语的评分标准。（一会我还会把我之前写的推文附上）\n\n简要概括，托福口语是通过机考的题目来评判考生的口语实力。所以我们只要正常把每道题流利、通顺的讲完，最终分数的差别都不会特别大。\n\n现在宜林考前还可以做的就是好好完成模考，同时抓紧时间多看一些独立题目。
482	1626426000000	98	t	7 月 16 日 Queenie 英文课反馈\n课堂重点内容：Pan's labyrinth 逐字逐句精读第 14、15 章\n\n书读到后半段，就会发现，好多之前学过的词反复出现了，因为作者写作时倾向于用重复的词，例如 swirl、flutter、stumble。最近在 wordlywise 3000 中学的词也出现了。背过的词反复出现，看得多了才能完全掌握。所以我强烈建议 Queenie 在课后去做一些独立的阅读，可以读我们学的这本书，也可以读家里的其他英文书。
483	1626253200000	98	t	7月14 Queenie 英文课反馈\n课堂重点：wordlywise 3 Lesson 3\n\n今天 Queenie 状态非常好！听课全程是很专注、积极和开心的。我们讲完单词后把课堂练习也快速做完了，因为听得很认真，所以做题时不会迟疑，正确率也很高。\n
484	1625452200000	373	t	内容： 1.课程要求 2. expansion回顾 3. 配方法复习\n表现：鸿润上课状态还不错，都能立即回答问题，也会提出疑问，今天以一元二次方程开始复习相关知识点，复习的比较细，对平方差公式的灵活运算不够，课上进行了详细讲解；expansion/simplify中的式子如果过复杂会一下子不知道怎么简化，简单的都能处理；配方法基本的题目都可以结局，结合函数图像的知识点不够熟练，以及步骤思路存在跳跃，下一趟课对于配方法的综合运用会多在课上多练习
485	1625711400000	313	t	内容： 1.上节课重点复习 2.顶点题巩固 3. 公式法因式分解复习\n表现：鸿润课堂表现不错，能主动发现问题提出问题；做题习惯问题比较多，第一个是读题，想当然看到方程就用十字相乘，比较依赖这个方法，但是题目有明确要求用什么方法；第二个思路跳跃，所以跟鸿润明确了步骤，讲题的时候也会因为思路跳跃不知道老师为什么多写了；作业要写，笔记也要好好记，尤其是单词和做题步骤
486	1626057000000	313	t	鸿润 | 7月12日 数学课反馈\n \n内容： 1.上节课重点复习 2.作业回顾 3. 二次函数图像问题重点复习\n表现：鸿润课上基本都能跟上，这节课对二次方程的解法基本都能复述且明确各个方法之间的差异，但是作业没写完，所以今天晚上7点前必须要把没写的几道题拍给我，方法我们上课都过了一遍，重点就是要再写下来；图像问题笔记做的不够，总结的知识点要多反复看，看到题目又忘记考察什么知识点了；这节课作业重点把图像的问题解决了，读懂题+区分不同问题的方法，要能够结合笔记自己判断做题方向\n 
489	1625886000000	484	t	\N
490	1626424200000	375	t	\N
487	1626242400000	372	t	鸿润 | 7月14日 数学课反馈\n \n内容： 1.作业讲解 2. 不等式讲解\n表现：上节课作业做得不错哈，基本步骤都有到位，也很整齐，很棒这节课我们重点复习了一元二次根的数量相关题目，这类题目鸿润的思路都没问题，但是解不等式的时候容易出错，所以特别复习了一下不等式，对于规律方法鸿润容易混，一定要结合口诀和图像进行记忆哈，题目做得都挺不错的，课后继续多做题巩固~
488	1625621400000	374	t	今天学习的内容：强酸碱与弱酸碱的区别，酸性和碱性氧化物，中性以及双性氧化物。\n\n鸿润的理解速度非常的快，基本上我讲完他就能够理解，对于部分知识点也能够提出自己的疑问。今天我们学习的内容比较多的是需要鸿润去背和理解，这对下一节课会学到的酸碱中和反应有很大的影响。作业会在下节课一起去布置，今天只需要去熟悉笔记上的概念就行。
491	1625557500000	370	t	今天的重点内容: 速度、加速度、运动学图像\n\n鸿润的基础很好，但还要注意这些:\n1. velocity 是一个向量\n2. 看图时要注意是速度时间图像还是距离时间图像\n3. 看题目时先问自己，题目到底问的是哪个物理量
492	1626335100000	370	t	7月15日 鸿润物理课反馈\n课堂重点：讲解速度-时间图像和距离-时间图像的习题\n\n这一块的知识点其实很少，除了平均速度的算法，其他鸿润都理解了。但是做题时情况却不理想，因为内容本身比较反直觉，又和数学紧密结合，只有多做题，才能完全掌握。\n\n鸿润目前做作业不是特别方便，说做完笔记本搞丢了。麻烦之后的作业姐姐给打印下来做，然后做完让鸿润拍照发群里
493	1626411600000	531	t	\N
494	1625540400000	162	t	今天我们继续完成空间逻辑练习，冠宇今天表现不错，很愿意去思考。现在冠宇需要解决的就是自己的畏难情绪，不要碰到觉得难的就放弃，特别是对称题，不论如何都是能做出来的题目，千万不要放弃。其他题目还是像我们昨天说的那样，要注意图形的边长数，相交的次数以及每一种图形的个数等等
495	1625625900000	269	t	今天我们应冠宇说的考试会出现应用题的说法，开始练习应用题，主要是考察冠宇能否看懂题目。冠宇对于大部分题目都是能够看懂的，纬度概率题会稍微有些没法读懂。很多题目在题干中会设置一些陷阱，如果不注意的话就会写错。在冠宇做题的过程中，我发现他对二元一次方程的掌握不是很熟练，在消元的时候会出现计算错误或者加号减号没注意的现象，导致最好得到错误的结果，会在下午让助教老师带着冠宇一起练习。
496	1625713200000	162	t	今天我们混合了应用题和逻辑空间题，总的来说冠宇上课还是愿意做的，就是还需要一些耐心和细心，考试的时候千万不要一个过不去就不想做或者乱做，能调整好心态数学上就没什么大问题。
570	1625554800000	296	t	【Lawrence】2021年07月06日 周二  中学语法课 Lesson 06\n\n课堂表现：\n我们今天讲了分词的用法。现在Lawrence对于语法的分析能力已经有明显进步了，但是会有些混淆的情况出现，可以模仿我今天课上的分类法进行复习！\n\n今天重点：\n1. 分析
497	1625798700000	270	t	今天和冠宇一起完成了数学应用题部分的重新审题，总体来说冠宇都没有有什么大问题，当然还是需要冠宇细心去解题。目前容易出现问题的有这么几个部分：\n1. 二元一次方程容易算错，注意目前题目当中 x y 值大多是整数，如果不是整数要自己验算一下。\n2. 计算概率的题目中单词较多，需要冠宇耐心一点，读完全部的题干再做题。\n3.如果出现 lowest term 在题干当中，注意要选择最小的数
498	1625880600000	441	t	今天冠宇表现不错，可能明天要去方特原因，今天很兴奋，数学做的也非常不错。目前整体状态都不错，就是注意解码类的题目，相同的字母有时候找不到相似处，但是还是有规律可循，要仔细一些。
499	1626145200000	162	t	今天我们对所有的空间逻辑数学题型进行回顾，冠宇要注意每一种题型都要有相应的解决方法，不要轻易放弃。这里重点说下我们的解码题，虽然冠宇已经很熟练了，但是还是要注意解码题两个字母分别代表了不同的规律，我们呢要确定两种不同的规律以后再开始选择。选完以后要注意检查一下自己的选择是否正确。
501	1625189400000	146	t	今天继续带冠宇完成阅读题目，这个阶段的阅读理解，经常考察的是同义词替换、信息推断、俚语解释等等，关键是要引用文章中的内容来回答问题。我都是让冠宇先回答，然后再根据他说的内容，引导他回答得更准确。\n他的上课态度是很好的，现在记笔记都很主动。
502	1625453100000	308	t	今天带冠宇做了另一些词汇题，难度又有所增加，比如考察一词多义，单词拼写，复合词，等等。\n\n首先我是让冠宇认真读题，明确题目要求，再自行判断，最后我再讲解并要求他记录必要的词汇。\n\n词汇考试就是测基本功，冠宇除了不会的词比较多之外，还容易把拼写或读音相似的词搞混，记得不扎实。\n\n所以最近我们在尽量让冠宇多背熟一些他这个阶段需要掌握的词。
504	1625621400000	146	t	今天我们继续在练词汇归类和词汇逻辑推理题，冠宇有一些自己的判断方法，比如看单词有没有相似的字母之类的，碰到实在不认识的单词，这也是有用的。不过大多数时候，需要答对还是要认识才能判断，比如今天碰到的电影类型，动物体态的分化，等等。\n\n今天有鼓励冠宇多记十来个单词，下午应该都能完成
507	1625885100000	442	t	今天我们继续练了词汇推理题。从他答题的情况来看，之前练的一些词已经记住了，这点非常棒。\n今天推理的时候冠宇也挺有耐心，比如组合复合词的时候，会一个一个读过起尝试，不过答题的准确度还是会受限于词汇量。\n今天继续积累了四十多个单词，下午复习。
508	1626139800000	147	t	今天继续带冠宇练英语文字题。对于文字推理类的题目，冠宇对于题型都比较熟悉了。最近碰到的新单词，基本都记住了。再测试的时候，就是要认真读题审题，好好判断，态度严肃了就没问题的。\n\n今天有一阵叫他站着上课了因为过来还在打瞌睡。
509	1626073200000	465	t	Michael 7月12日助教课反馈\n \n内容：课堂内容复习，作业讲解订正，单词积累与检查\n表现：Michael作业完成得还不错，单词和课堂内容基本理解到位，但是对于controlling ideas的把握不是很好，以及在写topic sentences的时候不够细心，段落没看完就写了，所以写出来的句子没有准确涵盖段落内容，之后要记得助教课的时间，安排好时间写作业；单词中spare time忘记了，注意复习，其他都挺好的~
555	1625128200000	299	t	7/1 单词测试反馈\n今天继续给Lawrence发了一个词表，他背得还是挺好的哈。chisel，assimilate 这两个词没想起来意思，其他都答出来了，另外我也考了他前几天不会的单词，都很OK。\n自己如果还能安排其他时间，就注意复习
500	1625103000000	146	t	今天除了词汇辨析题之外，开始讲阅读理解了。阅读理解一方面需要有对词汇和语法的理解能力，一方面还要阅读出作者的写作意图，以及环境、事件、人物心理等等描写。除了理解字面意思之外，还要灵活地运用脑补画面，分析推理等技巧。\n冠宇上课时配合度不错，积极记笔记和分析问题。我还发现他确实记住了前段时间的词汇。
503	1625535000000	147	t	今天继续在做词汇题练习，也是让冠宇看题、判断，再讲解和积累生词。\n\n今天冠宇精神不错，不过看题目的时候，马虎劲有点回来了，不是很认真地思考后再做决定，好像觉得不是真的考试，就选得有点随便。\n\n我上课时看他不认真了会重新提醒他严肃一点吗，以及让他更彻底地解释题目和选项。
505	1625707800000	146	t	继续练了词汇推理题、句子完成题。冠宇粗心的问题还是比较明显，会太快下结论。我在督促他，做题的时候，需要更严谨的进行逻辑验证，而不是凭第一感觉去判断。\n记单词的时候，有些畏难情绪，短的单词记得比较自觉，看到长的词就想偷懒不记。\n
506	1625794200000	146	t	今天继续带冠宇练一些文字推理题，有的题目是只要读懂题目文字、理解题型要求就能做，有的需要用常识去做些推理，比如今天遇到的月份，每个月多少天，等等。\n冠宇在读题和常识这块，都在积累经验中，总之我一直跟他强调要仔细，要用不同的方式验证自己的判断，不然就容易出错。
510	1626252300000	466	t	Michael 7月14日助教课反馈\n \n内容：课堂内容复习，作业讲解订正 \n表现：Michael作业完成得还不错，单词和课堂内容理解到位，语法题理解错误了哈，并且对于subject-verb agreement没有什么意识，主语经常找不到，多个主语就开始乱，凭感觉比较多，语境理解中也会漏看很多单词，有点粗心哦；作文写得挺好的~
1252	1629349200000	681	t	8月19日 Lucy writing class 反馈\n\n今天的主要内容是复习常用不定代词 all,both,every,each 的用法，后面的名词和动词应当根据不定代词改变其单复数形式。第二节课主要复习的是部分不规则动词的变形和形容词的比较级最高级，这一块的内容更为基础，但是看得出 Lucy 还是有很多因为不常用遗忘掉的内容。上课的表现还是和昨天大致相同，些许走神，但是整体都能够完成今天的任务。
1333	1628593200000	951	t	8月11日宜林托福口语课反馈\n课堂的重点内容：复习托福口语每道题的模版+课堂练习\n\n两个月没有练托福口语，宜林的回答显然有些生疏了，独立口语会有想不出来观点的情况、综合口语则是说不够时间。解决方案是在日常的训练中多积累托福词汇，提升学术文章的阅读能力、听力中对细节的把握程度。口语本身也是要做一些训练的，找回感觉的。\n
1334	1629684000000	782	t	8月23日 宜林 托福听力课反馈\n\n今天听力课的内容是讲解 Linguistic and Art history 部分题目。语言学和艺术史算是人文社科当中比较常见的一个类型，其中相比自然科学会有更多的目的题，即作者的某一个故事或者例子是为了什么，这一部分题目在听到信号词时一定要注意这个例子具体是为了证明什么，教授提出的观点又是什么。\n\n宜林目前需要继续大量练习听力，恢复上次考试前对听力考题的熟练度，尽可能地在考试前能够稳定在错 2- 3 题的水平。
511	1626417900000	467	t	Michael 7月16日助教课反馈\n \n内容：课堂内容复习，作业讲解订正 \n表现：Michael今天因为身体原因作业写得比较赶，以后还是要尽量提前安排好时间，作文写得很赶，段落只有conclusion sentence跟topic sentence不是完全对应，脉络其他都很好，个别词或者搭配出错，Michael自己都能再反应出来，所以还是第一次写的时候太急了哈；分论点的描述注意要扣点；单词对应原因/结果/总结的区别反应不够快，其他的都能很流利地回答
512	1626252000000	455	t	解方程组的时候，解题前先自己确定下消x还是消y简单，再对方程进行变化，然后在对两个式子加减时注意，如果要消除的部分长得一样则用“－”；如果符号有差异，则用“＋”。
1335	1629698400000	793	t	8月23日桃子托福口语课反馈\n课堂内容：模考口语讲评+口语车轮战\n\n桃子昨天的模考中觉得有些难进入状态，做独立的时候还没反应过来，所以我们今天课堂的练习做了比较多独立题。后半节课的综合则做的挺顺的，记得要尽早适应下在家考的记笔记方式。
513	1625366700000	537	t	7/4 听力反馈\n李获同学这次的听力相当有进步，目前能够将错误稳定在 10 个以内，也就是在听力上能够拿到至少 7 分，但是不要就此骄傲，听力阅读的高分是要用来补足写作和口语上的差距的，还是需要多去往更高的分数进行努力。今日份的听力单词记得去重温一下，都是非常常考到的，要注意。
514	1626163200000	174	t	\N
515	1625275800000	149	t	今天讲评了上周的练习错题。\n李获上课很积极，但是课后背单词任务完成得不好，今天抽查的单词，很多都答不出来意思。\n背单词的时候，可能会遇到熟悉的，那就少看几遍，重点看完全不熟的，有例句的重点词汇一定要背熟。
516	1625362200000	149	t	7/4 雅思阅读课 反馈\n今天讲评的是昨天李获写的题，他自己去订正的部分，基本能把答案改对。\n这次呢，看得出来他能找对更多关键句来判断题目了，之前有一些题目是蒙对的，今天自主判断对的更多。\n但还是有个别题目是没找对地方，或者没理解对的，但李获自己基本发现不了问题，需要一个一个词问他，才能查出来他哪里没理解\n
517	1625880600000	149	t	李获 | 7月10日 阅读课 反馈\n今天先检查了一下李获上周背的单词，基本都回答得比较慢，不太熟。\n然后让李获现场做了两篇阅读，了解一下他是怎么做题的，包括读题读文章还有时间把握等等。今天在计时还有我监督的情况下，李获的正确率只有3/22，跟之前他自己完成的差距比较大。\n
518	1626053400000	153	t	李获 | 7 月12日 阅读课反馈\n昨天模考李获完成得还不错，25/40 （6分），错的题里有两道是抄错单词的拼写，这种错误一定要避免。\n\n今天主要讲了填词题，单词都是来自于文章的，只要找对地方，把相应的内容读懂或者分析清楚就比较容易得分。李获今天在练的过程中，8/10 都能找对地方，也基本能筛选出正确的词。不过看得出来李获对于文本的理解程度还是不太够，所以要靠猜，无法完全确定自己的选择。
519	1626144300000	154	t	李获 | 7月13日阅读课反馈\n\n今天继续带李获练的阅读填词题，正好碰到有几个地方是李获看不懂也推断不出来的，一起分析了一下题目的提问方式以及文章中的句子逻辑等等。\n\n考试中如果遇到觉得特别难懂的部分，不要耗太长时间，及时先把有把握的分都拿到，再回去分析难题。关键还是找到对应的地方，再仔细读。
520	1626317100000	154	t	李获| 7月15日阅读课反馈\n今天我们还是看了三篇阅读的填空题，李获仔细分析的情况下，8/10都能做对的。\n不过总结类的题目现在还是很有挑战，如果考试遇到，就先猜答案，重点把判断题和简单的填空题搞定，有时间再回去看难题。\n
521	1625280300000	285	t	2021年07月03日 周天  雅思写作课课 Lesson 05\n\n课堂表现：\n今天点评了作文，对例子进行了进一步加工，以及提高了让步段写作
522	1625378400000	182	t	【李获】2021年07月04日 周天  雅思写作课课 Lesson 06\n\n课堂表现：\n今天点评了作文，李获对于题目的解析能力还是要继续精进哦！\n\n
523	1625885100000	310	t	【李获】2021年07月10日 周六  雅思写作课课 Lesson 07\n\n课堂表现：\n今天点评了模考作文，分数是4分。过多的语法错误，导致文章不通顺。在逻辑推理上也存在不合理和断层的问题。李获课下需要认真的去复习课上教的技巧，当堂吸收的很好，课下不复习或者写新文章的时候不认真思考使用，等于白搭。要引起重视了哈！
525	1626139800000	180	t	【李获】2021年07月13日 周二 雅思写作课课 Lesson 09\n\n课堂表现：\n今天继续点评模考作文，李获再逻辑能力上还要继续加强，以及例子编写的能力还需要提高。\n\n今日重点：\n1. body paragraph writing
526	1626312600000	180	t	\N
527	1626656400000	355	t	诗雅 | 7月19日 语法课 8，9 反馈\n内容：\n1、讲评形容词、副词作业\n2、复习分词、不定式、动词\n3、新内容：句子、从句、同位语\n表现：\n诗雅上课状态不错，除了完成练习题目之外，也要复习我们前面学习的概念笔记，到现在为止有个别概念有混淆
528	1626661800000	356	t	诗雅 | 7月19日 语法课 8，9 反馈\n内容：\n1、讲评形容词、副词作业\n2、复习分词、不定式、动词\n3、新内容：句子、从句、同位语\n表现：\n诗雅上课状态不错，除了完成练习题目之外，也要复习我们前面学习的概念笔记，到现在为止有个别概念有混淆
530	1626663000000	463	t	0719 科学思维课反馈\n主要内容：\n- 什么是科学\n课堂反馈：\n课上，主要与Laura讨论了科学的特征，科学家的特质以及伪科学和科学的区别。Laura能够用很多生活和课堂经历来阐述自己的观点
529	1626658200000	462	t	 0719 科学课反馈\n主要内容：\n - 细胞与细胞学说\n课堂反馈：\nLaura能够积极主动地和老师互动讨论。 细胞内的结构名称和功能Laura还不是很熟悉哈，可以通过今明两天的学习加强巩固。\n
531	1625983200000	344	t	\N
532	1625886900000	343	t	\N
533	1625816700000	342	t	\N
1251	1629352800000	682	t	8月19日 Lucy writing class 反馈\n\n今天的主要内容是复习常用不定代词 all,both,every,each 的用法，后面的名词和动词应当根据不定代词改变其单复数形式。第二节课主要复习的是部分不规则动词的变形和形容词的比较级最高级，这一块的内容更为基础，但是看得出 Lucy 还是有很多因为不常用遗忘掉的内容。上课的表现还是和昨天大致相同，些许走神，但是整体都能够完成今天的任务。
535	1625535900000	324	t	7月6日托福口语一对二反馈\n今天练习的重点: Task 4 的分步骤拆解\n\n两位同学的听力都很好，建议 Lawrence 多记一些细节。在准备时间里，建议 Loretta 对自己的信息做一些筛选，可以提前想清楚自己解释的结构。
538	1626075900000	345	t	7 月 2 日 托福口语一对二反馈\n今天我们进入综合口语 Task 2 的训练，这道题的要点是准确、清晰地整合阅读和听力中的信息，尤其是把听力中的两个原因总结出来，而不是复述。\n两位同学上课时做练习都非常积极，表现很好。\n\n作业：\n1.  整理自己在讲这道题时用的模版。
1336	1628240400000	994	t	反馈【Wendy】2021年08月06日 周五  中学语法课 Lesson 16\n\n课堂表现：\n今天我们完成了标点符号的学习，也将所有的知识点都梳理串联了一遍。今天的作业继续全对！保持住哦！\n今天重点：\n1. 省略符号\n2. 引号\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
537	1625190300000	340	t	7 月 2 日 托福口语一对二反馈\n今天我们进入综合口语 Task 2 的训练，这道题的要点是准确、清晰地整合阅读和听力中的信息，尤其是把听力中的两个原因总结出来，而不是复述。\n\n两位同学上课时做练习都非常积极，表现很好。
539	1625119200000	328	t	 7 月 1 日 Lawrence 托福口语课反馈\nLawrence 第二次的作业相比第一次进步很大，其中有一道题讲出了满分的回答。我总结一下一些得分的要点：\n\n1. 不要着急讲，养成习惯先想想自己的例子中要怎么说具体。\n2. 这段时间尽量多积累独立口语的例子和短语（例如 have a better understanding 和 piano teacher 的例子）\n3. 在翻译自己的想法时尽量讲简单的英文词汇。（例如 能讲 angry 就不要讲 innocent）
540	1625471100000	329	t	7月5日 Lawrence 托福口语课反馈\n讲评了 Lawrence 的口语模考：Task 3 Lawrence 讲得很好很清晰，Task 1 缺乏论据，想到一个比较高大上的中文观点，用英文却解释不清。在对各个题目进一步熟悉后，提升流利度的话，还有进步空间。\n\n综合口语的模板还不熟悉，要根据我给的自己整理一次。
541	1625643900000	329	t	7月7日 Lawrence 托福口语课反馈\n讲评了综合口语前两个 Task 的作业，然后练习了两题 Task 4。\n\n以下是注意事项：\n1. 阅读和听力有时会出现失误，因为遇到生词或是听力时忙着记笔记，出现“断章取义”的问题。\n2. 总结时顺着自己的笔记讲，没有进行主动的整合，所以会出现不符合逻辑的表述。\n3. Task 3 不重视阅读理解，或是忘记总结。\n\n前两个问题都可以通过训练自己在 30s 准备时间看笔记，主动整理信息来解决。
430	1624849200000	279	t	今天的课堂很好。两位同学的逻辑思维能⼒都很在线，这是在托福写作中最需要的能⼒。希望两位同学在接下来的课程中继续保持这个能⼒，并且多加练习。加油哦！
432	1625022000000	281	t	反馈【Lawrence】2021年06月30日 周三  托福写作 Lesson 01\n\n课堂表现：\n我们今天我们主要说了 body paragraph的逻辑链条和例子的写作。课下好好复习哦。\n今天重点：\n1. 例子写作
543	1625194800000	281	t	反馈【Lawrence】2021年07月02 日 周五  托福写作 Lesson 02\n\n课堂表现：\n我们今天我们继续加强了，写例子的能力。并且学习了，如何用对话来写例子。\n\n今天重点：\n1. 例子写作
544	1625454000000	281	t	反馈【Lawrence】2021年07月05 日 周五  托福写作 Lesson 03\n\n课堂表现：\n我们今天我们训练了 Topic Sentece和Supporting Sentence的写作。要记得思考逻辑链条。\n\n今天重点：\n1. TS + SS
545	1625626800000	281	t	反馈【Lawrence】2021年07月07日 周一  托福写作 Lesson 04\n\n课堂表现：\n 今天讲评了一篇独立写作，在supporting sentence 和例子的部分发挥还不是很稳定哈。要注意听老师上课教的方法论去写作哦！\n\n今天重点：\n1. 文章细节提升\n2. supporting sentences 写作
546	1625799600000	281	t	反馈【Lawrence】2021年07月09日 周五  托福写作 Lesson 05\n\n课堂表现：\n今天做了讲评了一篇综合写作和一篇独立写作。Lawrence 的综合写作进步还是蛮大的，听力的细节呈现的比较多了。独立写作部分，要注意supporting sentences的编写，按照我给的工具包。\n\n今天重点：\n1. 作文点评
296	1624960800000	265	t	课堂表现：\n通过这两次课发现，两位同学在听力上都是水平非常高的，这一次的考试保守估计都能拿到 25 分。今天我们做的是托福听力材料分类当中的 astronomy，天文学。天文学分类对于很多同学都是比较大的困难，有大量的细节题，两位同学都反映自己对细节题比较没把握，但是今天在练习的时候几乎都是全对。之后我会带两位同学一起熟悉不同学科的听力材料，争取这次听力能拿到满分。
547	1625133600000	265	t	课堂表现：\n通过这两次课发现，两位同学在听力上都是水平非常高的，这一次的考试保守估计都能拿到 25 分。今天我们做的是托福听力材料分类当中的 astronomy，天文学。天文学分类对于很多同学都是比较大的困难，有大量的细节题，两位同学都反映自己对细节题比较没把握，但是今天在练习的时候几乎都是全对。之后我会带两位同学一起熟悉不同学科的听力材料，争取这次听力能拿到满分。
549	1625306400000	265	t	\N
550	1625479200000	266	t	\N
551	1625652000000	266	t	\N
553	1625997600000	267	t	\N
554	1626084000000	267	t	\N
406	1624869000000	299	t	6/28 单词测试反馈\n第一天布置了100个托福高频词汇，从检查情况来看，Lawrence有用心去背，结果整体不错，只有两个词完全想不起来意思（copious，amplify）。\n另外有少数词记下的意思不是特别准确，例如 dismantle，congestion，contiguous，contemporary，我在语音的时候都用一些具体的context做了解释，帮Lawrence明确这些单词的意思加深印象。\n明天中午我会发新的任务，在那之前如果有时间都可以再复习一下今天的词汇。
572	1625880606000	293	t	【Lawrence】2021年07月10日 周二  中学语法课 Lesson 07\n\n课堂表现：\nLawrence记得去复习今天的笔记，今天的内容开始进入句子，会比之前的难一些。\n\n今天重点：\n1. 从属连词\n2. 句子结构
407	1624955400000	299	t	6/29 单词测试反馈\n今天继续给Lawrence发了100个单词任务。Lawrence完成得不错，只有四个词没想起来意思（communal，advocate，elaborate，discipline）。\n另外，我还检查了昨天的几个没记住的词，今天基本都能答出来。在测试的过程中，我也针对一些其他词做了补充讲解。\n\n提醒：Lawrence最近忙，但仍然需要打开背过的单词进行复习哈，那样效果会更好
408	1625041800000	299	t	6/30 单词测试反馈\n今天继续给Lawrence发了100个单词任务。Lawrence完成得不错，今天只有divest是完全没想起来的，另外像deflect，anxiety，burgeon这几个是不太熟悉，列在这里给你多看几遍哈。\n我今天也把昨天和前天不熟的词都考了一遍，contemporary 要注意“同时代的”这层意思。
1337	1629698400000	609	t	08.23 刘行 数学课后反馈：\n今天主要讲解了积分面积涉及到∞，这类题型最终再代入时都会近似为0，可以忽略不计。\n体积的积分问题为比较抽象，所以今天课后自己做下手工，做大概30~40个圆，半径全部不同 ！当做明天上课用的辅助工具。
556	1625214600000	299	t	7/2 单词测试反馈 5\n今天继续给lawrence 发了100个单词，背挺好的，只有defer，barren 没记住哈，注意deter，disintegrate，fertile，dismantle这几个词也在脑子里多想几遍。\n\n明天的话，除了新词之外我还会在前几天的词里抽几个来考察，加油复习一下
557	1625297400000	393	t	7/3 单词测试反馈 6\n今天还是100个单词，lawrence 测的时候不熟的词比前几天都多一些。睡觉前再好好复习下，争取都背到前几次那么好。\nengulf，eradicate，erode，erratic，excavation，extensive，fabricate，facet，endow，enduring，exclusive，excrete，expediency，expend，exploit，extant，extraneous，fallacious，exceedingly，explicit
559	1625464800000	395	t	7/5 单词测试 反馈8\n今天继续是100词，检查的时间比较早，lawrence背的效果还可以，多复习下面这些词：illusion，implausible，inconceivable，inevitable，infiltrate，henceforth，permeate，impetus，inaugurate，havoc。\n\n前几天的也要回看哦，加油
560	1625551200000	395	t	7/6 单词检查反馈 9\n今天还是给Lawrence 100个单词，2点检查的。今天比前三天背得好一些，不熟的单词数量变少了，另外还检查了前几天不熟的单词，回答得不错，看来Lawrence有抽时间进行复习。\n\n今天继续复习这些：integral，lading，manipulate，inveterate，lethal，reach consensus，enigmatic，helical
562	1625724000000	395	t	7/8 单词测试反馈 11\n今天给lawrence测了100个新单词和前段时间没背熟的词。最近一个星期的基本熟了，然后到一个星期之前的 defer，deter就记不清了。\n今天的部分需要重点复习的是下面的：\nperpetuate，plumage，prerequisite，pedestal，pertinent，preclude，prestige，preliminary。\n加油，前面的也要看
563	1625810400000	395	t	7/9 单词测试反馈 12\n今天给lawrence有测了100个单词，今天这部分都背得不错，基本能答出来。\n然后我就检查了一些前面背过的词，好些是以前背得还不错的，但过了一段时间就不太熟悉了，所以还要重复去看看哈，那些完整的单词列表。
564	1625896800000	395	t	7/10 单词反馈 13 \n今天继续背单词100个，lawrence表现不错，只有几个没想起来，另外继续复习了前面背过的，包括一些第一天背的单词，lawrence还记得大部分，要复习的是这些词：\nrenowned，retrospect，routinely，scorn，seething，severe，heterogeneous，implement，augment，decimate，intermittent
571	1625727600000	294	t	【Lawrence】2021年07月08日 周二  中学语法课 Lesson 06\n\n课堂表现：\nLawrence 要抓紧复习的脚步了哈，东西越来越难了。特别是固定搭配要记得去背哦！\n\n今天重点：\n1. 固定搭配积累\n2. 不定式\n3.并列连词
573	1625987700000	298	t	【Lawrence】2021年07月11日 周天 中学语法课 Lesson 08\n\n课堂表现：\nLawrence这次的作业做的不太理想，看得出来没好好复习就开始写作业了。今天在做错题报告前，记得先复习笔记。\n\n今天重点：\n1. 句子解析
1253	1629354600000	930	t	8月19日 宜林托福口语课反馈\n课堂内容：口语模考讲评+车轮战\n\n宜林这次的模考是有进步的，但是综合最后一道题的模版还是不熟悉。课堂练习中，独立口语会出现审题的失误，例如少看了关键词，或是对关键词的理解过于狭隘。综合口语一方面是阅读听力可能会出问题，另一方面就是因为不熟悉而讲得不流利。希望宜林能保持每天一套口语模考的练习节奏，找回熟练度。\n\n作业：TPO 39 的口语，直接用模考模式
1338	1627891200000	995	t	【Nina】2021年08月02日 周一  Pre-AWS 第一季 Lesson 13\n\n课堂表现：\n接近一个月没上课 Nina好多东西都忘记啦。 今天课上带Nina整体复习了一遍。今天的作文要记得尽量去描写画面感哦！\n\n今日内容：\n1. descriptive paragraph\n
569	1625382000000	289	t	【Lawrence】2021年07月04日 周天  中学语法课 Lesson 04\n\n课堂表现：\n我们今天讲了副词的用法。现在Lawrence对于语法的分析能力已经有明显进步了，继续加油！\n\n今天重点：\n1. 副词
1254	1629360000000	706	t	8月19日 菲菲英文课反馈\n课堂重点：《Woodsong》的写作目的分析\n\n分析文本的写作目的是一个比较难的任务，它要求我们从具体的语句之上去分析“为什么作者要说这些？”的问题，所以毫无疑问，这个能力之后还要不断训练。最近菲菲自己能体会到一个进步是阅读英文文本时能静心看的字数变多了，继续加油\n\n作业：\n1. lesson 4 https://shimo.im/docs/KcP6Kkkq6wXDGytR\n2. 单词 3-15\n3. 《posted》the bomb，注意去看 Rose 被起了什么绰号，然后她对这些绰号的态度是怎样的。
561	1625637600000	395	t	7月7日 单词检查反馈 10 \n今天还是给Lawrence100个单词的任务，完成得还不错，只有少数几个词没想起来哈，我们顺便检查了前几天没背好的单词。有时候我会用以前背过的单词来提醒Lawrence想某个新词的意思，他基本就能想起来，说明之前背的词记住了。\n\n今天继续复习这些：negligible，obligatory，obstruction，meager，oblige，pessimistic，expediency，fallacious
567	1625123700000	280	t	【Lawrence】2021年07月01日 周四  中学语法课 Lesson 02\n\n课堂表现：\n我们今天开始讲动词，我们也正式进入了 Subject-Verb Agreement。抓住句子的主语！加油！\n\n今天重点：\n1.动词
568	1625295600000	391	t	【Lawrence】2021年07月03日 周六  中学语法课 Lesson 03\n\n课堂表现：\n我们今天讲了主语宾语和主语补足语，以及形容词的用法。Lawrence 要注意在课上积极记笔记以及复习笔记哈，有些东西开始遗忘了！\n\n今天重点：\n1. 主语宾语主语补足语\n2. 形容词
60	1624860000000	275	t	0628  词汇课反馈：\n内容：\n- 介绍了词汇学习记忆方法（分类词根词缀，词源，一词多义，词汇变型）以及相应的案例\n- 对托福课入学测试中的词汇题部分进行讲解\n课堂表现：\n- Lawrence能够积极配合老师，完成问答与讨论
61	1624932000000	276	t	0629 词汇课反馈：\n内容：\n- 讲解了一些常用的词根词缀\n- 近义词辨析的案例（如“倔强的”，“惹恼”）\n\n课堂表现：\n- 能够举一反三，开始将词汇学习记忆方法应用到托福高频词表的学习中\n-在课堂讨论中，发现Lawrence的词汇量还比较有限。希望他能够抓住这次集训的机会，迅速提升词汇量。
576	1625641200000	295	t	反馈【Loretta】2021年07月07日 周一  托福写作 Lesson 04\n\n课堂表现：\n今天做了模考讲评，Loretta 进步很大了，综合写作的问题可以通过解析阅读的逻辑链条来解决。\n\n今天重点：\n1. 文章逻辑训练\n2. 综合写作练习\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
429	1625036400000	282	t	反馈【Lawrence】2021年06月30日 周三  托福写作 Lesson 01\n\n课堂表现：\n我们今天我们主要说了 body paragraph的逻辑链条和例子的写作。课下好好复习哦。\n今天重点：\n1. 例子写作
577	1625794200000	291	t	反馈【Loretta】2021年07月09日 周五  托福写作 Lesson 05\n\n课堂表现：\n今天做了讲评了一篇综合写作和一篇独立写作。Loretta 现在的我写作已经发挥的比较稳定了，模考和考试照常发挥就好。\n\n今天重点：\n1. 如何写 descriptive paragraph。\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
1340	1629453600000	997	t	【Nina】2021年08月20日 周五  Pre-AWS 第二季 Lesson 02\n\n课堂表现：\nNina 要多发挥想象力把自己看到的细节，尽量用准确的形容词写下来。Shot Sizes部分还需要加强哦！\n\n今日重点：\n1.Shot Size\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
575	1625468400000	295	t	反馈【Loretta】2021年07月05日 周一  托福写作 Lesson 03\n\n课堂表现：\n今天做了模考讲评，Loretta 现在的作文已经明显进步很多了，继续保持！要注意避免逻辑断层。\n\n今天重点：\n1. 文章细节提升\n2. 开头段话题推展\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
582	1626674400000	372	t	鸿润 | 7月19日 数学课反馈\n \n内容： 1.作业讲解 2. 换元法讲解 3. 多项式训练\n表现：作业比较晚才动笔哦，有些题还是没写完，并且自己写的时候方法都忘了，课上写的作业都还不错，思路很清楚，重点注意什么叫取中间两边，以及对十字相乘要反应快一些，计算不出错不等式就没有问题；换元法简单复习了一下鸿润基本思路没问题，也是计算问题；多项式之前没怎么学习，我们通过课后做题巩固，作业一定要提前写~\n \n
583	1626674400000	178	t	【Rebecca】2021年07月19日 周一  糯米经济学 IB 微观知识点精讲课 11\n\n课堂表现：\n今天开始进入 maro 部分的学习了，接下来会放慢进度。把知识点都串联起来。\n\n今天重点：\n1. development and growth\n课后任务：\n1.复习今天的笔记。\n2. 完成 Lesson Eleven Homework，并于周二晚 10 点前提交给我批改。\n3. 做错题报告哦
584	1626670800000	434	t	【Eva】2021年07月19日 周一  Pre-AWS 第一季 Lesson 06\n\n课堂表现：\n今天作业完成的很好，就是语法的细节要注意哦！\n\n今日重点：\n1. Unity and Coherence\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1343	1629108900000	1000	t	08.16 Simon 课后反馈：\n今天尝试了下三角函数的应用题求解，因为需要灵活的把之前讲解过的三角函数公式拿出来应用。这点Simon今天做的不太好，上课还是会有点被动，比较喜欢听，但是没有主动去思考，会等着老师讲解思路。这点需要自己慢慢改正过来。\n数学的应用题并不能老师你等着老师给思路，可以自己尝试着想一想，并不是老师的解题思路就是唯一方法，只有自己主动思考了，才会知道如何找到解题的切入口。
586	1625292000000	392	t	7/3 孺亦写作课 反馈\n\n今天先讲评了孺亦作文里的语法问题（主谓一致、have的使用，人称you的使用，句子的结构等等），然后读完了关于建筑的那篇范文，并重新讨论了一下孺亦作文的内容方面还可以怎么改进，注意多用compare and contrast。\n\n孺亦的一稿，内容挺好的，还利用了自己的地里知识去充实内容，不过这次语法错误有点多。\n\n作业：重写这篇作文
588	1626163200000	408	t	孺亦 | 7月13日 写作课反馈\n今天孺亦是上了网课，我感觉他注意力还是一直在线的，能够即时互动和回答问题。今天看了第一个中考准备作文题，关于收到的最好的礼物，孺亦的第一反应是“礼物可以是无形的”，在我继续追问下具体到了这个礼物是“妈妈教我的包容心”。\n这个角度是不错的，只要能写出具体的故事来说明这个礼物的可贵之处，就好了。\n\n然后我给孺亦介绍了作文的通用框架并带孺亦读了欧亨利的《麦琪的礼物》，深入地讨论了一下人们在什么情况下要送礼物，礼物意味着什么，一个礼物可以如何特别，一个故事如何打动人，等等。\n\n作业：完成这篇作文\n截止时间：14号，23:59
585	1626677100000	138	t	- 频率副词 （adverb of frequency）- 上周副词作业讲解\n表现：Nova和老师一起总结了生活中事情发生的频率，比如：brush your teeth - always，go to school - usually，lessons from Scholar Hills - sometimes。过程中，Nova状态很好。不过，课后要先复习每个副词（always，usually，often，sometimes，rarely，never）对应的频率，再开始写作业哈。
591	1626681600000	262	t	Nova丨0719 读写\n内容：\n复习 question words\n初步接触 be 和 has 的过去式\n\nNova 今天表现也非常的棒，而且接受能力非常地块，基本上我一说她自己就能理解。在做作业的时候，可以先判断时间，然后再判断主语的单复数，最后再决定应该用哪一个 be 动词或者 has or have。回去 Nova 需要复习一下我们上课提到的 last __ , ____ ago, just now, yesterday 这几个代表过去时间的副词。\n
592	1626675300000	34	t	今天 Lucy 在老师没怎么帮助的情况下完成了 115 字的 writing，总的来说还是有不小的进步的。在写作文的时候，Lucy 目前没有老师提醒的情况下，还是经常会忽略对自己写到的某个点进行细节补充。比如，I bought it because its interesting 这里，Lucy 需要提醒才会去具体地写为啥 interesting，我们目前会通过更多的 writing 训练，让 Lucy 更加习惯这种写作模式。
615	1626831000000	566	t	\n心婷 | 7月21日英语课反馈\n主要内容：\n1、形容词的比较级和最高级，以及应用；\n2、跟dress这个话题相关的词汇、表示“加、减”的数学词汇。\n\n表现：\n今天心婷表现不错，思考、记笔记、回答问题都很配合。在我们读内容时，注意在语音语调上多模仿老师。\n\n作业：\n把今天记的生词每个抄3遍，拍照发给老师。\n
593	1626678900000	35	t	今天 Lucy 在老师没怎么帮助的情况下完成了 115 字的 writing，总的来说还是有不小的进步的。在写作文的时候，Lucy 目前没有老师提醒的情况下，还是经常会忽略对自己写到的某个点进行细节补充。比如，I bought it because its interesting 这里，Lucy 需要提醒才会去具体地写为啥 interesting，我们目前会通过更多的 writing 训练，让 Lucy 更加习惯这种写作模式。
594	1626684300000	466	t	Michael 7月19日助教课反馈\n \n内容：作业讲解订正，单词抽查\n表现： Michael能够比较准确理解课上内容，但对inform和persuade的区别在做题有犹豫，多结合题目复习一下~作文的逻辑没有大问题，前两点没有准确点明和final exam的关系，最后一点写得很好，自己写完可以再检察，选取新的话题就有点想不到内容，课上稍微讲解了一下；单词都很好
596	1626748200000	524	t	\n7月20日 慧卿数学课反馈\n课堂重点：代数运算式的构建和加减法\n\n距离上次上课三天过去了，慧卿的知识遗忘是比较明显的。上周能做的很好的代数运算这周正确率明显下降，看来是还没有理解字母的含义。不过我是可以理解的，毕竟在课内我们也是要花很长的时间让学生慢慢建构代数概念。所以我们补基础就不着急，慢慢来，让她逐步适应抽象概念。
597	1626760800000	520	t	\n慧卿 |7月20日 英语课反馈\n课堂重点：\n1、what 引导的疑问句，形容词\n2、复习名词复数的形式\n3、复习单词\n\n课堂表现：\n今天慧卿上课态度整体是很好的，听写上周的单词时，慧卿还记得一半，做语法练习题的表现也不错。\n\n不过中午一直看手机，一点儿都没休息，到上课的时候就有点强撑着精神了，有些需要她思考一下的地方，反应就更慢
598	1626749400000	463	t	0720 科学思维课反馈\n主要内容：- 科学调查入门\n我们课上用Laura上学期的“paper flight experiment”作为案例，来解释了科学调查的基本步骤。实验的细节Laura有些忘记了，可以通过今天的作业进行复习，明天我们会具体分析“paper flight”这个实验以及写科学报告的规范。课后记得补全这几个概念的笔记（experiment, observation, hypothesis, data, dependent variable, independent variable）\n
599	1626744600000	462	t	主要内容：\n- 上节课作业讲评 - 细胞的结构与功能\n\n作业中出现了问“真核生物和原核生物相同点和不同点”的题目，Laura没有写完整（漏了相同点）。这类题目以后会经常出现在科学课里，注意要写完整。\nLaura记笔记很认真，很愿意记录例图。同时，很愿意问问题，去拓展自己的想法，举一反三。
601	1626767100000	370	t	7月20日 鸿润物理课反馈\n课堂重点：讲解运动学作业/学习力学的例题\n\n鸿润作业进步了，能把题目打印出来非常好。不过我也指出了他丢分的点是什么，希望下次能做得更好。力学这块能看出来基础还是比较薄弱的，关于受力分析、合外力等基本概念还需要多做例题，慢慢加强理解。
600	1626506100000	519	t	7月17日鸿润物理课反馈\n课堂重点内容：质量和重力的区别、密度公式和胡克定律\n\n上节课的作业没有打印下来做，这节课后一定要去做了。我们如果要在课堂上做作业，那复习知识点的时间就被大大压缩了。最有效的复习策略就是在开始总复习前就先做分类的真题。\n\n这节课的知识鸿润基本都有记得，不过很多细节还是要提醒才会想起来，下节课再做例题。\n\n作业：完成上次课的作业
1341	1628846100000	998	t	【刘行】2021年08月13日 周五  Pre-AWS 第一季 Lesson 12\n\n课堂表现：\n刘行现在对文章的分析也有了比较大的进步。今天是 Pre-AWS第一季的最后一节课啦，今天的作业也是一个 Final Exam。 在下笔之前先去复习一下段落要点以及积累的单词词组哦！\n\n今日重点：\n1.Introductory Paragraph\n课后任务：\n1.复习今天的笔记。\n2. 完成Final Exam。在石墨文档里了。
602	1626768000000	480	t	-  讲评细胞结构与功能的作业 -  话题“从细胞到生物体”\n课堂表现：\n作业中简答题的回答还不够完整，比如“How does its(线粒体) structure affect its function”这题只回答了“structure（结构）”是什么样的， 而没有说明这个结构是如何影响它的功能。之后的回答中要注意。\nLucas对生词和图例（各种生物组织的图例）的记录更加积极了
595	1626577200000	555	t	Tico 0718 物理化学助教课\n内容：\n - 复习7月5日到7月8日的物理与化学作业\n\n课堂表现：\n 这部分的作业是上一周的，所以Tico有点生疏了。不过，Tico还是能很努力地去翻译和解释题目内容，理解其中提供的条件。\n\n比较不熟悉的词汇： interval 区间， uniform 均衡的\\始终如一的，initial 最初的，distribution 分布，predict 预测，determine 决定，ion 离子，calcium 钙， sulfate 硫酸盐，relative 相对的， subatomic 亚原子的，radioactive 有辐射的， aluminum 铝，occupy 占据
580	1626328800000	401	t	 0715 听力口语课反馈\n\n主要内容：\n-  话题“Ocean Plastic“ 的听力以及口语讨论\n-   话题”Clone Endanger Species“的听力以及口语讨论\n课堂表现：\n"Ocean Plastic"话题的听力对孺亦比较有挑战性。 不过在老师的协助下，孺亦还是能把听力中描述的事件进行口头概括（问题，影响，解决方法）。\n\n“Deforestation”相关的口语作业，孺亦的回答稍显单薄，特别是第二题（What are deforestation's causes and effects?）。需要重写这道题的答案。\n\n“Clone Endanger Species”的听力对孺亦来说难词较多（如euthanize, complication等），课后要再去复习一下。\n\n课后作业：\n1. 预习Unlock 4 Speaking and Listening P93-95，预习文本，了解话题，做好听力和讨论准备；\n2. 完成 P85-P88 上的听力题与填空题。相应的音频 （4.1, 4.2, 4.3）\n3. P88 Question 10 里两道口语讨论题的回答大纲。
579	1626156000000	401	t	 0713 听力口语课反馈\n\n主要内容：\n - “deforestation”的口语话题讨论\n -  分析“Environment”话题的口语模板\n课堂表现：\n一开始的口语热身（How was your trip to your hometown），大多数回答比较简短。下次可以尝试描述更多的细节（感受、地点）。\n\n对于“Deforestion”这个话题，孺亦还不是很熟悉，所以我们补充了一个相应的口语模板。在分析模板的过程，孺亦能够积极讨论，回答老师的问题，寻找模板中好的词组和用法。\n\n课后作业：\n1. 根据模板和课上的讨论， 完成Unlock 4 Speaking and Listening P81 四个问题的回答与逐字稿(每个回答控制在5句话左右)\n2. 预习Unlock 4 Speaking and Listening P82-85，预习文本，了解话题，做好听力和讨论准备；
666	1627003800000	462	t	0723 科学课反馈\n主要内容：\n- 上节课作业讲评 \n- 生态学简介的后半部分内容\n\n课堂反馈：\n这部分内容对Laura来说还比较新，所以课上讲得比较慢。 课后，Laura要再去复习一下从个体到生物群系之间分为几个级别，每个级别之间的关系是什么。\n\n\n
50	1622878200000	46	t	 06/05 口语课反馈\n\n课堂重点与表现：\n我们先以"Deciding whether to get the vaccine"为题进行口语热身，各自提出了3点与是否接种疫苗相关的因数。口语热身后，我们利用书上的传染病风险地图讨论了“什么样的国家发生传染病的风险更高”，并完成了相关听力与生词练习。这篇听力结构比较清晰，孺亦能够抓住大部分主题句和关键词，但是在听细节方面稍显薄弱（如：effective，terrible，even know）。最后，我们用了mock exam里的讨论题进行了辩论（Communicate through Email vs. Communicate through phone）。这次在辩论的速度比较快，允许孺亦思考的时间比较少，所以，孺亦在观点的形成和拓展上表现没有之前好。我们之后穿插这种“有压力”的口语训练。\n\n课后作业：\n1. 完成Unlock 4 P65 Discussion里问题回答的逐字稿；\n2. 预习Unlock 4 Speaking and Listening P69-74，预习文本，了解话题，做好听力和讨论准备；\n3. 每日打卡的口语部分。
590	1626501600000	412	t	Kaie:\n孺亦 |7月17日 写作课反馈\n今天讨论了“践行三牛精神，做新时代好学生”这个作文题目。主要是读题、讨论思路和内容、读相关素材，来为写这篇演讲稿作文做准备。\n\n孺亦上课会配合很积极地去思考，在他先想了一下之后，我们再去看一些素材，会发现很多可以写，但原本没想到的视角和内容。我们明确了要讲一些具体的、可以采取行动的内容，比如读没有读过的书，按时完成作业，参加课外活动等等。\n\n作业：读剩下的素材，完成这篇文章的中间段\n\nKaie:\n孺亦| 7月15日 写作课反馈\n\n今天主要就是讲评修改了孺亦的“my best gift”这篇作文。\n1、为了前后主题一致逻辑清晰，针对很多细节进行了反复询问和讨论。例如孺亦原稿写的一些总结性的陈述句，比如“乘客滞留机场时妈妈出去帮忙安慰乘客”，我们讨论后扩展出了现场的环境和人的状态，还有妈妈是如何安抚的，以及妈妈是如何理解这个情况的。\n2、加了一个开头段来引出这个最好的礼物\n3、有些地方语言进行了简化，删除了一些拖沓的句子和短语。\n\n对于哪里需要更多细节，哪些是不必要的描述，怎样论证逻辑更通，孺亦还判断不太好，然后想例子的时候，亲身经历跟tolerance（包容，主要指包容不同意见或行为）不太好结合，所以觉得困难很大。\n\n这些问题不是他表达能力不好或者词汇量不够，而是需要更能判断什么是好的，接下去我们会多阅读和分析好的文章，来慢慢改进。\n
589	1626336000000	408	t	孺亦| 7月15日 写作课反馈\n\n今天主要就是讲评修改了孺亦的“my best gift”这篇作文。\n1、为了前后主题一致逻辑清晰，针对很多细节进行了反复询问和讨论。例如孺亦原稿写的一些总结性的陈述句，比如“乘客滞留机场时妈妈出去帮忙安慰乘客”，我们讨论后扩展出了现场的环境和人的状态，还有妈妈是如何安抚的，以及妈妈是如何理解这个情况的。\n2、加了一个开头段来引出这个最好的礼物\n3、有些地方语言进行了简化，删除了一些拖沓的句子和短语。\n\n对于哪里需要更多细节，哪些是不必要的描述，怎样论证逻辑更通，孺亦还判断不太好，然后想例子的时候，亲身经历跟tolerance（包容，主要指包容不同意见或行为）不太好结合，所以觉得困难很大。\n\n这些问题不是他表达能力不好或者词汇量不够，而是需要更能判断什么是好的，接下去我们会多阅读和分析好的文章，来慢慢改进。
607	1626141600000	494	t	内容：坐标中两点的距离公式，中点公式\n表现：瑞娜课程基本都能跟上哈，笔记做得都很好，也提出想多复习IG的内容，知识点能想起来，但是公式及做题方法都不太记得了哈；今天的课程主要是结合第三章的内容复习了勾股定理和一元二次方程，瑞娜对于这两个知识点都能记起来，但是运算过程中容易出错，并且方法不够灵活，通过课后做题巩固距离中点公式并且训练一下运算哈~\n作业是这些题目以及课上的一道计算重新自己再算一遍~周五晚上睡觉前交哈
608	1626058800000	184	t	Content: 今天带着三位同学进⼊了学术写作的话题领域。了解了段落的内 容，也学习了关于 Topic Sentence 的五个特点。 \n\nHomework: 在⽯墨⽂档⾥的 Lesson One HWK\n\nComment: 今天的课堂氛围⾮常好，⼏位同学思考的很积极，也很主动的在记笔 记。注意课下要复习单词和写作技巧哦。 ⼀定要先复习，再写作业。并且作业要在和 Summer ⽼师上课前先 写完哦！
1342	1628499600000	999	t	08.09 刘行 物理课后反馈：\n今天讲解了串联电路（series circuit）和并联电路（parallel circuit）。对 I，V，R各有一个公式。记忆方式：串联电路的电流公式和并联电路的电压公式格式一致；串联电路的电压公式和并联电路的电流公式格式一致；电阻公式：串联电路是累加和，并联电路是倒数的累加和。
609	1626231600000	184	t	Content: 今天我们主要学习的是 Supporting Sentences 的编写，并且学习了 5 个关于它的⼯具包。 \n\nHomework: 在⽯墨⽂档⾥的 Lesson Two HWK\n\nComment: 今天的课堂氛围很好，⼤家都很积极地参与讨论和思考问题，继续保 持哦。课下要记得先复习在写作业。关于 Question 2 的语法部分， 如果不会做，记得在群⾥问⽼师哦～
610	1626404400000	184	t	Content: 今天我们主要学习的是 Concluding Sentences 的编写，并且学习 了 4 个关于它的⼯具包。 也对段落的特点进⾏了总结。 \n\nHomework: 在⽯墨⽂档⾥的 Lesson Three HWK\n\nComment: 今天的课堂氛围很不错，⼤家在抢答的环节很积极。写出的答案也⾮ 常的棒。现在已经学完了段落了，所以⼤家以后再写⽂章的时候要记 得使⽤我们学过的技巧哦。
611	1626663600000	184	t	Content: 今天我们开始我们会设计⼀些 Essay 阶段的知识点，主要是讲⽂章 的五⼤要素。我们今天学习了前两个： Purpose 和 Audience。 \n\nHomework: 在⽯墨⽂档⾥的 Lesson Four HWK\n\nComment: 今天的课堂氛围很很好，⽼师提醒⼤家不⽤害怕在课上答题的正确 率，敢于积极回答会提就是最好的。课上的问题是为了刺激⼤家积极 思考，也为了检测知识点吸收的情况。加油哦~
613	1626847200000	372	t	内容： 1.作业讲解 2. 多项式化简 3.图像交点问题\n表现：作业不明白方法没有来问哈，直接就空着了，课上花了时间再重新巩固一下，多项式化简方法不难，但是计算鸿润很容易在正负号上出错，所以会算不出来，这次课后作业再多算几题，把计算能力提上来；图像交点问题鸿润一直不能和求根个数题目联系起来，课后要复习+做作业，只是换了问问题的方式，求解方法是一样的
614	1626847200000	520	t	\n7月21日 慧卿英语课反馈\n主要内容：\n1、复习了昨天的词汇\n2、记了新的数学单词\n3、学了物主形容词my，your，his，her\n表现：慧卿记单词比较慢，但记笔记、跟读、听写、写练习题这些是愿意配合的。\n我教她看着字母拼读，反义词的意思一起记，意思有联系的词一起记，联想单词的实物等技巧，需要她慢慢主动去用。
616	1626831000000	462	t	- 上节课作业讲评 \n- 从细胞到生物体\n昨天的作业中有几个因为“马虎”发生的错误，比较可惜。希望之后Laura在做作业之前，能够通过讲义来确认课堂笔记是否完整，是否正确。如果有了这步的话，“马虎”的问题会改善很多。\n今天的课上，我们稍微放慢了讲课速度，保证Laura能够把笔记记完整。相较昨天，今天的词汇和内容也比较好消化，希望作业能够保证准确率哈。
617	1626835800000	463	t	我们用课内的科学报告评分细则为Laura分析讲解了“paper flight experiment”。通过昨天的预习作业，Laura回忆起了这个实验中的很多细节。下次如果有遇到类似的报告，我们还能从以下方面进行改进：\n1. 文内引用（in-text citation）；\n2. 详细叙述数据处理的过程（data processing），并给出例子；\n3. 鉴别实验中的控制变量（control variables）；\n4. 实验步骤（steps for experiment）是否描述详尽。
618	1626847200000	178	t	课堂表现：\n这次的作业 Rebecca完成的非常好，对知识点的理解很透彻，继续加油！这几次的作业量比较小，可以拿点时间做错题报告嗷！\n\n今天重点：\n1. GDP&GNI\n课后任务：\n1.复习今天的笔记。\n2. 完成 Lesson Twelve Homework，并于周四晚 10 点前提交给我批改。\n3. 做错题报告哦
1255	1629331200000	924	t	8月19日 英语课反馈\n主要内容：\n1、讲评作业\n2、形容词的比较级 more\n3、情态动词 can\n\n表现：\nRoy 今天早上有点困的样子，还能坚持上课，很棒。\n讲作业的时候，涉及到了第一人称第二人称第三人称，Roy之后要对这个概念有印象，这样才能用好主谓一致原则。\n比较级的作业中，有一些单词是roy不认识的，但roy没有主动去查，所以就没写对题。\n希望以后作业中遇到这种情况，都要自己主动查字典解决问题，并且把生词记下来。不要等着老师来告诉你。
612	1626836400000	184	t	Content: 今天我们讲了 clarity，是⼀个在写作的过程中的要素，主要是针对 句⼦如何写的更加具体。⼤家课下要多加练习，这个技能现在是⼊⻔ 阶段，之后会越来越难，也会越来越重要。 \n\nHomework: 在⽯墨⽂档⾥的 Lesson Five HWK\n\nComment: 今天的课堂氛围很很好，回答的很积极。同学们在⽣活中的积累也是 很多的，这对于写作是⾮常重要的。⼀个好的 writer ⼀定要多积累 ⽣活中的所⻅所闻作为写作的素材。 但是有发现同学们开始遗忘学过的知识了，要注意复习哦！\n\nComment: 今天的课堂氛围很很好，回答的很积极。同学们在⽣活中的积累也是 很多的，这对于写作是⾮常重要的。⼀个好的 writer ⼀定要多积累 ⽣活中的所⻅所闻作为写作的素材。 但是有发现同学们开始遗忘学过的知识了，要注意复习哦！
1256	1629360900000	574	t	08.19 Caesar 课后反馈：\n今天讲解了解方程组，当两个方程中有一项是完全相同时，可以将两个方程做减法。当有其中一项是仅仅符号不同时，可以将两个方程做加法。今天的上课状态不太好，以后上课还是需要自己多主动思考下，不能总是被动等老师讲解思路。
621	1626761700000	34	t	 今天表现不错，现在 Lucy 基本也能养成习惯自己每天写 150 个词左右的 essay，不会有抱怨。今天状态特别不错，写出来的 essay 已经有运用到我们之前的一些句型和词句了。虽然目前 150 词可能对初中来说会少了点，不过已经比之前有很大的进步了。
622	1626765300000	35	t	 今天表现不错，现在 Lucy 基本也能养成习惯自己每天写 150 个词左右的 essay，不会有抱怨。今天状态特别不错，写出来的 essay 已经有运用到我们之前的一些句型和词句了。虽然目前 150 词可能对初中来说会少了点，不过已经比之前有很大的进步了。
623	1626857100000	466	t	Michael 7月21日助教课反馈\n \n内容：课堂内容复习，作业讲解订正 \n表现：Michael作业完成得都还不错，对课上得知识点掌握得还可以，pronoun reference这一块大概能理解，到做题里比较分不清，主要是没有联系上下文去推敲，只理解了大概的意思，代词比较细所以要多理解；单词大部分都能说对，个别同义词的拓展会想不起来
625	1626913800000	529	t	7月22日 Shiqi&Anna 英语课反馈\n\n主要内容：\n1、复习and的用法，形状、颜色相关的词汇\n2、完成一篇主题是 rainbow的阅读理解\n3、讲解昨天的绘本阅读\n\n表现：两位同学在复习的时候，and的用法掌握得很好，三角形、正方形、长方形的英文还不太会说，以后还会重复复习。阅读理解的时候，生词会多一点，在老师翻译讲解之后，同学们的兴趣会更浓，积极地回答问题。在阅读中，老师会挑一些单词让她们记下来。
624	1626917400000	566	t	心婷 | 7月22日英语课反馈\n主要内容：\n1、四则运算和数相关的英文词汇\n2、一般将来时\n3、阅读理解和句子写作\n\n表现：\n在做阅读的时候，生词会多一点，心婷有点犯困；其他时候状态都很好，课堂任务都参与得很好，而且看得出来心婷对数学是比较感兴趣的。\n\n作业：（完成后拍照发给老师）\n1、完成练习题\n2、抄写单词，每个3遍
178	1625292000000	171	t	雅思听力课 \n\n今天我们过了一遍雅思实战考题的 part 1，2 ，并且给李获设置了一些用于回答可用的模板。李获目前还是需要多磨炼嘴皮子，布置的朗读作业一定要去做！ 不要偷懒，目前虽然已经比较流利，但是还是有上升的空间的。\n
627	1625123700000	35	t	  今天我们主要讲的就是如何去写好一个 topic sentence 和 support sentence。Lucy 目前的比较大的问题就是写的速度会比较慢，我会在这一块先停下来，具体找到她为什么写作慢的原因，帮助 Lucy 看看能不能去解决这个问题。今天写了比较多的内容，我就先不留作业了，尽管很累了，Lucy 还是尽肯能完成了，还是值得表扬的~
626	1625120100000	34	t	  今天我们主要讲的就是如何去写好一个 topic sentence 和 support sentence。Lucy 目前的比较大的问题就是写的速度会比较慢，我会在这一块先停下来，具体找到她为什么写作慢的原因，帮助 Lucy 看看能不能去解决这个问题。今天写了比较多的内容，我就先不留作业了，尽管很累了，Lucy 还是尽肯能完成了，还是值得表扬的~
628	1625206500000	34	t	今天我们的主要内容就是帮助 Lucy 找到她写作文慢的原因，两节课我们都一起在写作文，我给一个 topic sentence，她写出 supporting sentence 和 examples,。现在 Lucy 愿意去写，也能够花时间去写作文，但是她目前对于写可能还是比较恐惧，经常很久时间都不知道怎么去动笔，我们只能慢慢去训练她先从知道自己要写什么然后怎么下笔写，至于一些语法的小错误就需要她自己慢慢在写和订正的过程当中去改正了。今天的作业就是订正我们今天的 writing。Lucy 说这几天有点累了，周末带出去放松一下吧
629	1625210100000	35	t	今天我们的主要内容就是帮助 Lucy 找到她写作文慢的原因，两节课我们都一起在写作文，我给一个 topic sentence，她写出 supporting sentence 和 examples,。现在 Lucy 愿意去写，也能够花时间去写作文，但是她目前对于写可能还是比较恐惧，经常很久时间都不知道怎么去动笔，我们只能慢慢去训练她先从知道自己要写什么然后怎么下笔写，至于一些语法的小错误就需要她自己慢慢在写和订正的过程当中去改正了。今天的作业就是订正我们今天的 writing。Lucy 说这几天有点累了，周末带出去放松一下吧
630	1625552100000	34	t	今天 Lucy 注意力会比较差一些，直接表现就是我很多时候需要重复好几遍我说的话才回应不过写作文的时候还是比较干脆，愿意去写，写作文的时间也稍稍有加快，并且出现了一些不错的句子。
631	1625555700000	35	t	今天 Lucy 注意力会比较差一些，直接表现就是我很多时候需要重复好几遍我说的话才回应不过写作文的时候还是比较干脆，愿意去写，写作文的时间也稍稍有加快，并且出现了一些不错的句子。
634	1625448600000	161	t	今天我们继续完成空间逻辑练习，今天总结冠宇需要注意的点如下:\n1.注意题干中出现了多少种图形，特别要注意它们的边长数量\n\n2.注意题干中出现了多少交点，相交的线段有什么样的特点。\n\n3.规律题中注意一三五，二四图的分别规律。
635	1625193900000	274	t	今天继续完成我们的逻辑类题目，冠宇现在对所有的题型已经更加熟练了，有的时候不仅要看每个图形自己的变化，同一组或同一类的图形也是需要进行对比和观察的。目前冠宇做题还是喜欢排除到两个选项然后直接猜，这样做正确率并不高，我们还是需要尽可能的找出规律来选择唯一正确的选项，不要放弃！
636	1625107500000	273	t	今天带冠宇完成空间逻辑题目，通过逻辑推理判断某个图形是否属于某一类或某一组图形。这种类型的题目会有比较多的陷阱和混淆选项，冠宇有的时候会被部分选项迷惑。审题的时候冠宇需要做的慢一点，不用这么快去做题，时间都是充足的。
637	1626909600000	527	t	7 月 22日 茗捷& 诗淇 科学课反馈\n\n主要内容：\n\n - 植物的结构与功能\n - 植物的分类\n\n课堂表现：\n两位同学对植物需求和部位的词汇记得挺好的（意思和区分相应的部分）,除了 stem（茎）这个词。\n\n今天课上，两位同学整体状态不错，记笔记也比较积极。通过讲解图例和观察街景，我们学习了植物分类与功能的相关单词。\n\n作业：\n - 复习植物的功能（take in 吸收，hold up支撑，move though 穿过，seed 种子，grow 成长，space 空间，ground 地面），植物的分类（tree 树， shrub 灌木， grass 草） 。明天课上口头检查这两个问题的回答。\n - 两面练习（植物基础词汇与知识的复习）。
633	1625724900000	34	t	这两天我换了一种方式，感觉可能会更适合 Lucy，就是跟着 Lucy 一起去写，让她每写好一句就发给我看，然后我们一起来扩写以及修改写好的 essay。现在虽然速度依旧会有点慢，但是已经有所进步，质量也上升了，能写出我觉得非常不错的句子了
632	1625728500000	35	t	这两天我换了一种方式，感觉可能会更适合 Lucy，就是跟着 Lucy 一起去写，让她每写好一句就发给我看，然后我们一起来扩写以及修改写好的 essay。现在虽然速度依旧会有点慢，但是已经有所进步，质量也上升了，能写出我觉得非常不错的句子了
1257	1629369600000	869	t	08.19 Nina 课后反馈：\n今天开始讲解二次方程。题型：x²=k及衍生题型：（）²=k。根据k的正负性，分为3种结果，特别要注意k＞0时，记得别忘写“±”噢。
639	1625896800000	171	t	7月10日 李获 雅思口语\n\n今天我们归纳了几个雅思口语的常见考题，运动和朋友，李获目前想是要把所有此类的考题全部引向篮球类的话题，当然他们也是可以有联系的，通过运动来交朋友。这里需要李获同学记下运动的几个好处 Tips：\n1. cultivate friendship\n2. teamwork ability\n3. leadership skills\n4. keep fit
640	1626836400000	521	t	7月21日 慧卿数学课反馈\n课堂重点：练习代数运算的化简\n\n关于合并同类项，慧卿有进步了，能把字母和数字分开。（但还需要我的提醒）但是在具体的运算中，发现一个新问题，慧卿对加法交换律是不熟悉的，需要补充关于什么是负数的知识讲解，和加减法混合运算的练习。
447	1625638500000	34	t	2014, when I went to the supermarket with my parents, I saw some people selling small fish and turtles, so I bought a little turtle. Because he looked like a lily pad, I named him Lily pad. In the past I thought it was just for fun, but later I found that his company made my life more interesting.\n \nI settled him in a tank. When I was grade two, I love to observe him everyday after school. I put him on the floor. He wiggled very slowly. I fed him some turtle food. Gradually, we became more familiar with each other, and our relationship became better and better.\n \nHe accompanied with me through primary school and died when I graduated. I feel very upset, because he was one of my best friends. If I have chance, I would like to say, thank you for your company. I buried him under the Chinese toon tree.\n\n这是我们一起通过昨天 Lucy 的作业最后改出来的 essay，字数相比之前有了相当大的进步, Lucy 目前的学习态度开始慢慢变好了，虽然需要的时间比较长，但是至少还是愿意去写的。继续努力！
448	1625642100000	35	t	2014, when I went to the supermarket with my parents, I saw some people selling small fish and turtles, so I bought a little turtle. Because he looked like a lily pad, I named him Lily pad. In the past I thought it was just for fun, but later I found that his company made my life more interesting.\n \nI settled him in a tank. When I was grade two, I love to observe him everyday after school. I put him on the floor. He wiggled very slowly. I fed him some turtle food. Gradually, we became more familiar with each other, and our relationship became better and better.\n \nHe accompanied with me through primary school and died when I graduated. I feel very upset, because he was one of my best friends. If I have chance, I would like to say, thank you for your company. I buried him under the Chinese toon tree.\n\n这是我们一起通过昨天 Lucy 的作业最后改出来的 essay，字数相比之前有了相当大的进步, Lucy 目前的学习态度开始慢慢变好了，虽然需要的时间比较长，但是至少还是愿意去写的。继续努力！
641	1626057900000	166	t	7月12日 李获 雅思口语课\n\n今天我们归纳了另外一些口语中常出现的话题，地点和事件类话题。这一类的话题会比较的特殊，变化性也比较大，我们只能大致地总结出一些描述自己的事例时可以用到的模板和句型。李获同学还需要更多地去总结一些自己感兴趣也可以说的话题。
642	1626933600000	549	t	诗雅 | 7月22日 词汇课反馈\n \n内容： 上节课重点内容复习检测，常见词根词缀，合成词讲解\n表现：周日测的易错词还是忘了哦，所以再测试讲解一下；今天扩充了一些前缀，尤其是anim-的单词和来源，诗雅比较感兴趣，也主动用自己的话把相关内容总结记到笔记本上；合成词也是比较常见的构词，诗雅没有太大问题，多拓展了些，注意合成词的词性哦，可以通过词本身或者在句子里的特点进行判断\n \n作业：单词打卡+复习词根词缀
207	1626609600000	367	t	诗雅 | 7月18日 词汇测试课反馈\n \n内容： 上节课重点内容复习检测，单词测试\n表现：这周单词有点多哈，但主要是检测诗雅对于词性转化能否反应过来，都做得挺好的~注意几个以al结尾却是noun的单词，以及-ous是形容词后缀，weave没有反应过来是woven的原形，注意obediently的发音以及bruise的意思，spilt和split要分清楚，其他都很棒，下次课选一些词来进行造句练习\n \np.s明天开始每日打卡30个单词哦
643	1625119200000	249	t	今天数学作业虽然多但是冠宇做得很快，写作业状态不错；第一部分的图形逻辑不够细心，基本再看几眼都能选对也能解释清楚；第二部分的逻辑题目做的不错都全对；第三四部分不难，也是冠宇比较擅长的，都是自己做第二遍也对，所以有跟冠宇说写数学不需要求快，多观察思考最重要；今天英语单词背诵得快准确率也高中文准确率32/35，听写14/15，发音注意cleanse/serene/miscellaneous/horizon，花了比较多时间复习2930的易错单词，一开始只记得两个，让冠宇复习到全部都掌握了~有跟冠宇说好明天要复习测试30/1号的全部单词+测试新单词。
647	1625724000000	249	t	数学作业也做的很好哈，有仔细思考，只错了3题，这3题都是图形旋转顺序的小细节没注意到，继续保持~\n今天心情不错效率挺高的，单词测了两次，第一次准确率32/46，第二次40/46，最后都全部掌握了，复习了26个单词，同时抽查了两个词的造句，到造句的时候对词性把握不准用错地方了，语法还比较一般；所有单词都进行了听写，今日单词注意façade/font的发音，lag和log的区分，ambulance/fuel/handcuff/church/lettuce里“u”的发音，th的发音有进步；
645	1625551200000	249	t	今天的数学作业比较多，刚开始状态一般，找图形规律不够细心所以前面错误率高，后面比较进入状态准确率很好，但是对称类型的题目喜欢用尺子比对甚至直接照看影子，有点投机取巧了；两日的英语单词确实多，但是是冠宇能够背下来的，一开始畏难比较烦躁，开始听写练习后比较进入状态，发音注意obtuse里的“o”的发音，fear和fare的发音区分，dwindle里”dw”的发音，th的发音还需要提醒；冠宇关于“w”的发音比较容易出错，昨日单词准确率33/36，今日单词准确率30/36，状态还是要保持住哈
649	1625896800000	443	t	数学作业比较简单，冠宇也挺细心的，40题中只错了3道~继续保持好状态。\n\n表现：今天单词稍微难些，但是冠宇状态还行，没有经常看手机也不排斥我把手机没收，单词背得快但是还没到下课就忘了一些，所以46个单词反复测到冠宇能迅速反应出来，听写中注意verse/ruffle/pine/stutter /shed/rapid；
650	1626156000000	249	t	数学做得不错，只错了三题。\n今天单词很简单，冠宇基本完成得很快也没有什么问题，就是注意stale/stair/steal之间发音的区别，挑了5个简单的词造句，一开始造句太短了，但提醒后自己也能造长句；复习了第一次课的单词，冠宇能记得大部分非常不错，把不熟悉的也拼写加检测了一遍；
644	1625205600000	249	t	今天的数学作业和新单词比昨天少哈，但是冠宇效率没昨天高；数学作业依然做得很快，立方体相关的题目考虑得不够完善，有时候把卷子转一下就很明朗了；逻辑题是冠宇的强项，基本大方向都能很快找出来，会忽略一些细节，需要横向纵向综合考虑。\n英语新单词不多，发音注意v和l的发音，v在发音和听音上都会听成f，l会以为是r，新单词准确率14/23，错误的词再测proclaim/haphazardly记不熟，听写全对；前两天的单词复习情况：昨天的单词记得不错准确率32/35，前天的单词24/37，这周末要要把单词都好好复习。
1260	1629336600000	894	t	8月19日 语法课反馈\n主要内容：\n1、代词\n2、冠词\n\n表现：\n诗雅对人称代词比较熟悉，对后面的指示代词，不定冠词，关系代词有部分的了解。今天对于哪些词是属于各类代词的，还有代词运用中的一致和指代对象进行了介绍。\n在阅读中，常常可能因为没看出来关系代词、指示代词的作用或者不能理解不定代词的含义而读不懂。而在写作中会因为没掌握这些词的功能，而不用代词或者用错。\n希望认真完成课后练习，巩固好这部分知识。\n\n冠词相对来说数量少，而且更常见，所以诗雅也是比较熟悉的。之前的写作中有表现出来用错冠词的情况，希望之后更注意。\n\n作业：稍后更新到石墨文件
1344	1628590500000	1005	t	08.10 Michael 课后反馈：\n今天复习了 simultaneous equations（联立方程组）。因为中间跨度了有一个月没上课，所以刚上课，给Michael题时，还是有点不太知道怎么做的。不过经过一两题的讲解后，Michael就能明显感觉到熟练了。课上大部分的题都是让他自己写的，解题速度和准确率做得非常好！不过就是有一点，别太迷信答案一定得是整数，即使是分数也是比属于常见的答案类型
1346	1629365400000	963	t	08.19 Michael 课后反馈：\n今天讲解坐标系的两点之间的距离。公式是由勾股定理推导而来的，由点的距离可以来判定点与点之间的位置关系（相等或垂直）。
1347	1629511200000	827	t	08.21 Michael 课后反馈：\n今天主要讲解了midpoint（中点）和parallel lines（平行线）及perpendicular lines（垂直线）的斜率关系。\n可以把中点理解成平均值，即取两点各自x和y的平均数。平行线的斜率一致，垂直线的斜率相乘为定值“-1”。
1348	1628150400000	1006	t	08.05 Caesar 课后反馈：\n本节课讲解了新知识点：分数指数。为了让指数和根式能够相互转换，所以引入了分数指数的写法。解题时可以把分数指数写成根号的形式或者整数指数的形式，不过从解题的难易程度上，更推荐写成整数指数的形式，可以提高解题速度，Caesar课后需要多练练指数和根号的转换。
675	1626226200000	501	t	7 月 14 日 茗捷& 诗淇 科学课反馈\n\n主要内容：\n - 科学话题 "观察与工具"\n - 实践“如何使用我们的感觉”\n课堂表现：\n上节课与“五感”相关的词汇，两位同学还没有完全掌握，所以我们通过图例又练习了一遍。在将“观察与工具”部分的时候，两位同学能够积极地讨论，将之前在课内学到的科学概念转换成英文。今天还引入了一些科学课本句子的读与理解，这对两位同学比较有挑战性，需要慢慢适应。
646	1625637600000	249	t	数学作业比较多哈，文字型为主，知识点冠宇都会，但是思路有时候会比较复杂，尤其一元二次方程相关的题目；因为是文字型题目，冠宇读题不够仔细，个别是因为单词的影响，读题想当然就按照感觉来写，反而想复杂了；今天写数学时比较不够专心，正负号、个位数的乘除这种小细节都会出错；背单词的时候状态比较好，今天总共有过了50个单词，其中新单词的准确率35/45，复习的单词一开始都不太记得，针对错误的单词都有再巩固一遍；perspire和precipitate会搞混，athlete和throne里的th发音还是会出错，hornor”h”不发音
1259	1629370800000	545	t	【子杰】2021年08月19日 周四  AWS 第二季 Lesson 10\n\n课堂表现：\n子杰今天的状态很棒。今天的内容比较多，有很多需要课下再复习理解的地方哦！\n\n今日重点：\n1. Fallacies of Relevance\n2. Analogy\n\n课后任务：\n1.复习今天的笔记。
1345	1628764200000	961	t	08.12 Michael 课后反馈：\n今天针对上节课复习的方程组知识点，课堂上做了应用题。Michael现在看到这类题目基本上能直接给出正确式子，这点是非常不错的。不过当题目的列式出现分数时，得学会先进行适当的变换，再运算方程组，这样会减少不必要的运算量。
1349	1629100800000	1007	t	08.16 Caesar 课后反馈：\n今天讲解了Simultaneous equations（联系方程组）的两种题型，学会把方程的一左一右看成一个整体，然后进行等价替换。即先求出其中一个值，再求出另一个值。而答案的正确与否，自己需要check一下， 验算正确则答案一定对，验算的步骤一定不能够省略。
648	1625810400000	249	t	数学作业不难，都是关于括号的多项式化简，主要考察正负号变化及合并同类项，冠宇一开始想用计算器，并且不愿意化到最简，觉得麻烦，心态要稳住哈，题目最后都做对了，细心有耐心些就能做好~\n今天14:40到16:50结束课程，明天需要再补20分钟；今天总共背了46个单词，刚开始畏难想讨价还价，最后还是都背下来了，第一次测试准确率23/46，第二次40/46，抽查了20个单词听写准确率18/20，bustle/spectator/detect/disintegration/preserve/overwhelm都是发音+中文不太熟悉，复习的单词中idle/tranquility/concord不熟悉，都全部再进行巩固；
651	1626939900000	370	t	7月22日鸿润物理课反馈\n课堂重点：讲解胡克定律的作业/学习力矩平衡的例题\n\n这节课鸿润身边全程有巨大的装修声，我们还是坚持上完了，不容易哈之后最好还是能有个安静的上课环境，不然就是调整一下课程的时间到非装修时间。课程进度方面很顺利，鸿润这节课能很好的跟上老师的讲解，外加自己主动思考，就是面对读题时遇到的英文难点会比较想放弃，以后要重视读题时彻底读懂。
652	1626921000000	524	t	7月22日 慧卿数学课反馈\n课堂重点：练习基本运算的顺序；学习幂运算\n\n慧卿能按照老师的指导运算正确，但是在基础算数时一是算得慢，二是有时会出错，所以还要多加练习。在算纯加减法的运算中，她会下意识的想要算快一些，但是她对与括号相关的运算法则，也就是乘法分配律是不熟悉的，之后继续补充相关练习。\n\n接下来两节课的重点：负数、乘法分配律
653	1626933600000	520	t	7月22日 慧卿英语课反馈\n主要内容：\n1、复习昨天的单词\n2、学了our, their, we, they这几个词的用法\n\n慧卿今天表现不错，虽然涉及到加减乘除和差积商的英语单词比较难，但是在课堂开始的时候和课堂结束之前，分成两次复习和听写后，最后都把意思对应上了。明天继续复习。
654	1626940800000	480	t	0722 Lucas Pre-IG 科学课反馈\n主要内容：\n -  讲评昨天的作业\n - 生态系统中的能量传递\n\n课堂表现：\n昨天作业整体完成还不错，就是有些小问题: 没有标明单位(degrees Celsius)，未使用程度副词 (about)，概念叙述不完整 (biome)。\n\nLucas对今天的内容比较熟悉，课堂比较流畅。不过，一些生词的读音还是要去复习一下：herbivore, carnivore, omnivore, scavenger。
603	1626854400000	480	t	0721 Lucas Pre-IG 科学课反馈\n主要内容：\n -  讲评从细胞到生物体的作业\n -  话题“生态学介绍”\n\n课堂表现：\n\n昨天作业的准确度没有以前高，建议先完成quizlet学习集的整理再来写每天的科学作业。同时，如果题目不好理解，也可以问我哈，不可以太过主观。\n\n课上，Lucas的表现和记笔记没有前几节课积极，希望能调整一下。
655	1626750000000	475	t	反馈【Lucas】2021年07月20日 周二  中学语法课 Lesson 03\n\n课堂表现：\nLucas 一定要记住，先复习在写作业，不然学了的东西忘的很快。\n\n今天重点：\n1. 作业讲评 - Subject Verb Agreement\n2. subejct object subject complement\n3. intransitive verb\n
656	1626831000000	477	t	反馈【Lucas】2021年07月21日 周三 中学语法课 Lesson 02\n\n课堂表现：\nLucas 这次作业进步很大了，正确率上升了不少，对主语和谓语一致有了很明显的意识。继续加油！\n\n今天重点：\n1. 作业讲评 - Subject Verb Agreement\n2. adjective
657	1626939000000	550	t	诗雅|7月22日 语法课反馈\n内容：讲评分词、句子作业\n表现：诗雅的作业正确率很不错。在区分不定式和动名词的使用时，偶尔会错，今天补充了一个区别是动名词指习惯性动作和已经发生过的事，不定式表示将来的动作。完成断句和标点符号的作业时，需要注意therefore，finally这样的词是副词，不是连词，不能连接两个句子。另外but, so这样的连词要确定前后内容的逻辑。
658	1627009200000	521	t	7月23日 慧卿数学课反馈\n课堂重点：比较正负数的大小，学习数轴的概念\n\n慧卿今天这节课表现挺不错，能够接受 -5 比 -2 小这样的反直觉内容。不过现在负数和正数混合的计算，还是比较容易出错，一旦多个数相加，就会没有办法口算了。希望慧卿能更虚心一些，即使是看似简单的运算，也要动笔算算，努力算对。
659	1627000200000	526	t	7 月 23日 茗捷& 诗淇 科学课反馈\n\n主要内容：\n- 复习植物分类\n- 动物栖息地\n\n课堂表现：\n\n课上，诗淇能够逐步调整情绪，到后半节课的时候，又能够积极参加讨论和互动了。\n我们先用以身边的植物举例将它们分为两大类（可食用edible 不可食用 nonedible）。\n然后，我们罗列了三种栖息地的名字，让两位同学自由发挥，画出这些栖息地的样子。最后，通过这些绘画，讲解相应的科学单词。\n\n作业：\n - 复习三种栖息地（desert 沙漠 forest 森林 ocean 海洋）以及相关词汇 (moist 潮湿的 land 陆地 shade 阴影 dry 干燥的 habitat 栖息地)。课上口头检查这两个问题的回答。\n - 根据笔记，填上“本周科学词汇表”中每个词的中文意思。
1419	1630116000000	827	t	08.28 Michael 课后反馈：\n今天讲解向量的拆解，记住当方向一致或相反时，只相差符号，而如果没有同方向的向量，则表未知向量时，需把向量放在合适的图形里去求解。
660	1626996000000	525	t	7 月 23日 诗淇&Anna 英语课反馈\n主要内容：\n1、听写单词、订正\n2、看图写句子\n3、带读绘本\n\n课堂表现：\n今天两位同学的听写都准备得比较好，诗淇写对了19个单词的拼写和意思，茗捷写对了14个。之后还会多复习加深印象，阅读中看到熟悉的词，需要尽量把意思想起来。\n\n今天写句子的练习时，茗捷能够根据给出的单词提示，组成完整的句子，对于句子结构有比较好的把握。诗淇今天因为前一个环节，茗捷给她批改的时候弄错了一个词，本来比茗捷多的一个贴纸就没了，后面就有些情绪，不太配合，需要老师重复给她指令，比如抄单词、读内容都是，造句的时候也不愿意尝试。\n下次听写之前，我们把规矩说得更清楚，避免这种情况。\n\n作业：\n1、抄写今天记的单词和句子，每个词2遍，每个句子1遍，\n2、阅读绘本，周六周日各2页\n3、背今天给的单词列表，下周一听写
661	1627002000000	357	t	诗雅|7月23日 语法课反馈\n内容：\n1、学习各种短语（形式、功能）\n2、讲评修饰语作业\n表现：\n今天的新内容会用到之前学的很多知识点，相当于也是复习巩固了。诗雅现在对于词性的判断、句子成分的判断，都进步了很多，不能分辨的情况很少了。\n另外要尽量抽出时间去复习之前的内容，还有把各个语法知识的英语说法记下来。\n\n作业：句子、修饰语 练习题
664	1626922200000	463	t	0722 科学思维课反馈\n主要内容：\n- 观察与推理\n\n\n课堂反馈：\n我们通过几个案例来介绍了观察和推理的流程，以及理解在生活和科学课中什么部分是观察，什么部分是推理。Laura课后再通过练习梳理一下逻辑哈。\n\n\n作业：\n- Worksheet ”Observation and Interference“
662	1627007400000	358	t	诗雅|7月23日 语法课反馈\n内容：\n1、学习各种短语（形式、功能）\n2、讲评修饰语作业\n表现：\n今天的新内容会用到之前学的很多知识点，相当于也是复习巩固了。诗雅现在对于词性的判断、句子成分的判断，都进步了很多，不能分辨的情况很少了。\n另外要尽量抽出时间去复习之前的内容，还有把各个语法知识的英语说法记下来。\n\n作业：句子、修饰语 练习题
663	1626917400000	462	t	科学课反馈\n主要内容：\n- 上节课作业讲评 \n- 生态学简介\n\n课堂反馈：\n上节课作业里面有些因为读题不谨慎而出现的错误，下次作业的时候，要注意读题，理解关键词，避免在基础题上丢分哈。\n\n课上，我们介绍了身体的三个功能以及相应的身体系统。之后，我们介绍了生态学的基本概念。Laura课后要注意回顾， abiotic factor和biotic factor的区别，individual、species、population三者之间的关系
1261	1629342000000	895	t	8月19日 语法课反馈\n主要内容：\n1、代词\n2、冠词\n\n表现：\n诗雅对人称代词比较熟悉，对后面的指示代词，不定冠词，关系代词有部分的了解。今天对于哪些词是属于各类代词的，还有代词运用中的一致和指代对象进行了介绍。\n在阅读中，常常可能因为没看出来关系代词、指示代词的作用或者不能理解不定代词的含义而读不懂。而在写作中会因为没掌握这些词的功能，而不用代词或者用错。\n希望认真完成课后练习，巩固好这部分知识。\n\n冠词相对来说数量少，而且更常见，所以诗雅也是比较熟悉的。之前的写作中有表现出来用错冠词的情况，希望之后更注意。\n\n作业：稍后更新到石墨文件
667	1627020000000	520	t	7月23日 慧卿英语课反馈\n主要内容：\n1、复习昨天的单词，还有they，we\n2、学习has，have表示拥有，人称和单复数的区别运用\n\n今天慧卿还是很认真的，她喜欢抄单词因为不需要想也不需要说，我们就把这个任务留到课堂最后，让她多抄了一些，复习之前的单词。\n今天学人称的时候，提出了自己的疑惑，说明有思考，然后做练习的时候，还会有些错误，但也在一点点改变，最后还有自己发现写错了，自我纠正的情况。
669	1627020000000	178	t	【Rebecca】2021年07月23日 周五  糯米经济学 IB 微观知识点精讲课 13\n课堂反馈：\n这几堂宏观的作业都完成的很好，进步很大了，思路越来越清晰。继续保持！今天的内容比较散乱，课下记得好好复习整理一下。\n今天重点：\n1. Business cycle\n课后任务：\n1.复习今天的笔记。\n2. 完成 Lesson Thirteen Homework，并于周天晚 10 点前提交给我批改。\n3. 做错题报告哦\n
668	1627023600000	581	t	反馈【Lucas】2021年07月23日 周五 中学语法课 Lesson 05\n\n课堂表现：\nLucas 现在的词汇是个很大的短板，在这方面需要引起重视加强一下。\n\n今天重点：\n1. 作业讲评 - Adj\n2. adverb\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。Lesson 05
1350	1629361800000	798	t	8月19日 写作课反馈\n主要内容：\n讲评昨天的独立写作和审题思路\n\n昨天的任务完成得不错，在个别思路罗列的地方，逻辑还要推敲一下，具体的我们已经讨论了。\n\n在文章中，有个别表达不够简洁的地方，我们有比较具体地分析和优化。一些用动词或者形容词做了主语这样的问题，之后要尽量注意。\n\n作业：读四个题目，写其中一篇
671	1627029000000	375	t	7月23日 鸿润 丨 化学反馈\n\n今天我们继续讲酸和碱的内容，鸿润对与酸碱这一部分的化学式记得不够劳，所以我们先复习下上节课的内容，并且会添加到今天的作业当中。这节课主要是讲了一个制作可溶性盐的实验，鸿润有在认真听，但还是可能没有非常的理解，我们会在作业里面继续巩固。\n\n作业：一份选择题，一份是化学式的复习
665	1627008600000	463	t	0723 科学思维课反馈\n主要内容：\n- 复习“观察与推理”\n- 定性观察与定量观察\n\n课堂反馈：\nLaura还需要继续练习区分“观察”与“推理"。\n课上，我们通过“观察蝴蝶习性”的案例讲解了定性观察与定量观察的区别。Laura课后要再复习一下，在这个案例中，出现了哪几种定量观察哈。
673	1626053400000	501	t	7 月 12 日 Anna, Shiqi 科学课反馈\n\n主要内容：\n - 上节课的科学生词复习\n - 话题“观察与五感”\n\n课堂表现：\n今天迟到了20分钟，下节课要早点来，做好课前准备（比如上厕所、倒水）。\n接下来，每天都有英语课和科学课，要记得带上相应的笔记本。\n今天课上的例子和讨论比较多，两位同学也比较愿意讨论和记录科学生词。特别是在观察”猫头鹰”的时候，两位同学表现出了很强的好奇心和兴趣，继续保持。
674	1626140400000	504	t	7 月 13日 茗捷& 诗淇 科学课反馈\n\n主要内容：\n - 上节课的科学生词复习\n - 话题“如何使用五感”，“观察与工具”\n\n课堂表现：\n今天，我们开始通过阅读科学课课本来学习相应的科学知识，涉及读写的练习。少数情况下，茗捷和诗淇对于用英语来学科学这件事还是感觉到疑惑（会问“为什么要用英语学科学”）。不过，两位同学记录科学生词的主动性比前两节课有所提升，继续保持哈。
676	1626316800000	505	t	7 月 14日 茗捷& 诗淇 科学课反馈\n\n主要内容：\n - 整理 “五感”与“工具”的科学词汇\n - 学习 “科学技巧”话题\n课堂表现：\n\n在一起整理之前科学词汇的时候，两位同学还显得比较生疏。课后要多花点时间复习。\n\n这节课学习的概念相对抽象（如预测、分类、模型）。我们通过几个讨论（动物分类、预测天气、蚕的一生）来帮助两位同学理解这些概念，效果不错。
1351	1629439200000	797	t	8月20日 写作课反馈\n主要内容：今天继续讲评昨天的作文和审题思路。\n昨天的作文写得不错，没有花很多时间讲，不过有些重复提到的语法错误还是会存在。另外在审题方面，现在桃子能比较快地想到思路了，注意每个题目中都有一些值得推敲的表达，多从各个角度想一想，能够帮助我们明确自己论证的方向，写出合理的逻辑。
619	1626827400000	526	t	7 月 21日 茗捷& 诗淇 科学课反馈\n\n主要内容：\n\n - 植物需要什么？\n - 植物的分类与结构\n\n课堂表现：\n我们先复习了动物的分类。两位同学今天课堂状态挺好的，能够主动地去记录科学生词。今天的互动主题是“你最喜欢的植物”，两位同学能够积极地讨论，并完成老师的问题。
620	1626823200000	525	t	7 月 21 日 Anna, Shiqi 英语课反馈\n\n主要内容：\n1、听写单词、订正\n2、学习形状和颜色这个话题的新内容，包括一些形状相关的词汇和 and 相关的语法\n3、带读绘本并讨论内容\n\n课堂表现：\n小朋友们的听写没有准备得很好，拼写和意思都准确写出来的不多，诗淇5个，茗捷2个。另外有些词记得中文意思，但是没拼对。这个情况还是蛮正常的，小朋友们需要在比较长的一段时间内重复去记新单词，才能完全记好，尤其是拼写。我会多给她们布置复习任务，帮她们重复。\n\n学习新的内容时，同学们都很积极地读和回答问题，记单词也很认真，这节课有些关于形状的词，是需要她们掌握意思不用掌握拼写的。
679	1627259400000	526	t	7 月 26日 茗捷& 诗淇 科学课反馈\n\n主要内容：\n- 复习上周的笔记内容\n- 环境与人\n\n课堂表现：\n  通过周末作业的完成情况来看，上周的两位同学笔记完成得比较完整。不过，同学们对这词汇的读音还不够熟悉（如 shelter，mammal），还需课后复习读音。\n\n今天我们学习了“环境与人”这个话题。我们先通过讨论“动物的庇护所”来了解环境里有什么，分为哪些部分。再通过讨论“人对环境的改变”来学习相关词汇。两位同学在课上大部分时候表现不错，就是在读句子词汇的时候还不够积极主动。\n\n作业：\n - 复习今天的词汇（snake, cave, bear, hole, mouse, nest, environment, water a plant, recycle, garbage）
687	1627255200000	525	t	7 月 26日 诗淇&Anna 英语课反馈\n主要内容：\n1、听写单词、订正\n2、复习上周学的词汇和校内3-4年级的单词\n\n课堂表现：\n听写一共是15个单词，两位同学完全写对的都是5个单词的拼写和意思，另外还有些意思没记住或者拼写有小错误的。今天说好了要继续复习，明天再听写一次，要对10个以上。\n复习单词的时候，学校的词汇认识的有一半左右，其他的还要重复读和背。\n今天时间不够，所以没有在课上带读绘本，明天一起读。
683	1626230400000	511	t	7月14日 Anna, Shiqi 英语课反馈 \n\n主要内容：\n1、20个跟family话题相关的句子，观察名词的类型（可数、不可数、单数、复数）\n2、复习前几次的30个词汇\n\n课堂表现：今天同学们词汇复习的积极性很高，因为是连连看游戏，然后再让同学们各自确认还没掌握的单词和读音。\n在学到“名词”这个概念时，同学们积极地问了很多问题。不过区别各种名词是一个难点，之后会反复巩固。
684	1626312600000	514	t	7 月 15 日 Anna, Shiqi英语课反馈\n\n主要内容：\n1、6个句子+新词\n2、短文阅读\n\n课堂表现：\n今天学的新词都是出现在句子里的，两位同学都愿意去猜新的词的意思。记笔记和检查单词意思的时候，同学们都很积极。\n\n短文阅读的部分，主要是我讲解并带着她们读，然后再完成练习题。她们的配合度都不错。
685	1626406800000	512	t	7 月 16 日 Anna, Shiqi 英语课反馈\n\n主要内容：\n1、复习前五节课的词汇发音和意思\n2、完成阅读和写作练习\n\n课堂表现：\n玩记单词游戏的时候，同学们积极性很高，学习效率也很快。\n在阅读和写作的部分，因为有其他生词，同学们会有不理解的地方，主要是我讲解和引导为主，但配合读句子和记笔记的积极性都很高。
681	1626057600000	511	t	7 月 12 日 Anna, Shiqi 英语课反馈\n今天我们先复习了上节课的自我介绍和词汇，两位同学对自我介绍的部分记得比较好，也记住了一部分单词，还没记住的，我们以后会在学习中反复出现，加深印象。\n然后我们读了一段短文，也学了其中的一些词汇，比如 favorite，magic，pillow，author 这样的。两位同学阅读和回答问题都很配合。shiqi 稍微有点害羞，但也会慢慢尝试。Anna 活跃一些，比较大胆尝试。
677	1626402600000	503	t	7 月 16日 茗捷& 诗淇 科学课反馈\n\n主要内容：\n - 讲评前一天的科学作业\n - “科学技能”的剩余内容\n课堂表现：\n一开始，两位同学可能因为没吃早饭，看起来比较累。不过，之后能够迅速调整，进入上课的状态。\n\n课上我们通过讨论从起床到去学校的步骤，来熟悉“顺序”和“推理”两个概念。两位同学能够积极响应。\n\n教学过程中也发现，同学们对词汇的发音还比较生疏，课后需要复习（可以使用有道词典或者其他电子词典里的发音功能）
678	1626654600000	526	t	7 月 19 日 茗捷& 诗淇 科学课反馈\n\n主要内容：\n - 动物需要什么？\n - 六大类动物\n课堂表现：\n通过图例，我们一起总结了动物的需要，以及几种常见动物的英文名称。\n在动物分类的游戏里，两位同学表现得很积极，能够迅速地用不同方式对动物进行分类。\n课的最后阶段，两位同学就稍显疲惫了（记得在课间吃点东西）。
1262	1629365400000	921	t	8月19日 作业巩固课\n在这节课上预习了明天阅读课的词汇，Steven今天下午记单词比较积极，会和不会都回答得很干脆，这样效率比较高。\n\n有些词不会读的，老师教了之后要认真去根据拼写体会一下，多读几遍。不然重复碰到的词重复乱读，还是有点尴尬@shygo_lone 10124 
686	1626650400000	525	t	7 月 19 日 Anna, Shiqi 英语课反馈\n\n主要内容：\n1、复习上周的单词\n2、讲评周末的完型填空作业\n2、讨论周末读本的内容\n\n表现：今天两位同学虽然迟到了十分钟，但是上课状态还不错，回答问题很积极，值得表扬。今天布置了抄写生词三遍的作业，结果课后几分钟就迅速抄完了，很积极。
1263	1629352800000	919	t	8月19日 Steven写作课反馈\n主要内容：\n完成单元写作任务。\n\n表现：\n现在Steven仿写是没大问题了，如果老师给个例句的话，后面他就依样画葫芦写出来。\n在让他自己想中心句的时候，他就会没什么头绪。这个时候通过引导他写“主谓宾”这种句子结构来想“谁做了什么”或者“谁怎么样”这个问题来突破，会有一些效果。\n\n之后Steven自己写作的时候，可以多想想这样的句式来找到思路。\n\n今天的写作任务比较复杂，四张图，分别要写概括句和细节，引导Steven提取要写的细节花了比较多时间。不过最终的完成度还不错。
1352	1629707400000	799	t	8月23日 写作课反馈\n昨天模考的两篇作文都写得不错，注意我们反复纠正的语法小错误，有些是可以避免的。\n\n除了讲昨天的作文外，还带桃子读了另外一些独立写作的题目，讨论写作的思路。虽然考试的时候遇到的题目可能是没见过的，但读题、分析立场这些思路是差不多的，现在桃子还是比较有经验了，稳得住。
682	1626136200000	513	t	7月14日 Anna, Shiqi 英语课反馈 \n\n主要内容：\n1、20个跟family话题相关的句子，观察名词的类型（可数、不可数、单数、复数）\n2、复习前几次的30个词汇\n\n课堂表现：今天同学们词汇复习的积极性很高，因为是连连看游戏，然后再让同学们各自确认还没掌握的单词和读音。\n在学到“名词”这个概念时，同学们积极地问了很多问题。不过区别各种名词是一个难点，之后会反复巩固。
688	1627279200000	520	t	7月26日，英语课反馈\n主要内容：今天复习了一些旧的单词。\n\n表现：今天慧卿学习状态不太好。前半节课复习单词的时候还可以，会配合说，还有去记。到后半节课就不愿意学了，最后拉着她抄了一些之前的单词。
689	1627279200000	372	t	鸿润 | 7月26日 数学课反馈\n \n内容： 1.作业讲解 2. 抛物线图像问题 \n表现：鸿润这次作业说不会，课上一问基本方法思路都知道，但是不想计算，上次和这次的作业都是知识点不会难，但是题目比较在综合，计算多步骤，专门给鸿润练这块的，题目我们课上都简单一起读过题了，一定要做作业哦；今天的知识点不难，分清图像问题什么时候用配方什么时候用求根~\n \n作业：见文档和图
690	1627289100000	466	t	Michael 7月26日助教课反馈\n \n内容：课堂内容复习，作业讲解订正 \n表现： Michael对于课上的内容能够复述（在笔记本的帮助下），语法部分错误率还是比较高，主要是对subject的判断会失误，基本都找最近的或者是句子的开头，但是很多要根据句意来确定哦；describe的部分写得不够，，并且写偏题了，coherence和unity几乎没有做到，不过运用到的词汇都不错；
691	1627022700000	467	t	Michael 7月23日助教课反馈\n \n内容：课堂内容复习，作业讲解订正 \n表现：今天记错时间了哈，后面两周记得周五的助教课是14:45的，安排好时间写作业~对unity/coherence理解得都还不错，不过区别要注意一下，在作文中，Michael没有用上transitional words，以及举例说明的例子和论点会有不符合的情况；conclusion sentence没写对，跟文章无关的句子，一定要记住总结至少要再次重申观点哦
692	1627263900000	185	t	反馈【泽霖】2021年07月26日 周一  中学语法课 Lesson 09\n\n课堂表现：\n泽霖今天课上状态挺好，学的东西有点多了，会容易记混。这很正常，多复习就好！\n\n今天重点：\n1. 句子分析\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。\n3. 发我一份英国文学的阅读文本
694	1627176600000	491	t	7月25日 Kevin 阅读课 反馈\n\n今天我们一起阅读了一篇关于美国种族隔离的故事，是由马丁路德金的姐姐为主视角，讲述他弟弟马丁路德金的童年生活，以及他们的家庭对他们的影响。在阅读之前，我们先讲了文中会出现的生词，主要让 Kevin 知道单词的构成都是有规律的，前缀词根和后缀，方便他在之后的阅读或者完形填空中出现生词时能通过这些规律进行猜测或者判断。今天要记得去复习一下我们的这些单词和规律。
695	1627286400000	262	t	Nova 丨 0726 读写课反馈\n\n今天的内容是介词部分，目前我们学习的介词主要是方位介词，也就是用来描述方位的，从简单的 on,in,at,under 到我们刚学的 between, in front of 等等，描述方位的介词比较多，我们可能会多花一节课的时间来进行复习。今天 Nova 说是中午没有午休的缘故，导致下午会比较困倦，看起来想要睡觉的样子，勉强完成了我们今天的内容。
696	1627281900000	138	t	Nova | 0726 词汇听力课反馈\n内容：\n- 总结复习频率副词 \n- 话题词汇“gender，parent and young” \n\n表现：\nNova 上周的作业完成得很不错， 已经可以分清楚基础的频率副词了。\n\n今天上课的节奏比较快，用“你问我答”的方式把今天的关键词都过了一遍，最后还留了一点时间进行回顾。Nova今天做的笔记也比较清楚工整，值得表扬。
697	1626849900000	138	t	Nova | 0721 词汇听力课反馈\n\n内容：剑桥 A1 Mover Listening Part 3的听力练习，以及通过题目中的图例练习词汇。\n\n表现：\n\n上周听力填空的部分全对值得表扬。\n\n不过，今天课上的笔记做得不是很清楚，下次要注意。其他方面表现得不错。\n\n这次的作业会有点难度，建议先把图例里所发生的事情理解清楚了再开始听力。（周六助教课上，小佳老师会帮助你。）\n\n作业：\n1. Mover Listening Part 3的听力配对与听力填空练习，共4面；\n2. 0721学习集：https://quizlet.com/_a0ftnx?x=1jqt&i=1zo45c
698	1626854400000	262	t	Nova 丨0721 读写课\n\n今天的内容是名词的复数变化，一共有 5 种不同的变化：\n1. 直接加 s\n2. 在 x,o,s,sh,ch 结尾的单词后面加 es\n3. 以 y 结尾的单词 把 y 换成 ies\n4. 以 f,fe 结尾的单词，把 f,fe 改成 ves\n5. 不规则变化，今天主要看到的是 man → men  goose → geese\n\n今天 Nova 的表现也还是非常不错的，但是在写题目的过程中，要注意只有上述 5 个字母结尾的单词是 加 es 的，其他基本上都是 加 s 的比较多。\n\n作业：一张名词复数练习
699	1627286400000	481	t	 0726 Lucas Pre-IG 科学课反馈\n主要内容：\n -  讲评DNA的作业\n - 遗传（Heredity）\n\n课堂表现：\nDNA部分的作业完成得一般，要根据评语再去复习一下DNA那节课的内容（每种RNA的作用，DNA和RNA的区别，DNA突变的成因等）。\n\n今天的内容是我们开课以来最难最抽象的, Lucas先完成quizlet ，等我检查quizlet的完成情况以后，再开始写作业。\n\n作业：\n\n- Assignment. Heredity (第4题和第11题不用写)\n- 需要整理进quizlet的词汇：heredity, characteristic, trait, genes, alleles, chromosome, homozygous, heterozygous, genotype, phenotype, dominant allele, recessive allele, complete dominance, incomplete dominance, codominance
702	1627267800000	463	t	0726 科学思维课反馈\n主要内容：\n- 讲评作业\n- 模型思考\n\n课堂反馈：\nLaura还要再去复习一下 quantitative和 qualitative 这两个词哈，作业里写反了。\n今天“模型和系统思考”这个话题，对Laura比较有挑战性。我们会多花点时间讲解。好好完成今晚的作业，我们明天会继续讲解这个话题。\n
1264	1629354600000	929	t	冠宇 | 8月19日 物理课反馈\n \n内容： 速度和加速度 \n表现：课前先测试了之前的相关单词，都还能记得，不过单位的相关单词还是反应比较慢，新知识都能跟上，思维有点发散会突然问很多问题，对于生活中速度加速度和力的一些内容都能自己解释，公式也记得很快但是写题不喜欢写公式直接写答案，这个习惯需要改\n \n作业情况：都是直接套公式哈，没静心读题所以会觉得难，盯着写准确率就很高
1353	1629525600000	805	t	8月21日 阅读听力练习讲评反馈\n今天主要分析了这一周做的阅读和听力的错题。\n阅读常错的是细节题、总结题、词汇题、句子简化题。今天主要分析了细节和句子简化题，细节题要从段落第一句开始读，找关键词，有时候答案就在第一句，别直接跳过了，实在找不到了，选与段落中心最符合的。句子简化题要提炼原句和选项的句子主干和条件，选择符合的。\n听力题常错的是细节题、推断题，听的时候听懂比记笔记重要，把自己当成那个语境中的学生，边听边想象听到的东西具体是什么样的，越具体越不容易忘，在关键的地方，比如老师说话出现了我们写作常用的逻辑连接词but, however, besides that, in addition, first, another 等等，或者老师提问或者学生提问这样的地方，都要重点把内容记一下，容易出题。
701	1627263000000	462	t	0726 科学课反馈\n主要内容：\n- 上节课作业讲评 \n- 生态系统里的能量转换\n\n课堂反馈：\n\n这节课里的概念理解，对于Laura还是相对容易的。 不过，当我们讨论食物网变化的时候（比如一个物种突然不见了，食物网里的其他物种会有什么变化），Laura就显得比较吃力了。 明天，我们会继续讨论哈。
1265	1628218800000	663	t	8月6日 Mandy 词汇课 反馈\n\n现在 Mandy 应该是没那么反感词汇了，自己做笔记，告诉老师还没抄完，要等一下。我们现在一周一个 unit，会多次复习。这节课我们学习 unit 6,然后通过做选择题复习了一次词汇的意思，作业我会在下周三给 Mandy 让她再复习一次，今天就先把上周我给的之前的复习作业完成就好了。今天的单词 quizlet https://quizlet.com/_a1ge4l?x=1qqt&i=1zo45c
1266	1628838000000	787	t	8月13日 Mandy 词汇课反馈\n\n今天我们先复习了上周的词汇，Mandy 对 refine 这个词的意思比较不清楚，可能是因为不知道什么是精炼。今天我们学习了 book 4 的 lesson 7，这一章节里的单词很多都有多个意思，有些意识比较抽象，比如 embrace 除了 hug 还有 take sth seriously 的意思；seize 和 grasp 一样除了有抓住还有理解（抓住要领）的意思。下课前 Mandy 主动要求把剩下的练习做完，非常棒！那作业就是我们剩下的 21 - 32 题。
1354	1629713700000	955	t	08.23 逸然 课后反馈：\n这节课的真题中，不会做的数论题有一个很明显的思路错误。在对数论题进行乘积的拆解时，不要急着把乘积的结果给算出来，先放着就行，到最后不能再拆解时，看看题目要求需不需要整合再进行判断。记住乘法是一种优先级很高的表达方式，要适应这种写法。
704	1627345800000	529	t	7 月 27日 诗淇&Anna 英语课反馈\n主要内容：\n1、听写单词、订正\n2、学习helping out这个新话题，包括表示位置的介词、表示心情的形容词。\n3、带读讲解绘本\n\n课堂表现：\n两位同学今天单词听写都表现很好，都完全写对了11个拼写和意思。另外在学新的内容时，都很配合互动，笔记也记得很清楚准确。最后读绘本的部分，今天诗淇比茗捷要表现得更积极，茗捷今天不太跟着老师读。\n
705	1626146100000	389	f	7 月 13 日 Joy 托福写作课 L5 反馈\n\n我今天继续为 Joy 讲解了她的两篇作文，一篇综合写作，一篇独立写作。\n\nJoy 的综合写作这次基本没有问题，考试的时候，就按这个格式去写就好。唯一需要提醒的是，考试的时候，速度慢一点，再慢一点，避免出现拼写和语法错误——比如 uncomformtable, Insteading, recyle, spae 和 occassionally 。\n\n独立写作部分，Joy 这次的 task response 没有做到最好。题目问的是 3 选 1 ，答的时候就应该直接说，在这 3 个里面，我选哪一个。\n\n作业：\n\n全篇写，限时 20 分钟和 30 分钟\n\n1）综合写作：TPO 14\n\n2）独立写作：For students of a university that has a long break between university semesters, the university requires all students to do one of the following for one month during the break:\n\n1) Students must take a course on the subject that has no direct connection to their majors of study.\n\n2) Students must volunteer to work in the city where the university is located or their hometowns to improve some aspects of life of the city or their own town.\n\nWhich one do you think is more beneficial for students and their university? Why?\n\n截止时间，今晚 21：00
706	1626065100000	436	f	7 月 12 日 Joy 托福写作课 L4 反馈\n\n我今天还是为 Joy 讲解了她的两篇作文，一篇综合写作，一篇独立写作。\n\nJoy 的综合写作在阅读部分偶尔有「因果逻辑关系缺失」的问题。考试时要注意，如果阅读部分有明确地表达「因为...所以...」，那么你在写的时候，也要明确地表达这个因果逻辑关系。\n\n另外，这次的综合写作作业还暴露出 Joy 对一些比较学术和专业的词的理解不够准确，这次她没有完全理解的词是「背书」，也就是 endorse 。\n\n独立写作部分，Joy 这次还是遇到了话题不熟悉（职场类话题），导致举不出例子的问题。我教给她 4 个方法，解决这个无话可说的问题。\n\n此外，我们还就这次的作业题，讲解了一类独立写作题目——绝对词类题目。Joy 之前没注意到这种类型题目（实考中的出现率大致为 10%）。\n\n作业：\n\n全篇写，限时 20 分钟和 30 分钟\n\n1）综合写作：TPO 50\n\n2）独立写作：Most adults believe that modern children (5-10 years old) behave worse than those in the past. What actions that parents take do you think will have the most positive effect on children to help them behave better, e.g., respecting and treating others kindly?\n\n1) Limit the types of the TV programs and movies they watch.\n2 )Spend more time talking with children.\n3) Supervise and monitor children while they are playing with their friends.\n\nUse specific reasons and examples to support your answer.\n\n截止时间，周二早 10：00
721	1625292000000	70	t	7 月 3 日 琦岚数学课反馈\n上节课的 divisibility test 琦岚的作业做得很好，这节课的 LCM 和 HCF 也是在课内学过的。但是，琦岚还不知道如何用系统的方法解出来 HCF 和 LCM，这种方法的学习是必要的，因为口算不是万能的，在面对较大的数字时就失效了。\n\n作业：
707	1625886900000	387	f	7 月 10 日 Joy 托福写作课 L3 反馈\n\n我今天为 Joy 讲解了她的两篇作文，一篇综合写作，一篇独立写作。\n\nJoy 的综合写作质量很高，主要高在她对听力内容的还原程度，这个程度与综合写作得分高度相关。\n\n但是，Joy 的综合写作的结构比较混乱，有些中间段先讲阅读内容，有些中间段则先讲听力内容。\n\n我通过真题和范文解析，为 Joy 讲解了托福综合写作高分文章的格式。接着，我带她做了一个随堂练习，确保她真的理解了这个格式。\n\n讲完综合写作，我为 Joy 讲解了独立写作。Joy 独立写作的一大问题是开头段过于啰嗦，在实战中，这个问题很可能会导致她没有足够时间写中间段的例子。托福独立写作的得分点是在中间段（尤其是例子）而不是开头段。\n\n作业：\n\n全篇写，限时 20 分钟和 30 分钟\n\n1）综合写作：TPO 12\n\n2）独立写作：A government spends money on all adults after 25-year-old on a training course for the most up-to-date skills at workplace. Do you think it is effective? Why or why not?\n\n截止时间，下周一早 10：00
708	1625719500000	435	f	7 月 8 日 Joy 托福写作课 L2 反馈\n\n今天是一节很特殊的课。\n\n整节课，我和 Joy 用了一个小时分析了一道托福独立写作的题目。\n\n这道题包含很抽象的措辞，比如 explore new things 和 take risks ，这些概念对 Joy 这个年龄的学生来说，会比较陌生。\n\n我用很多具体的例子（比如换城市居住、转行 +换工作、重仓投资股票）让 Joy 意识到了她之前对这些抽象概念的理解，是有欠缺的。\n\n此外，这道题还是 agree or disagree with a statement 类的题目。Joy 之前只能黑白二分地理解什么是 agree 和 disagree 。这个层级的理解，使得她只能在观点上一边倒地写一篇文章，因此她遇到了「不管支持还是反对，通常都只能想到 1~2 个站得住脚的理由」的尴尬情况。\n\n通过我课上的讲解，Joy 意识到，当她 disagree with a statement 时，她有很多种论证的角度。\n\n比如，当她不同意「A 优于 B」这个 statement 时，她有如下的反驳角度：\n\n1）B 优于 A\n2）B 和 A 一样好\n3）A 是否优于 B ，得分情况讨论\n\n意识到自己的破题范围很广后，Joy 在写抽象类的托福独立写作题时（绝大多数题目都很抽象），她就有更多的理由和素材可以写。\n\n作业：\n\n全篇写，限时 20 分钟和 30 分钟\n\n1）综合写作：TPO 5\n\n2）独立写作：Do you agree or disagree with the following statement? It is better for people to take risks and explore new things when they are young than when they are old.
30	1625282100000	386	t	7 月 3 日 Joy 托福写作课反馈\n\n今天我们讲了：\n\n1）托福独立写作的审题/破题技巧\n\n2）托福独立写作的例子创作技巧\n\nJoy 上课的状态很好，提出了许多高价值的问题。\n\n在课堂交流时，我发现 Joy 在写独立写作时比较缺乏框架思维，也就是用一个 mental model/framework 审一大类题目的的思维方式。\n\n以 3 选 1 的题目为例，我今天教了 Joy 如何用以下的 framework 去评估多个选项。\n\nefficiency\ncost\nefficacy/effectiveness\nfeasibility\n*consequence(s)\n*irreversibility/irrevocability\n\n作业：\n1.  完成我接下来发送的审题练习
709	1627009200000	184	t	Content: 今天我们讲了 Unity 和 Coherece，这两个都是对应着写作中的逻辑 感。同学们课下要分清楚⼆者的区别，并且多加练习哦。 \n\nHomework: 在⽯墨⽂档⾥的 Lesson Six \n\nComment: 今天的课堂氛围很很好，特别是最后的 brainstorm阶段，⼤家的讨 论热情度很⾼。希望继续保持这种热情哦~
1267	1629428400000	602	t	【刘行】2021年08月20日 周五  中学语法课 Lesson 05\n\n课堂表现：\n今天刘行状态非常的好！有在复习了。下面的内容会增加难度了哦！\n\n今日重点：\n1.分词\n2. 介词短语\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
724	1626760800000	128	t	7月20日 Tico 数学课反馈\n课堂重点：二次方程的系统求解法和常见题型\n\n求根公式 Tico 上课做例题做得很好啊，全都算对了。我们接下来的目标是把公式背下来，看到题就能自己想到公式。应用题这块难度还比较大，接下来要多做一些读题训练和思路拆解。\n\n作业：已布置，暂未交
1355	1629704700000	861	t	08.23 SImon 课后反馈：\n今天复习了坐标系的内容，涉及到中点；两点之间距离；斜率问题。\n从课上的提问上能看出Simon的遗忘率挺高的，因为对公式的记忆不深，导致回忆的时候有点无从下手，所以还是得自己多看看老师课上的证明方式，才能让自己对公式的记忆更加深刻。
725	1626933600000	128	t	7月22日 Tico 数学课反馈\n课堂重点：解简单不等式/画图解二元一次不等式\n\n上节课的作业 Tico 做得很好！会算的题目是全对这节课的解不等式看上去是比较陌生的知识点，尤其是涉及到画图，我们现在对直线方程画出来的图有什么含义还不完全理解，明天继续讲解。
723	1627003800000	80	t	7月23日 Tico 数学课反馈\n课堂重点：学习如何用画图来对代数方程求解；学习画不等式\n\nTico 昨天解不等式的练习也做得很好，虽然心里不自信，但18题能做对14题。在画图方面，能在我的指导下画对，继续在作业中巩固吧。
722	1627263000000	80	t	7月26日 Tico 数学课反馈\n课堂重点：复合函数和反函数\n\n上周的作业 Tico 画直线都画对了，但是没有完成最后一个标区域的步骤。今天讲的复合函数的取值，好像也是在学校没学过的，上课时基本学会步骤了，课后一定要及时做作业哈。反函数明天课上再讲一些例题。
718	1627106400000	70	t	7月24日 琦岚数学课反馈\n课堂重点：讲评上个单元的作业；讲解分数的转换\n\n上节课的作业琦岚做的不错，会的基本都做对了，有不会的地方有在作业中写清楚。HCF 和 LCM 的运算是为分数运算打基础的，所以学好了的话再学分数会很轻松。分数的简化方面琦岚已经掌握，但是分数的对比和形式变化还需要多熟悉。\n\n作业：上面那份 pdf
719	1626490800000	543	t	7月17日琦岚数学课反馈\n课堂重点：讲评了 LCM 的作业；讲解了根式运算的基本原理\n\n上节课作业中数字的 LCM 琦岚都算对了，但是没有用到上课学的方法。我再次展示了系统性求解 LCM 的方法，可以看出，算得会快很多。根式运算是超前于课内知识的，不过我感觉琦岚的接受度还不错。另外，我非常建议琦岚可以在做数学题时把过程写详细，展示自己思考的步骤。
720	1625896800000	70	t	7月10日 琦岚数学课反馈\n课堂的重点：LCM & directed numbers\n\n上节课的作业琦岚做的很好，全对！这节课我们讲的 LCM，在上课时的例题中，琦岚也掌握了。反倒是 Directed Numbers 那块的各种运算结合时，可能会出计算问题，接下来就在作业中巩固吧。
1395	1628582400000	1022	t	【Lora】2021年08月10日 周二  糯米经济学 IB 宏观知识点精讲课 02\n\n课堂表现：\nLora 在一些概念的细节部分还是需要注意哦，在复习的时候需要关注一下边角的细节，避免被扣分。\n今天重点：\n1. AD&AS
711	1626076800000	536	t	Kelland  7月12日助教课反馈\n \n内容：课堂内容复习，作业讲解订正，单词积累与检查\n表现：Kelland完成得不错，能记得课上的讲解，如果能尝试用自己的话说明就更好拉；题目都做得很好哈，也能主动在课上马上思考订正；重写topic sentences题目没有固定的答案，给琦岚不同方向都能马上反应出句子；词汇和造句都挺好的，注意一下force和strength的区别，句子的连接及形容词的用法哈~很棒。
712	1626249600000	536	t	Kelland  7月14日助教课反馈\n \n内容：课堂内容复习，作业讲解订正\n表现：Kelland作业完成都还不错哈，作文写得很棒~对于supporting sentence能够复述，但是判断有点不确定自我怀疑了一下哈，讲解后都能理解；语法题理解错误了，写到past tense；重新写subject基本能判断对，但是多主语的会理解错重点，部分题目没有结合语境，比较细需要反复斟酌一下哦，单词掌握都很好.
713	1626427800000	444	t	Kelland  7月16日助教课反馈\n \n内容：课堂内容复习，作业讲解订正\n表现：今天的作业对kelland来说比较容易哈，写的也都比较快，作文写得都很好，单词也基本都记住了，造句也能造的还不错，只有appropriate看错成approximately了哈；造句也都很好，小瑕疵只有句子间的逻辑，可以通过换表达或者加衔接词让逻辑更强些
714	1626687000000	444	t	Kelland  7月19日助教课反馈\n \n内容：作业讲解订正，单词抽查\n表现： kelland作业都完成得不错哦，选取新的话题口头讨论后直接又写了一篇哈，很棒~关于purpose statement注意explain和inform的区别哈，作文点与点之间有时候会没有衔接，有些内容些许重复可以通过换阐述方式换词更改，会更简洁明了些。
715	1626859800000	444	t	Kelland  7月21日助教课反馈\n \n内容：课堂内容复习，作业讲解订正\n表现：今天课堂上的内容kelland都掌握得不错，句子写得都很好，细节很充足，pronoun reference不太知道是什么，简单讲解了一下，放在文章当中比较好理解，kelland能反应大概方向，具体的指代指人还是地点要多斟酌一下，以及”them”/”they”指代的是什么要注意，it基本没问题。
716	1627032600000	444	t	Kelland  7月23日助教课反馈\n \n内容：课堂内容复习，作业讲解订正\n表现：今天课堂上的内容kelland都掌握得不错，coherence和Unity都能区分得很清楚~作文的内容写得很好哦，列举了很多详细的类型，唯一的问题就是supporting sentence不够明显，在某些地方可以稍微概括一下，这样结构比较清楚；多注意同样的表达在一个句子里不需要重复出现哈，很棒。
717	1627291800000	444	t	Kelland  7月26日助教课反馈\n \n内容：课堂内容复习，作业讲解订正\n表现：今天课堂上的内容kelland都能听懂，但是s-v aggrement还是比较靠感觉了哈，没有找准subject，也跟Noun的知识点混起来来了，跟kelland说了下次抽查，以防还是靠感觉；作文describe的部分比较少，比较多自己的ideas，对于地点的描述也比较少，有点没思路，立体化来想地点会比较好哈\n \n作业：作文订正
710	1627268400000	184	t	Content: 今天我们开始进⼊段落的类别了，今天的内容是 Descriptive Paragraph。这个内容需要⼤家平时多积累词汇和素材，在写作时尽 量的逼迫⾃⼰⽤ show 的⽅式写出细节。 \n\nHomework: 在⽯墨⽂档⾥的 Lesson Seven \n\nComment: 今天的课堂氛围挺好的，两位同学在词汇上有些许的遗忘，记得多复 习哦。
730	1625794200000	80	t	Tico 7月9日数学课反馈\n讲解/练习的重点：解线性方程和线性方程组，数列的n次项计算\n\n解方程时易错点的总结：\n1、移项时正号变负号\n2、开括号时每一项都要乘以系数\n3、没有验算的习惯
727	1626226200000	80	t	7 月 14 日 Tico 数学课反馈\n课堂重点：代数运算和求直线方程的斜率\n\nTico 早上状态挺好的。我们通过作业发现她在含分数的代数运算和含有幂运算的部分比较容易出错，接下来这两项要分别加强。斜率通过这节课的计算，看上去是可以稳定发挥了，不过一旦题目换成文字题，没有图片了，Tico 就会比较迷茫，我们之后多做文字题。\n\n作业：已提交
733	1625551200000	128	t	7月6日Tico数学课反馈\n今天的重点内容: prime number，HCF，LCM\n\nTico 需要注意的事项:\n1. 整数的英文是 integer\n2. 倍数是指一个数的整数倍\n3. 求解 LCM 的步骤，以及验证结果的方式（倍数一定大于等于题目给的数字）
736	1626847200000	127	t	7月21日 Tico 物理课反馈\n课堂重点：复习运动学相关的公式\n\nTico 从开始有意识做笔记后，已经取得了很多的进步。我觉得现在要对她记笔记提出更高要求了。一方面是各个科目要分开记，如果记在一个本子上，可以做一些分页。另一方面是记笔记要记的尽可能详细，便于自己之后查找。\n\n本来记忆知识就是一个很长的过程，没有人能学一遍就记住，所以我们要善用笔记，来促进记忆。
735	1627020000000	127	t	7月23日 Tico 物理课反馈\n课堂重点：整理力学板块的公式；讲评速度和加速度计算的公式\n\n目前 Tico 对文字题还是比较抗拒，所以上次的作业我们是今天上课做的，事实上，大部分题目 Tico 都能算对，希望经过这次的公式整理和例题学习，能认识到物理题目的“套路”。
1268	1629427800000	750	t	0820 科学思维课反馈\n\n主要内容：\n- 上节课作业讲评\n- 综合实验设计分析\n\n课堂反馈：\n从昨天的作业来看，Laura已经能够判断一个问题是否是 testable 和 practical的。不过，在改编问题的时候还是遇到了一些问题，比如，改编后的问题是否包括可以测量的因变量和自变量，是否足够具体？\n\n今天我们利用综合的实验案例来复习了实验设计中的重要注意事项以及规则。“公平测试”的三要素与实验问题的要求，这两个知识点Laura记得比较牢，但是对于假设、实验过程、数据图表的注意事项方面，Laura就比较生疏了。课后再通过worksheet里的题目复习。\n\n作业：\n- Worksheet. Experiment Design Review (两面), 如果有相应的课件找不到了，找老师要。\n\n\nScience Vocabulary Day 20：force, contact force, non-contact force, net force, balanced forces, unbalanced forces, first law of motion, inertia, second law of motion, third law of motion, action force, reaction force
1269	1629423000000	749	t	0820 科学课反馈\n主要内容：\n- 讲评上节课作业\n- Force\n\n课堂反馈：\n上节课的作业，Laura完成得不错哈。唯一个需要注意的地方是：在计算速度的时候，要记得把公式和其中变量的单位也完整写出了（Speed= Distance/ Time）\n\n最后一节课上，我们复习了力与牛顿三定律的相关内容。基础概念方面，Laura掌握得比较好，除了Balanced Forces 、Unbalanced forces与物体运动的关系还需要再巩固。牛顿三大运动定律比较抽象，Laura还没能完全理解，记得通过课后视频案例再复习一下。\n\n作业：\n - Assignment. Force（一面）
1356	1627891200000	989	t	8月2日 菲菲英文课反馈\n课堂重点：Reading Workshop：What makes a good story\n\n今天我们主要讲解了一个故事的重要组成部分。距离之前上课时间比较长了，菲菲还没有恢复学习的状态，这是可以理解的。最近在家的时间多了，就多多读书，慢慢找回状态吧。\n\n作业：\n1. 预习讲义中的《the school play》（在周三上课前读完就好）\n2. 背单词 3-8 外加复习旧单词。\n3. 自主阅读：《posted》the promise
732	1625621400000	80	t	7月7日 Tico 数学课反馈\n这节课的重点知识：数列，主要是等差数列的 n 项式求解\n\nTico 能很轻松的找到数列的规律，也能在有表达式的情况下求出第 n 项。不过在我们需要假设 n 项表达式的时候，她就有些理解上的困难，另外，我们在计算过程中发现二元一次方程组的求解也需要专门复习和练习。\n\n另外，在看数学图像的时候，关于横轴和纵轴分别代表的物理量是什么，需要 Tico 主动去关注并辨别。
729	1626053400000	80	t	7月12日Tico数学课反馈\n课堂重点: 基本代数运算和一次函数图像的特征\n\nTico在乘法分配律和合并同类项方面都做的不错，慢慢做基本都能做对。一次函数的图像就比较多不熟悉的了，明天上课再来分析例题。
728	1626156000000	128	t	7 月 13 日 Tico 数学课反馈\n课程的重点：代数基本运算+直线方程的例题\n\n昨天的作业 Tico 做得很好，只要熟悉方法后她的计算是很严谨的。今天我们又讲了一些代数运算的基本规则，原理不难，但练习很重要。\n\n直线方程这块，能看出来 Tico 对勾股定理是记得很牢的，但是关于直线方程的原理、相关公式还很缺乏了解，明天继续讲。
1270	1629439200000	675	t	【Lora】2021年08月20日 周五  糯米经济学 IB 宏观知识点精讲课 06\n\n课堂表现：\nLora要习惯去分析每个概念背后的逻辑关系哦，这对写题很有好处！\n\n今天重点：\n1. Philiphs Curve\n\n课后任务：\n1. 完成作业
1271	1629167400000	676	t	【Lora】2021年08月17日 周二  糯米经济学 IB 宏观知识点精讲课 05\n\n课堂表现：\nLora在课上的时候要注意跟着老师的思路走哦，不能单纯的听不思考！\n\n今天重点：\n1. Inflation\n\n课后任务：\n1. 完成作业
1357	1628496000000	990	t	8月9日 菲菲英文课反馈\n课堂重点：《the Good Deed》的情节分析\n\n今天这节课菲菲的状态很不错，目前看文章时对剧情的把握都很好，在理解人物方面需要再多努力。上周五的写作作业犯了很多小错误，做写作的作业不要太匆忙了，即使写少一些，也要写完校对。\n\n作业：\n1. Lesson 2 https://shimo.im/docs/KcP6Kkkq6wXDGytR\n2. 背单词 3-11\n3. 花一些时间整理一下 posted 的剧情，在自己的书或笔记本上每一章写个剧情梗概（简单的 summary，不限定写作的语言）
1358	1628928000000	1010	t	Michael 8月14日文学课反馈\n \n内容：poetry赏析\n表现：今天继续深度剖析这首诗歌，讲解了一些devices，土豆还能记得诗的内容，也开始能自己分析，但是扯得有点远了，都是跟诗不太相关的内容，不过有慢慢描绘出画面了；部分问题还没办法思考得比较深入，我们慢慢来理解哈\n \n作业：修改上节课作业
1360	1629423000000	557	t	冠宇｜8月20日 英语课反馈\n\n内容：\n1、介绍ESL课和一年之后会参加的IG考试\n2、Unit 1 听力和对话练习\n表现：这个单元是跟生活相关的内容，冠宇在听材料的时候，理解程度不是太高，可能跟说话的人语速和口音有一些关系。不过语速快和口音都是无法避免的问题，冠宇需要通过提高自己的英语能力来克服这些。另外，冠宇在回答的时候，现在还主要用中文说，之后会多要求他用英文。\n\n作业：记忆今天布置的词汇和短语
731	1625724000000	128	t	7月8日 Tico 数学课反馈\n这节课的重点内容：解一元二次方程组\n\n线性方程，包括简单的分式方程 Tico 都解得不错。但是方程组的解法就想不起来了。今天讲了两种解法：elimination and substitution。Tico 上课已经会了，在作业中要好好练习哦。
726	1626658200000	80	t	7 月 19 日 Tico 数学课反馈\n课堂重点：讲解求线性方程的作业/学习如何解二次方程\n\nTico 现在拖着交作业的习惯很不好哈，因为做作业的时候已经忘记方法了。在自己做笔记的时候，也要学着更主动一些去记录，如果只记老师写的，那下次自己想从笔记里搜索信息也搜索不到了。如果早点做作业，遇到不会的也可以去问老师。\n\n作业：暂未提交
479	1625734800000	108	t	7月8日菲菲英文课反馈\n这节课的重点：如何为 Research 做准备\n\nResearch 这项技能我们其实用在生活的方方面面，不过在学习中的 Research 要求我们用更严谨的方式去筛选信息，同时也要明确目的，缩小搜索范围。\n\n作业：\n背单词。\n今晚课也讲完后，我会布置一个 project 来练习学过的 research skills。
47	1625821200000	98	t	7月9日 Queenie 英文课反馈\n课堂重点：逐字逐句阅读 Pan's Labyrinth 的第十二章和第十三章\n\n这节课 Queenie 的状态挺好的，遇到一个很“吸睛”的情节，让她有些激动，作者的想象力令我们叹为观止。平时我在讲解具体的字词的时候，她很少回应，但是今天从这个细节中，我能发现，她听得挺认真的。\n\n作业：\nAnswer in no less than 100 words：What did Ofelia do to obtain the golden key? What do you think of her?
742	1626328800000	128	t	7月15日 Tico 数学课反馈\n课堂重点：二次多项式的因式分解\n\n这节课 Tico 学习状态特别好，方法掌握得很快算数的速度快了好多。我们今天学的这个内容，对于接下来学函数和解方程都特别重要。需要思考的步骤特别多，所以我让 Tico 把笔记记好了。
741	1626399000000	80	t	7 月 16 日 Tico 数学课反馈\n课堂重点：复杂二次多项式的分解；直线的方程求解\n\n二次项的系数大于 1 时，我们要去看能不能提取一个常数因子出来，然后再进行因式分解。简单二次多项式的分解，Tico 做得很好。直线方程这块，目前还是比较难结合代数和几何进行求解，要继续加油。
740	1626415200000	127	t	7 月 16 日 Tico 物理课反馈\n课堂重点：复习整个力学模块的重点知识；重心、动量的基本讲解\n\nTico 目前对加速度的理解还不够深入，没有办法描述加速度对速度的影响，这是需要重点去补的。我建议很好的方法可以是去记住一些物理问题的模型，例如汽车踩油门和汽车刹车的模型。在受力分析方面，Tico 能够被动的解决问题，还不能主动地去画受力分析图，这也是之后要努力的方向。
737	1626674400000	127	t	7 月 19 日 Tico 物理课反馈\n课堂重点：讲解作业+学习动量、冲量\n\n上次的作业 Tico 是 6 道题做对了 3 道，还不错，其中有一道题是自己第二次可以改对的。动量相关的碰撞问题，我们还需要多花一些时间慢慢学，这节课先把基本公式记住就好。\n\n作业：暂未提交
734	1627279200000	127	t	7月26日 Tico 物理课反馈\n课堂重点：功和能量\n\n这个章节 Tico 第一次学的很好，但是在做题时还是会遇到英文读题的阻碍，还有数学代数时的问题。通过多做题，把握做题的套路，我们一定能进一步提升这个模块的正确率。
743	1626854400000	129	t	7月21日 Edward 英文课反馈\n课堂重点：逐字逐句读《Greek Myths》的第六章\n\n今天的故事情节中涉及到对于融化现象的理解，Edward 已经很了解了，所以我们理解故事也很轻松。一开始有记一些笔记，后面很快忘了要记，看来我之后要多提醒他记。\n\n作业：\n1. 抄写单词\ntower 塔\nproof 证据\nprison 监狱\nladder 梯子\ncurrents 气流；水流\ngenius 天才\n\n2. 完成 Reading Journal 的写作
1272	1629435600000	681	t	8月20日 Lucy writing class 反馈\n\n今天的主要内容是复习 and,so,but 等连词，同时学习新的介词 along, towards, across, through 的用法，今天 Lucy 的表现非常不错，做题正确率也非常高，看得出之前学过的内容都有很好地掌握清楚。目前虽然进度比较慢，但是复习的次数会多，也能让 Lucy 形成一些’肌肉记忆‘，帮助她在语法上更进一步。
1359	1629686400000	822	t	08.23 睿涵 课后反馈：\n上节课的作业完成的不是很理想，所以今天课上着重强调了解题习惯。睿涵可以先模仿我上课时的解题习惯去解题，先学会对题目中的条件进行翻译（整合成数学公式），再通过已知的条件量去解题。\n平板的DDL为周四，自己要提前准备好。
119	1625022900000	79	t	Joy 第二天的作业相比第一天进步很大，能熟练地使用个人经历相关的语料。不过面对一些陌生的话题，例如大学的 academic program，她会非常不自信。\n\n所以今天我们花了比较多时间来介绍一些陌生的话题以及应对方法。明天开始会开始讲综合口语。\n\n作业：\n1. Day 2 重讲 Q4 & Q6\n2. Day 3
118	1624936500000	79	t	小铁:\n这两天我们主要在做独立口语的训练和讲解，总结一下：\n1. 教育类话题除了学生的角度，也可以考虑老师和家长的角度，去想想他们各自在意什么，你的选项如何达到他们的目的。\n\n2. 关于如何说具体，并不意味着一定要举例子，更好用的方法是对关键词进行具象化，例如 steps→preparing the samples\n\n小铁:\n作业：\n1. 重讲 Day 1 Q3 & Q5\n2. 完成 Day 2（尽量使用个人偏好类的回答方式）\n
117	1624850100000	79	t	小铁:\n这两天我们主要在做独立口语的训练和讲解，总结一下：\n1. 教育类话题除了学生的角度，也可以考虑老师和家长的角度，去想想他们各自在意什么，你的选项如何达到他们的目的。\n\n2. 关于如何说具体，并不意味着一定要举例子，更好用的方法是对关键词进行具象化，例如 steps→preparing the samples\n\n小铁:\n作业：\n1. 重讲 Day 1 Q3 & Q5\n2. 完成 Day 2（尽量使用个人偏好类的回答方式）\n
751	1625541300000	79	t	7月6日Joy托福口语课反馈\n关于Joy目前的托福口语分数预估: 稳定发挥的话是25分左右\n\n昨天的作业订正后做得不错，还有些不清晰的地方要继续修正。\n\n今天练习的 Task 3，Joy 同学在阅读和听力方面都没有问题，如何把握口语时间是训练重点。\n\n作业: Day 6
750	1625627700000	79	t	7月7日 Joy 托福口语课反馈\n这节课的练习重点: 综合口语 Task 4。这道题只要求复述听力，Joy 的听力很好，都能记下来。但是如何筛选重要信息，在一分钟内概述完还需要多练习。\n\n一些复述结构时的要点：\n1. 按照时间线来描述变化（之前如何，现在又如何）\n2. 按照题目中提示的抽象单词来展开（例如 concern、strategy）\n\n作业：\nDay 7 （录音直接发给我就好）
752	1625454900000	79	t	7月5日 Joy 托福口语课反馈\n在综合口语 Task 2 中我们发现了 Joy 在口语表达中一个不好的习惯：过多的使用定冠词。定冠词是用于特指同类对象中的某一个，如果过多地使用，就会造成指代不清。\n\n这个习惯也许一时半会没有办法改过来，但我们在考前的口语训练中，可以改变的是：\n1. 做笔记的时候不要记代词。\n2. 口语中第一句和关键句尽量不要用代词，直接说明要讲的对象的全名。\n\n作业：\nDay 5 加训\n步骤一：先用考试模式限时做，用手机录音，保存版本一\n步骤二：听一遍版本一，如果觉得讲得不清晰，可以重新录制版本二（可参考样本回答）\n两个版本都上传
753	1625195700000	79	t	7 月 2 日 Joy 托福口语课反馈\n今天我们进入综合口语 Task 2 的训练，这道题的要点是准确、清晰地整合阅读和听力中的信息，尤其是把听力中的两个原因总结出来，而不是复述。\n\n作业：\n1.  完成 Day 5（可以用充足的时间看题，录音时间 1 分钟）
754	1625109300000	79	t	7 月 1 日 Joy 托福口语课反馈\n昨天的作业 Joy 做的也很好，最大的进步是在流利度和自信心方面。有一道题离题了，因为她看题目速度会偏快，接下来一定要辨认出关键词，确定 2 个选项分别是什么再开始回答。\n\n作业：\n1. 重讲 Day 3 第二道题\n2. 完成 Day 4
748	1626059700000	79	t	7月12日 Joy 托福口语课反馈\n课堂重点：独立口语+Task 4\n\n这节课中我们主要发现的问题是，Joy 在独立口语中能想到观点，可是在讲的时候又发现没有足够的细节，除非这道题中的观点是她自己有经历过的。\n\n这个问题有 2 个解决方法：\n1. 看到题优先往我们上课学过的观点想：健康、金钱、快乐、学习成绩好、省时间、高效率、可执行……\n2. 直接在一开始用偏模糊的关键词：benefits、negative consequences，后面边说边讲。\n\n作业：模拟考 TPO 43
746	1625277600000	112	t	7 月 3 日 Edward 英文课反馈\n这节课我们读的是《Greek Myths》的第三章，Edward 上课挺积极的，会主动去预测剧情，并且由故事情节联系到生活。但是讲单词的时候，他的学习意愿就没那么强了。所以上课的时候我会多带他复习之前的单词，加强生词的曝光次数。\n\n今天的单词抄写任务：\ndespair 绝望\ncrop 庄稼\nweep 哭泣\nretrieve 取回\npersuade 劝说\npine 苦苦思念\nunderworld 地下世界\ngoddess 女神
745	1625882400000	112	t	7月10日 Edward英文课反馈\n课堂的主要内容：《Greek Myths》的第四章\n\n这节课 Edward 同学表现不错，听得挺认真的，很着急地想要知道故事情节。他问我作业能不能减少一点，因为自己已经有很多作业了。我没有答应，我说要跟姥姥商量一下。\n\n生词：\nweave 编织\ncloth 布料\narachnids 蛛形纲生物\nlean 倚靠\nfeature 特点\n\n作业：\n1. 抄写单词\n2. 完成下面这个 reading journal的写作。
764	1627354200000	463	t	0727 科学思维课反馈\n主要内容：\n- 讲评作业\n- 模型思考以及案例分析\n\n课堂反馈：\n我们通过分析“水循环”来学习如何去分析一个系统（parts of a system, function of system, how a system related to other system）。Laura还需要通过更多案例，来磨练系统思考和分析的能力。
744	1626249600000	129	t	7月14日 Edward 英文课反馈\n课堂重点：逐字逐句读《Greek Myths》的第五章\n\n今天的文章比前面几期要更复杂，因为描述的情节中有很多动词，可能也是因为包含一个英雄打怪兽的情节，Edward 听得时候挺兴奋的，对关键词的理解很到位，能自己还原出一些场景。今天时间有点紧，下节课我们再多复习一下这节课的单词。\n\n作业：\n1. 抄写单词\nvault 跳过\nyarn 毛线\nconvince 说服\nrevenge 报仇\nlabyrinth 迷宫\npunish 惩罚\nsneer 冷笑\n\n2. 完成 Reading Journal 的写作
747	1627092000000	112	t	7月24日 Edward 英文课反馈\n课堂内容：复习 1-6 章的内容，读了一本偏难的同题材的书\n\n我叫 Edward 复述发生过的情节时，他能很好的说出图片里的内容。在 Riddle Time 的提问中，回答的正确率也比非虚构内容要高。不过，有些单词见过了很多次，在自己说的时候还是说不出来，例如 wisdom。之后我上课要定期抽查一下单词，如果记住了准确释义的，就给一些小的奖励。\n\n之前两节课的作业还没交哈，所以抄写单词的任务这周一块完成吧：
844	1627707600000	570	t	【Molly】2021年07月31日 周六  糯米经济学 IB 微观知识点精讲课 04\n\n课堂表现：\nMolly 在计算上要注意一下，避免粗心哈！这次的作业是四个 paper 1的题目，一定要提前交哦，不然我没时间改作业。\n\n今天重点：\n1. Market EQ\n
845	1627556400000	545	t	【子杰】2021年07月29日 周四  AWS 第二季 Lesson 04\n\n课堂表现：\n子杰真的非常喜欢逻辑推论的过程。而且逻辑能力也很强。这对议论文学习很有帮助，继续保持哦！\n\n
756	1625973300000	79	t	7月11日 Joy 托福口语课反馈\n这节课的重点：独立口语中的绝对性题目\n\nJoy 上次的作业没有用模考模式，用的是练习模式，也就是说每道题之前间隔的时间比考试要长。今天开始记得用模考模式，我可以给出准确的分数分析。\n\n考前目标 1：课堂的限时训练中以流利度和内容完整度为主要目标。\n考前目标 2：课后以独立口语审题训练为主，可以反复讲一道题，追求内容上的严谨和具体，综合口语则是完善模板的使用。\n\n我们把这两个目标分清，那么在限时训练中就不会“过度追求完美”，导致说话卡壳了。\n\n作业：\n1. 在 KMF 中完成 TPO 42 的【整套模考】，做完记得告诉我一声\n2. 继续用独立口语题库做审题训练，这次可以自己计时反复讲，讲到自己满意为止，也可以查词汇，然后做好笔记
749	1625714100000	79	t	7月8日 Joy 托福口语车轮战 反馈\n今天的练习重点：独立口语\n\nJoy 之前在不限时训练中其实答题答的很不错，不过在今天的限时训练中，她很不适应这种时间的压力。主要需要解决的是以下问题：\n\n1、审题：题目本身都有些模糊的，那我们在解释之前就要定义清楚。不要一看到题就急着直接回答。\n2、想太复杂的观点和例子：Joy 习惯凭直觉去想语料，可是却发现用英文很难表达（例如缺乏相关领域词汇：law firm），所以这种直觉是需要调整的。
755	1625800500000	79	t	7月9日 Joy 托福口语车轮战反馈\n练习项目：独立+Task 3\n\n今天的独立 Joy 在临场回答中比昨天流利多了，但是面对难度大的题目会很慌。其实托福口语并不是只考内容，更重要的还是去测口语能力。所以考试前的这段时间我们最重要的目标是把心理状态准备好，无论遇到什么怪题、难题，我们都不慌，先把自己的口语实力展示出来。\n\n当然，审题训练是必要的，这两天常常翻看独立口语题库，时不时就去想一下观点。\n\n作业：\n使用老师提供的 KMF 账号，完成 TPO 40、TPO 41 整套口语，可分 2 天完成
739	1626069600000	127	t	7月12日 Tico 物理课反馈\n课堂重点: 牛顿第二定律和力矩\n\n Tico 在公式变换上进步很大，以前分子分母会搞混，现在基本上一次能算对。做题时要把代数公式和单位都写上就完美啦。
738	1626242400000	127	t	7 月 14 日 Tico 物理课反馈\n课堂重点：力矩的计算和合力矩为 0 的计算\n\n力矩（Moment）是 Tico 在第一次学物理时比较薄弱的知识点。经过上节课的介绍加这节课的做题，目前她能把握力矩的基本公式，也能判断方向了。但是合力矩的计算方面，之后还要再巩固。\n\n作业：暂未提交
1361	1628731800000	711	t	08.12 天歌 课后反馈：\n今天讲解了代数分解。其中我们着重写了1~20的平方数，这些数是需要天歌自己课后熟读的，尽量能做到看到某个数就能判断出是不是平方数。\n代数公式：a²-b²-(a+b)(a-b)。口诀是“同号的平方 - 异号的平方”。
759	1627371000000	595	t	诗雅 |7月27日 语法课反馈\n内容：讲评句子、修饰语的作业\n\n表现：诗雅的作业正确率不错，在只需要把有错误的句子找出来的情况下，能够对80%以上。在判断独立句和非独立句时，注意to引导的不定式，只是phrase，不是clause，更不是independent clause，另外but可以放在句子的开头。\n然后现在判断定语的位置、先行词和状语从句的情况，很熟练了，尤其是在今天的练习讲解之后，能够很快做成正确判断。\n\n更进一步的提升是需要知道怎么改，以及自己能够写出正确的修饰语和从句。
762	1627367400000	582	t	反馈【Lucas】2021年07月27日 周二 中学语法课 Lesson 06\n\n课堂表现：\nLucas 对于之前的知识忘的比较厉害，课下做作业前要做好复习。\n\n今天重点：\n1. 作业讲评\n2. infinitive & participle
763	1627341600000	527	t	7 月 27日 茗捷& 诗淇 科学课反馈\n\n主要内容：\n\n- 适应环境，食物链\n\n课堂表现：\n\n 今天课堂上穿插了多个案例讨论，节奏比较快。同时，阅读预习的效果不错，两位同学提前翻译了文本中的生词，继续坚持。诗淇大部分时间都能保持积极，茗捷到最后阶段有点打瞌睡。\n\n作业：\n - 2面环境相关的练习\n - 两份阅读，在下周一之前完成预习，翻译其中的生词。\n - 复习词汇（polar rabbit, polar bear, camouflage, adaptation, sharp, beak, spread, pollen, seed, food chain）
693	1626918300000	185	t	反馈【泽霖】2021年07月22日 周一  中学语法课 Lesson 08\n\n课堂表现：\n泽霖今天课上状态不错。这几天会用句子分析，来作为之前知识点的复习。\n\n今天重点：\n1. 句子分析\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。\n3. 发我一份英国文学的阅读文本
766	1627365600000	596	t	诗雅 | 7月27日 词汇课反馈\n \n内容： 上节课内容复习，compound/blending/conversion讲解，相近词检测\n表现： 昨天晚上讲解的关于relative的多个意思还是没记住，这个多结合语境注意一下；最后一节课我们快速地过了一下剩下的构词特征，比较简单，主要是让诗雅能够意识到有这些构词特点，尤其是conversion是需要结合语法或者语境在句子中分析的；相近词split&spilt，ascent&accent，hoarse&horse，gasp&grasp没有区分清楚哈，这个可以在日后的学习中多自己总结~
1464	1631086200000	1030	f	\N
761	1627365600000	520	t	7月27日 慧卿英语课反馈\n\n课堂重点：\n1、复习单词\n2、练习使用形容词，and，or\n\n之前记得四则运算相关的英语单词，慧卿差divide和product不记得，其他都能看到单词说出意思了。今天又从数学板书里抄了一些新的单词下来，明天继续复习和背。
760	1627353000000	524	t	7月27日 慧卿数学课反馈\n课堂重点：正负数运算的练习\n\n今天慧卿到的很晚了，所以也没有讲太多新知识，就是把上周讲过的内容复习了一下，她上课还是挺配合的。目前在正负数的运算中，慧卿已经明白原理了，但是算的速度还有待提升。
757	1627452000000	127	t	7月28日 Tico 物理课反馈\n课堂重点：复习功和能量的所有公式，讲解压强的概念\n\n功和能量方面，Tico 可以独立使用动能和重力势能的公式，但是能量守恒定律还无法应用，同时单位还会混淆。压强方面，也是在单位换算上要格外注意。1kPa = 1000 Pa，1m=100 cm，1平方米=10000平方厘米。
769	1625400000000	367	t	诗雅 | 7月4日 词汇复习检测课反馈\n \n内容： 上节课内容检测，单词检测，部分单词与词根词缀讲解\n表现：诗雅单词准确率都不错，只有permission、subside和Nonstop犹豫了一下，重点讲了一下sub-的前缀相关的词汇内容；否定前缀in/im和non需要提醒；造句都造得挺好的，注意disagree的用法搭配~发音上注意cautious里“tious”的发音，th偶尔会不准确，nonstop的词性注意一下；翻译例句的时候没注意到主语理解出错了，句子结构多留意
768	1625619600000	359	t	诗雅 | 7月7日 词汇课反馈\n \n内容： 上节课重点内容复习检测，语境猜词讲解，部分词根词缀重点讲解 \n表现：第一节课词根词缀诗雅记得还可以，周末讲解的部分单词尤其是重点词缀忘了哈，没有记到笔记本上，所以多花了点时间再记在笔记本上；今天的词根词缀不多，但是单词额外会多一些，要联想到课上所讲的内容会方便记忆些；也要慢慢能够从文章中通过语境理解词汇甚至猜词，课上以蝇王第五章为例讲解\n \n作业：每天背25个单词打卡周日检测，额外25个单词辨认后缀并且确定该词的根源及词性（不需要背）
767	1625187600000	359	t	诗雅 | 7月2日 词汇课\n \n内容： 英语单词构词法介绍，部分常见词根词缀讲解及检测\n表现：诗雅的课堂表现都很棒，笔记做的都很整齐，之前背单词会跟读，这个习惯还是很好的；今天主要介绍了词根词缀，诗雅对于部分词源的故事很感兴趣，尤其心理学方面的内容，所以一下子能联想到之前学过的单词；部分词根词缀的结合不是很直接，带着诗雅在句子里联系起来，这一部分的词汇诗雅需要多花功夫；以及com-/con-的前缀容易记错，课上有反复出现还是比较容易记混，课后还要多加复习\n \n
771	1627383600000	649	t	【Sherry】2021年07月27日 周二  糯米经济学 IB 微观知识点精讲课 02\n\n课堂表现：\n今天开始进入花了点时间讲 paper 1的答题技巧和基本思路。刚开始接触 iBDP 这个体系会有点不适应是很正常的，不用太着急，慢慢练习就好。\n\n今天重点：\n1. paper 1 答题\n2. Central Themes\n
1273	1629439200000	682	t	8月20日 Lucy writing class 反馈\n\n今天的主要内容是复习 and,so,but 等连词，同时学习新的介词 along, towards, across, through 的用法，今天 Lucy 的表现非常不错，做题正确率也非常高，看得出之前学过的内容都有很好地掌握清楚。目前虽然进度比较慢，但是复习的次数会多，也能让 Lucy 形成一些’肌肉记忆‘，帮助她在语法上更进一步。
773	1627365600000	128	t	7月27日 Tico 数学课反馈\n课堂重点：复习函数的运算；向量的简单介绍\n\n上节课讲的函数的基本表达方式、代数、复合函数和反函数，Tico 还比较看不惯，所以这节课又复习了，只要我解释了符号的含义后，她基本都能做对。向量这块，Tico 的基础还不错，就是勾股定理按计算器还常常失误，需要多多练习。
774	1627448400000	434	t	【Eva】2021年07月28日 周三  Pre-AWS 第一季 Lesson 07\n\n课堂表现：\n今天作业还是在语法细节上差了一点。课堂中，Eva 对旧的知识掌握程度超出我的预期，还是挺牢固的，继续加油哦！\n\n今日重点：\n1. Descriptive Paragraph\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了
765	1627349400000	462	t	0727 科学课反馈\n主要内容：\n- 上节课作业讲评 \n- 地球系统\n\n课堂反馈：\n上节课的作业其实Laura完成得很好，但是有一部分答案没有保存进文档里，丢了两分。以后，作业要记得再检查一下答案是否完整再提交。\n\n与上节课相同，本节课的基础概念Laura掌握得很快，但当我们把地球当作一个系统来讨论的时候，Laura就显得比较吃力了。课后要再去复习一下，各个圈（spheres）是如何进行能量和物质交换的。
775	1627435800000	462	t	0728 科学课反馈\n主要内容：\n- 上节课作业讲评 \n- 大气圈\n\n课堂反馈：\n\n这节课我们学习了大气层的不同部分以及每个部分的特别之处。在讨论大气的温度气压与海拔关系的时候，我们用了一张比较复杂的示意图来帮Laura总结规律，这对Laura比较有挑战性。 课后记得再复习一下这张示意图，看看还能不能得出相同的结论。
776	1627440600000	463	t	0728 科学思维课反馈\n主要内容：\n- 讲评作业\n- 简介“claim and evidence”\n\n课堂反馈：\n从昨天的作业来看，Laura利用系统思维来分析的能力有进步（作业用的案例是人体）。同时，希望Laura在完成开放性问题的时候，多举些例子多联想。\n\n今天课上，我们通过“轮滑公园”的案例解释了什么是claim，什么是evidence。Laura在课上表现得没有以前积极了，要调整一下状态。
777	1627454700000	138	t	Nova | 0728 词汇听力课反馈\n内容：\n - A1 Mover Listening Part 4\n表现：\n\n上周的听力作业中的生词比较难比较多，我们花了半节课时间来整理这些生词（已经更新到 0728的学习集中）。\n\n本节课的随堂听力，Nova完成得比较好。除了发生多次转折（no\\ not \\ different ）的听力对话 ，听力选择题基本能听一遍就完成。\n\n整体来看，今天Nova的状态没有前几次课好，时不时趴桌上想睡觉。\n\n\n
778	1627452000000	520	t	7月28日 慧卿英语课反馈\n\n课堂重点：\n1、复习单词\n2、练习使用现在进行时态\n\n今天慧卿下午比较困，上课有点儿耍赖，不太愿意跟着读，或者自己把单词读出来。对于进行时的模仿使用还不错，一开始对于人称和be动词的一致有点混乱，到后面也能用对了。\n\n下课之前给了她抄单词的任务，这部分还是比较配合的，虽然比较慢，也还是有在一点一点进步。
779	1625193000000	351	t	诗雅 | 7月2日 语法课1\n课堂反馈：今天学习了名词，包括定义、分类、功能。\n诗雅上课是一直很认真的，记笔记还有提问都很积极。今天的难点是集合名词的分类和使用，需要诗雅结合定义和例子进行复习。\n
780	1625625000000	351	t	诗雅 | 7 月 7 日 语法课反馈\n\n内容：名词作主语的功能应用。上节课我们大致介绍了名词的形式、分类、功能，这次针对具体的应用中名词主语单复数判断的18种情况，结合上节课诗雅的作业来进行分析。\n表现：现在诗雅在学习新知识时，会主动地转化成自己的语言来理解和整理笔记，这很好，另外对于一些新的概念，诗雅都会用具体的例子对应去记，这也是很好的。\n
1362	1629772200000	608	t	08.24 刘行 课后反馈：\n今天讲解了体积的积分题。解题方式得先知道这么体积是怎么堆叠的，然后先得出单一圆盘的体积，再进行堆叠维度的积分。这部分题比较复杂的是计算过程，所以算的时候可以稍微算慢点，尽量先不要跳步。
781	1627441200000	521	t	\n7月28日 慧卿数学课反馈\n课堂重点：代数相关的重点概念\n\n这节课慧卿的状态很好，课堂练习都做对了。这节课没有计算的任务，所以更需要专心听才能听懂。知道了这些数学术语后，后面我们再去沟通代数相关的问题就轻松了。
783	1627452000000	178	f	\N
1363	1629768600000	948	t	Tony  8月24日数学课反馈\n \n内容： domain&range巩固基础&难题，modeling function\n表现：作业做得都挺好的哈，只有domain&range的题目没有反应过来，主要是还是没分清楚两者的区别以及Inverse function分不清范围，基础的domain题目也要注意function的特点以及题目的要求，课后再巩固一下哈，这个IG&AL都会涉及到；modeling function还不错，只是要注意实际情况中会存在某个值没有意义，这一步总是会忘，课后做一些复杂的题目尝试看看~\n \n作业：domain&range&modeling function相关题目
785	1627461600000	211	t	Laura  |  7月28日 周三 数学一对一\n课堂反馈：\n本节课开始讲解Quadratic equation（二次方程）。\n因为跟节课的内容涉及到了根号和指数的运算，而从课上的提问，发现Laura还是有些遗忘的，需要自己课后去翻下笔记巩固下根号的运算。\n这节课讲解了二次方程的一种题型：x²=k及变式（）²=k。两种列式都会形成3种结果，着重注意当k＞0时，x=±√k，千万别忘记了“±”！
786	1627523100000	185	t	反馈【泽霖】2021年07月29日 周四  中学语法课 Lesson 10\n\n课堂表现：\n泽霖现在分析句子的能力已经大幅度提高，准确度也越来越高！继续加油！下周开始进更难的知识点。\n\n今天重点：\n1. 句子分析\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
787	1627462800000	98	t	7月28日 Queenie 英文课反馈\n课堂内容：wordlywise 3000 3-5 \n\n前半节课 Queenie 表现不错，很多单词都大概知道意思，我们再去详细讲就比较顺利。到了最后十五分钟，她有点撑不住了，说是特别困，当然我们还是坚持把课上完了。最后一个单词 tackle 记得要自己再复习一下意思。
788	1626067800000	429	t	Bryant 7月12日助教课反馈\n \n内容：课堂内容复习，作业讲解订正，单词积累与检查\n表现：Bryant作业做得很快，对于课堂内容也能理解到位进行复述，判断题都能准确说出原因，修改topic sentences的题目Bryant思考得还不够也不够细心，单词有抄错的情况，并且修改成完全不同的意思，或者表达错误，有跟Bryant说写完自己再检查一下，这些错误其实他能够发现的；单词大部分都记得也能拼写，force和strength的区别搞混了，以及screw本身的意思忘记了哈，其他的都很棒，新的不会的单词也有主动记在笔记本上
795	1627459200000	262	t	Nova | 0728 读写课反馈\n内容：\n 今天继续讲我们的介词部分内容，主要记下的有 on, under, in ,at, beside, between, behind, in front of, 还有另外两个是 on the right of, on the left of,这两个由于 Nova 自己说自己分不清左右导致不好记，我在她的右手上写了个右字。 第二节课倒是没有那么困，反而是比较 high，在选择介词的时候故意选错的，然后想象错误的介词会让意思有怎么样的转变，比如 a postman is between the door, she is between the window 等等。不过总体表现还是不错的，只要自己是知道正确答案的就没关系。\n\n作业是一面介词的内容，我放到她的英语袋子里面了。
789	1626246900000	430	t	Bryant 7月15日助教课反馈\n \n内容：课堂内容复习，作业讲解订正\n表现：Bryant作业第一题理解错了哈，以后有疑问一定要先问；对于supporting sentence的理解都很到位；语法题基本逻辑都有，注意多个subject的重点，结合语境理解；作文结构都挺好的哈，书面作业注意字写整齐点，个别表达用词不够到位；笔记本找不到了，今天的笔记都是写在纸上，笔记本还是要好好保管
790	1626415200000	431	t	Bryant 7月16日助教课反馈\n \n内容：课堂内容复习，作业讲解订正\n表现：今天Bryant对课堂的理解都还是蛮到位的哈，单词中bloom/assassinated/venue/principal不太记得，fossil/extra的意思解释不准确，作文的段落逻辑没有问题，conclusion sentences添加了多余的信息，并且弄混了the number of与 a number of的意思，文章中there be的句子都写成了there are，句子内的逻辑要多加推敲哈，这些句子都有要求订正；单词要再复习，不是很熟悉，下周会抽查
791	1626678900000	430	t	Bryant 7月19日助教课反馈\n \n内容：作业讲解订正，单词抽查\n表现： Bryant今天助教课前有特地复习今天的内容，不错哦，但是上周的单词临时看的，部分记得不错，indeed/hence/immense不记得了，test和text又搞混；作文的supporting sentence和conclusion sentence写得还可以，有列点，但是审题还不够，没有突出“steps”以及和final exam的关系，讲评过后写都还不错哈，有用上牧牧老师课上讲的逻辑连接词，单词再加把劲
792	1626851700000	430	t	Bryant 7月21日（周三）助教课反馈\n \n内容：课上内容复习，作业讲解订正，单词抽查\n表现： 周三的课堂内容主要是clarity，bryant掌握得还可以，基本有意识要怎么样把句子写清楚；descriptive words和pronoun reference两块中代词这一块掌握得比较好，前一部分主要是因为单词量的原因不能准确列出多个同义词；代词这一块内容都懂，但是写题比较想当然，靠猜靠感觉所以出错了，要联系上下文的逻辑进行推敲
793	1627020000000	431	t	Bryant 7月23日助教课反馈\n \n内容：课上内容复习，作业讲解订正，单词抽查\n表现： bryant今天的单词掌握得都还不错，但是对于课堂的内容没有好好理解，unity和coherence的区别没有分清楚，coherence的特征不记得了，以及transitional words不太熟悉，特别是sequence、time和compare之间的区别；文章coherence的判断能理解，写作文的时候就没写到位，点与点之间的衔接以及每一点的阐述还不够，最后conclusion sentence跟文章没有什么关系；每次都要多花时间写作文，今天明显花的时间不够哦
794	1627464600000	444	t	Kelland  7月28日助教课反馈\n \n内容：课堂内容复习，作业讲解订正\n表现：昨天的内容kelland都能掌握，s-vagreement有进步，不靠感觉了哈有在分析找准subject，作文写得很好，因为是课上讨论过的我们也再新选一题讨论，题目关于public transportation，但是kelland一直在说bus，这个小点注意一下哈；单词上注意一下词性这个东西，以前不是很有意识；上次作文订正的还不错，不过show not tell可以多考虑一下
797	1627470000000	649	t	【Sherry】2021年07月28日 周三  糯米经济学 IB 微观知识点精讲课 03\n\n课堂表现：\n今天开始正式进入微观部分的知识点学习了。Sherry 现在的状态不错，继续保持每天的复习状态。加油！\n\n今天重点：\n1. Demand\n2. Central Themes\n
798	1627527600000	650	t	【Sherry】2021年07月29日 周四  糯米经济学 IB 微观知识点精讲课 04\n\n课堂表现：\n今天Sherry 有些许知识点的遗忘哈，可以翻看一下之前的笔记在复习复习。\n\n今天重点：\n1. Demand\n2. supply\n3. Equilibrium\n课后任务：\n1.复习今天的笔记，并且拍照给我check一下\n2. 完成 Lesson Three HWK
799	1627522200000	462	t	0729 科学课反馈\n主要内容：\n- 上节课作业讲评 （分数：9 / 11） \n- 太阳系\n今天课上，我们主要讨论的太阳系八大行星的基本情况和特点。这部分内容没有非常复杂，所以希望Laura晚上作业能好好用心，争取拿一次全对。每个知识点过后，也留出了充足的时间让Laura完成相应笔记。
800	1627527000000	463	t	0729 科学思维课反馈\n主要内容：\n- 讲评作业\n- “claim and evidence”案例分析\n\n课堂反馈：\n课上我们讨论了两个案例（more people get injured from skateboarding than from any other sport/ more males get injured skateboarding than females）。讨论中，Laura能够很好地利用案例中图表，找到相关证据来支持相应的说法。\n\n\n\n\n
1274	1629427500000	883	t	冠宇 | 8月20日 化学课反馈\n \n内容： 混合物分离方法，原子结构认识 \n表现：冠宇上课的时候都比较认真，就是感觉经常会比较困，他自己分析是睡太多。上课的时候虽然不会主动记笔记，但是我叫他记都能记下来，我们需要慢慢培养记笔记的习惯。冠宇上课的时候能够回忆起之前在常州学过的一些化学内容，如果能够稍微改变一些学习的态度可能能够学的非常快。\n\n作业：课后的练习题，本来打算下午来带冠宇做，如果家里不会做就先空着把会做的做了就好。
680	1625889600000	485	t	7月10日，Anna、Shiqi 英语试课反馈\n上课内容：\n1、用 I am 句型自我介绍\n2、关于身体各部分的单词\n3、关于教室内物品的单词\n\n课堂表现：\n两个小朋友都很认真，会配合回答问题、读单词、记笔记、完成对话练习等等。\n\n刚开始的时候，Anna会更放得开一点，用英语自我介绍的环节，会直接讲出来，Shiqi会问我能不能直接抄笔记，不说。但在我要求和鼓励后，还是说了并且说得很好。\n\n今天的内容有一部分是她们会的，虽然刚开始稍显紧张，但后来逐渐就会抢答了，看到不会的词或者不会描述的物品，会愿意去猜，包括后面听写的时候，虽然不确定也会根据读音去试着写，这些都很好。\n\n看得出来，两位同学在记单词的时候，对长单词是比较拒绝和没有信心的，以后可以多练习根据读音去拼写。\n\n之后的学习内容中，除了词汇和语法之外，会加入阅读和写作，也会多加入让她们说的环节，通过养成说的习惯来增强说英语的信心。
672	1625886000000	488	t	7月10日 Anna/Shiqi 科学课试课反馈\n主要内容：\n1. 翻译课内的科学课主题\n2. 讨论与“What is Science”的英语关键词\n\n课堂表现：\n两个小朋友整体在互动上都表现得很积极。不过，对于把英语和科学结合起来学习还没有完全做好心理准备。下节课，可以提前为科学课专门准备好一本笔记，记录科学生词和新的科学概念。\n\n我们接下来会从基础的科学词汇和文本入手，学习核心的科学课模块（如植物、动物、太阳系、电等等），一步一步地让两位小朋友有养成科学课（英语）的学习习惯。\n科学生词：\nelectricity 电， rock 岩石, scientist 科学家， light 光， tool 工具，moon 月亮，living things 生物，nonliving things 非生物
803	1627182000000	637	t	@Tico Tico 0725 物理化学助教课\n内容：\n - 复习7月12日到7月15日的物理与化学内容\n\n课堂表现：\n每一周助教课总结的词汇，要去记哈。我们会在每一节助教课开始的时候，测试这些词汇的中文意思。\n\n化学方面，要去复习：区分什么是ionic compound，compound ion以及covalent compound；以及常见compound ions的名称\n\n比较不熟悉的词汇： \nequilibrium 均衡, net force 合力, proportional 成比例的, subtracting 减去, subsequent  随后的, exceed 超过, compound formation 化合物形成, compound ion 离子团, covalent compound , diatomic 双原子的, terminal 末端的；终点的, additional 额外的
1364	1629774000000	810	t	Michael 8月24日文学课反馈\n \n内容：Macbeth人物介绍\n表现：课上先复习了一下上节课的内容，土豆又说不上来，所以今天增加一些作业帮助Michael复习记忆；今天介绍了主要的character，Michael的单词量不错，内容基本能理解，部分长句翻译得断断续续，人物背后的联系不能马上反应出来，所以课后自己捋顺完成作业哈\n \n作业：drama&play的区别+main character之间的关系
805	1625281800000	256	t	今天我们讲的最后一个 Part 的一个通用内容，晚上回去还是要准备下三个part 的不同内容，明天就看 Bryant 怎么表现了
806	1625202000000	252	t	Coach totoro:\n7月2日 Bryant 口语演讲比赛反馈\n\n今天我们做最后的演讲比赛训练，我们总结了模板，让 Bryant 准备了基本上都能通用的一篇演讲稿，要注意的是给的形容词不同要放在不同的位置，不然会让整个故事发生变化。在外貌这一块，要注意题目中给的性别，不要把男性的样子套到女性的身上。\n
801	1624255200000	178	t	\N
809	1625099400000	169	t	今天的我们看了八十天环绕地球 漫画的第二部分，学习了月份相关的部分单词。阅读过程中，Panlam 基本上都能把单词独对，而且很喜欢读，但是还是有一些常见的单词会读错比如 July，arrive 之类的，目前我看 Panlam 记单词都喜欢用打字的方式，我认为可能用写的会比较好一些。今天上课的表现除了会有比较多的走动以外都是比较认真的。
1275	1629113400000	953	t	08.16 逸然 课后反馈：\n今天讲解了15年的真题。正确率15/25，正确率有所下降，因为前10题的错误有点多，而且比较不应该。\n这节课碰到的一种新题型就是围绕人数的几分之几，求解一个最值问题，对于这类题目可以根据分母去尝试写出满足题意的LCM，用实际数字去解题，通常能快速得到结果。
810	1627534800000	569	t	【Molly】2021年07月29日 周四  糯米经济学 IB 微观知识点精讲课 03\n\n课堂表现：\n今天正式进入微观的学习了，Molly 在 term的理解和解释上要多下功夫。多去尝试用自己的语言去解释学到的每个term！\n\n今天重点：\n1. Demand & Supply\n\n课后任务：\n1.复习今天的笔记。\n2. 完成 Lesson Three Homework，并于周五晚上10点前提交。
811	1627092000000	554	t	【Molly】2021年07月24日 周六  糯米经济学 IB 微观知识点精讲课 02\n\n课堂表现：\n今天学完Chapter 1了。都是一些关于经济学的基础概念，课下先复习在写作业哦。下次的作业要提前一些交，这次交得比较晚，我来不及在课前改。稍后改完，我发在群里。\n\n今天重点：\n1. central themes\n\n课后任务：\n1.复习今天的笔记。\n2. 完成 Lesson Two Homework，并于下周一晚上10点前提交。
812	1626742800000	551	t	【Molly】2021年07月20日 周二  糯米经济学 IB 微观知识点精讲课 01\n\n课堂表现：\n今天开始进入 Introduction部分的学习，先把基础的知识点扫一遍，并且开始加入paper 1的训练。记得下课后，先花一个小时整理笔记，再开始写作业哦。\n\n今天重点：\n1. Scarcity&Choice&Opportunity Cost\n\n课后任务：\n1.复习今天的笔记。\n2. 完成 Lesson One Homework
1365	1629784800000	794	t	8月24日 桃子托福口语课反馈\n课堂内容：模考讲评+口语车轮战\n\n今天的模考桃子做得很好，每道题的发挥都做得不错。我把考试前的注意事项再总结下：\n1. 独立口语可能会遇到比较陌生的题目，无论如何，要确认自己把题目中的关键词都找到后再开始准备。\n2. 综合口语 Task 2 不要在阅读部分做太多笔记，看懂就好。\n3. 保持自信，多多鼓励自己。
815	1626073200000	440	t	【刘行】2021年07月12日 周一  Pre-AWS 第一季 Lesson 03\n\n课堂表现：\n刘行的复习很到位哈！表扬！今天学的新东西也要好好复习，用到作业里！\n\n今日重点：\n1. Concluding Sentences 的四个工具包 🧰\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
816	1626418800000	440	t	【刘行】2021年07月16日 周五  Pre-AWS 第一季 Lesson 04\n\n课堂表现：\n今天的作业暴露出很多语法问题，要注意复习今天的语法点。\n\n今日重点：\n1. purpose statement\n2. Audience\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
433	1626692400000	545	t	【子杰】2021年07月19日 周一  AWS 第二季 Lesson 01\n\n课堂表现：\n今天我们开始入门议论文写作，内容开始涉及比较强的逻辑性，子杰在之后的课上要注意逼迫自己用逻辑思维去思考文章。\n\n今日重点：\n1. 4 kinds of persuasive examples\n\n课后任务：\n1.复习今天的笔记。
817	1626951600000	545	t	【子杰】2021年07月22日 周四  AWS 第二季 Lesson 02\n\n课堂表现：\n子杰的状态非常好，所以第一季的知识掌握的很牢固，这对我们现在的学习有很大帮助。继续加油哦！\n\n今日重点：\n1. conceptualization \n2. related concepts\n\n课后任务：\n1.复习今天的笔记。
818	1627297200000	545	t	【子杰】2021年07月26日 周一  AWS 第二季 Lesson 03\n\n课堂表现：\n子杰的状态不错，今天的内容比较多逻辑推论，以后在写作中要注意往这方面思考。\n\n今日重点：\n1. what is a good claim\n\n课后任务：\n1.复习今天的笔记。
772	1627435800000	653	t	反馈【Wendy】2021年07月28日 周三  中学语法课 Lesson 10\n\n课堂表现：\n接近一个月没学，Wendy 有一些遗忘哦！今天课下可以花点时间把之前的内容再过一遍。\n\n今天重点：\n1. 从句的结构\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
820	1627441200000	184	t	Content: 今天我们说了⽐较性段落 Comparision Paragraph，也积累了很多 单词。⼤家课下要注意复习。 \n\nHomework: 在⽯墨⽂档⾥的 Lesson Eight \n\n Comment: 今天的课堂氛围很好，特别是brainstorm的环节⼤家参与的很认真也 很积极。还是⽼问题，旧的知识有些遗忘哦，要注意复习。
821	1625723400000	433	t	【Eva】2021年07月08日 周四  Pre-AWS 第一季 Lesson 02\n\n课堂表现：\n今天Eva 对新知识点吸收的很快哦！可惜一定要好好复习，记住先复习在写作业！\n\n今日重点：\n1. Supporting Sentences 的五个工具🧰\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
822	1625550600000	421	t	【Eva】2021年07月06日 周二  Pre-AWS 第一季 Lesson 01\n\n课堂表现：\n今天Eva 非常棒，很认真的在记笔记，知识吸收的也很快。记得课下要去复习笔记和单词哦！\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
824	1625032800000	178	t	\N
825	1624428000000	178	t	\N
826	1624600800000	178	t	\N
827	1624860000000	178	t	\N
860	1627867800000	208	t	反馈：今天讲解了斜率公式的坐标应用及parallel lines 和perpendicular lines 分别对应的斜率关系，Simon需要通过课后习题增加下今天讲解的知识点，特别针对特殊斜率，如vertical line 的斜率是undefined，需着重注意下。
828	1627470000000	548	t	子杰 | 7月28日 助教课反馈\n \n内容： 1.作业探讨 2. 新文章讲解\n表现：昨天的作业写的很好哈，对于文章的分析都很到位，counterargument/concession有判断出来，对于tragedy/comedy的思考比较浅，简单探讨了一下；新的文章因为关于政治/法律，子杰在这方面理解起来有点困难，所以花的时间多了一些，文章后半段留给子杰课后阅读一下，这样下节课开始我们可以快速把重点过掉哈\n \n作业：分析文章的claim
829	1627264800000	633	t	子杰 | 7月26日 助教课反馈\n \n内容： 1.单词检测 2. 文章讲解 3. 作业讲解\n表现：子杰大部分单词都没有问题，注意区分一下contractor和employee之间的区别，上节课的design thinking和social skills子杰理解得比较快，这节课关于keep learning的一些观点政策子杰平时了解得比较少，部分观点会理解不够，讲解后都能明白~两张图片子杰比较不能和文章联系到一起，也带着子杰分析，作业就是将分析用英文再写出来，不会耗太多时间哈，课上都讨论过了。\n \n作业：两节课的writing task
830	1627383600000	547	t	子杰 | 7月27日 助教课反馈\n \n内容： 1.单词检测 2. 文章讲解 3. claim初判断\n表现：子杰大部分单词都没有问题，civil discourse有点忘了，上次作业写得都不错~claim判断的都不错，尽可能想想有没有反例就能确定是否arguable；文章的讲解过程中子杰理解很快，不过在推荐自己喜欢的电影的时候介绍得不够哦，太泛了哈；文章没有全部讲完所以留给子杰两个课后问题：1. 作为audience和director两个身份的时候，你会更喜欢tragedy还是comedy 2. 阅读剩下的两个段落找出作者的claim以及如何back up的\n \n作业：之前关于emotional response的作业重新写
831	1627540200000	583	t	反馈【Lucas】2021年07月29日 周四 中学语法课 Lesson 08\n\n课堂表现：\nLucas 今天要好好复习 并列连词的概念，并且作业里的那个题目，要开始 写下来 “为什么每个选项是对的或者是错的”。\n\n今天重点：\n1. 作业讲评\n2. Subordinate conj\n\n课后任务：\n1.复习今天的笔记\n2. 完成作业。Lesson 08
832	1626865200000	548	t	子杰 | 7月21日 AWS助教课反馈\n \n内容： 作业讲解 单词+学术概念复习\n表现：子杰对于昨天课上讲的单词理解没有问题，也能说出准确的语境，但是对于一些比较学术概念的词会忘记大概讲什么，这一部分可以多看一看扩充一些知识面哈；课上写了两题作业，子杰对于话题都能有自己的观点和理解，可以尝试从不同角度分析~\n \n作业：完成剩下的作业
833	1626778800000	547	t	子杰 | 7月20日 AWS助教课反馈\n \n内容： 文章讲解+课外拓展\n表现：子杰对文章的大意理解都没有问题，逻辑梳理上需要提醒，但其实有些之前都有学过，就是当复习一下，所以今天这堂课内容有点多，作业课后还是要花一些时间，明天开始我们都尽量在课上完成~对于像source可做n和v这类一词多义的，要在句子中能够反应出来，对单词的其他辨析都挺好的尤其是Nuance基本一讲都能懂；课外拓展子杰都很感兴趣也挺愿意听的，很棒\n \n作业：完成reflection
834	1627038000000	547	t	子杰 7月23日写作助教课反馈\n \n内容：作业讲解，文章讲解及写作分析\n表现：昨天子杰有花时间看预习视频，能够大概理解内容，但是对视频讨论的design thinking没有什么概念，我们课上也借着这篇文章讲解了一下，子杰理解都很快~文章的逻辑分析和句子仿写即使是新的话题也能马上写出来，好好休息~
835	1626145200000	498	t	Tony  7月14日数学课反馈\n \n内容：向量复习，四边形面积公式复习，讲解斜率和一次函数表达式\n表现：Tony作业写的都不错，有一道题没有方向，想得比较多反而卡住了，坐标里的图形题把图形画出来更直观；由于讲解了线段平行和斜率，把向量法也讲了一下，tony接受也很快；由于背景都是几何题，今天也通过做题回顾了四边形的面积求法，对平行四边形和菱形不熟悉哈，希望讲解原因后能比较清楚，加深印象~新知识都掌握得不错，课后在题目中检测一下综合运用能力\n \n作业：课本题目4道，一份综合练习
839	1627522200000	173	t	7月29日 Tico 化学课\n\n今天的重点是继续熟悉和酸相关的化学式，昨天 Tico 在做作业的时候告诉我，我们的小目标还是没达成，即自己可能还是没办法自己写出化学式，今天我们再次去练习了这一些内容，给 Tico 总结出了一些规律，帮助 Tico 能够自己写出化学式。\nP.S 记得我们酸相关的化学式最需要注意的一点，就是金属和 Hydrogen 的交换。
836	1626226200000	499	t	Tony  7月13日数学课反馈\n \n内容：坐标中两点的距离公式，中点公式，斜率复习\n表现：Tony上课状态都很好哈，笔算口算都很强，吸收也很快；对于第三章开头的内容有印象，但是询问具体公式有点忘记了甚至弄混了，所以把公式怎么来的都再讲解了一遍，加深一下印象，三个公式也在课上通过做题巩固了，下课的时候基本都能复述准确；拿了一些中等难度的题目，Tony都能做出来但是有些方法过于繁琐，所以特地讲解简单的方法，要慢慢能够自己分析总结不同的方法哈\n \n作业：完成课上的运算，课后题目4题
838	1627538400000	128	t	7月29日 Tico 数学课反馈\n课堂重点：讲评向量的作业/介绍坐标变换\n\n向量这块的作业 Tico 还不是很了解题目的要求，做题是只做了前一半，希望今天讲完能理解解题步骤。坐标变换在轴对称这个专题方面 Tico 已经掌握了，其他的明天接着讲。
840	1627435800000	80	t	7月28日 Tico 数学课反馈\n课堂重点：向量的几何运算\n\n向量的几何运算是 IG 数学知识点中的难点，但是原理其实不复杂，掌握向量的平行关系和向量【首尾相连】的加法法则，就可以灵活的用单位向量表示任意向量了。Tico 在这方面理解的还是不错的，如果能独立完成作业就没什么问题了。\n\n
1276	1628759700000	957	t	08.12 逸然 课后反馈：\n今天讲解了上节课的错题，题号20前的错题都是自己直接订正过来的，能知道自己的错误点，大部分都是审题不仔细导致的。解决方法：读题时可以把自认为重要的信息量用笔圈出来（纸张没有必要那么干净噢），可以避免重复读题而浪费时间。\n逸然对于难题的解题思路还是保留在完整的解题流程，特别是对具有周期性的题目，会把题目的解题过程做得很标准化，但忽略了因为周期性带来的重复性，是可以只研究其中一段，然后进行周期性重复。这点之后的题目再遇到要特别注意下。\n几何的题目可以试着学会灵活切割看待。
846	1627624800000	127	t	\n\n7月30日 Tico 物理课反馈&总结\n课堂重点：复习了力学和能量的概念；讲评了关于压强的作业\n\n压强的作业很可惜，公式变换出问题了，所以没有全做对。单位换算 Tico 有明显进步了。复习的时候我还发现的是 速度和加速度 这块的公式，Tico 记得很牢，这是值得庆贺的。反复学有效果了。\n\n物理的暑期复习内容小结：\n1. 主要复习了运动学、力学、能量这几个主题，Tico 在套公式和写过程方面都有了进步，作业质量明显提升。\n2. 物理相对数学，要记忆的知识和公式多很多，所以这个暑假我让 Tico 做了很多笔记，接下来一定要用上这些笔记哦。这样才会减少“学了就忘”的现象。
1277	1629198000000	965	t	 0817 科学课反馈\n主要内容：\n- Work, Energy and Power\n\n课堂反馈：\n上节课的作业Michael完成得还行，还有些地方需要改进：1）确认magnetic pole和magnetic field的区别； 2）property 是特性的意思，磁铁有什么特性呢？3）有些题目的笔迹还是很乱。\n\n这节课上我们学习了功，能量与功率的基本概念。相应的公式计算，Michael完成得不错，值得表扬。概念上，Michael还需要花点时间复习（会有一个课后视频辅助学习，探索一些更复杂的例子）。\n
861	1627781400000	491	t	Kevin 8月1日 英语阅读丨反馈\n\n今天我们开始看 the wonders boy, 奇迹男孩，Kevin 说自己在学校曾经看过，但是并没有完全读懂它的意思，于是我们就一起再次阅读了这本书。这节课我们讲了前面几个小故事是其貌不扬的男孩 August 自己从出生到准备第一次上学校的故事。 在阅读过程中， Kevin 碰到了些许不认识的单词，我们可以用推测的方法通过句子的意思来猜测单词的意思，之后我们会在上课时更多地去用这种 context clue 来学习不认识的单词。
903	1627614000000	668	t	1
1396	1629189900000	993	t	【Molly】2021年08月17日 周二  糯米经济学 IB 微观知识点精讲课 08\n\n课堂表现：\nMolly一定要先订正，再复习同时完成讲义，在写作业。并且提前提交哈！\n今天重点：\n1. price celling\n
1366	1629784800000	831	t	0824 科学课反馈\n主要内容：\n- Periodic Table\n\n课堂反馈：\nMichael上节课的作业完成得还不错，但是有两个地方要注意：1）在做"J.J. Thomas Model" 和 "current atomic model" 两个模型的对比题时，不能只简单地罗列模型的相关信息，需要根据相应的特征（如 What are particles in an atom？Where are they located？）重新组织模型相关的信息。 2）mass number的计算。\n\n今天我们学习了元素周期表的基本概念。Michael对"如何分类元素"上手比较快，能够根据提供的元素周期表将元素分为三大类（metals\\ nonmetals\\ metalloids)， 并记住每个大类的主要特征。在学习Group\\Period\\Average Atomic Mass这些相对抽象的概念的时候，Michael的效率有所下降，可以结合课件再进行复习。\n\n\n作业：\n - Assignment. Periodic Table\n - 完成本节课quizlet的制作\nQuizlet词汇列表：periodict table, average atomic mass, metal, nonmetal, metalloid, group, valence electron, period
841	1627608600000	80	t	\n7月30日 Tico 数学课反馈&总结\n课堂重点：讲评了向量的作业、练习了如何画坐标变换\n\n向量的作业 Tico 说没有完全懂该怎么做，所以上课我们再次进行了分步骤练习，Tico 可以在老师的指导下做对。坐标变换上课的练习也都画对了，但是旋转的练习来不及画了，下课后再去练习吧。\n\n数学部分的暑期复习内容小结：\n1. 主要复习了代数模块，这也是 Tico 的强项，包含解线性方程和方程组、分式方程、二次方程、不等式等。\n2. 几何、代数模块有复习到的是向量画一次函数的图像、画不等式组、坐标变换等。这一块的内容 Tico 就存在一些概念理解方面的问题，需要进一步加强。\n
847	1627786800000	688	t	@Tico Tico 0801 物理化学助教课\n内容：\n - 复习7月16日到7月31号的物理与化学内容\n\n课堂表现：\nTico需要再去熟悉一下常见化学元素的英文名哈， 物理作业7-31也可以开始做了。\n\n比较不熟悉的词汇： tension 张力, pedalling 蹬车, descent 下降, ascent 上升, resistive force 阻力, maintain 保持, downwards 向下, neglect 忽略, pivot 中心点, symmetrical 对称的, elongate 拉长, considerable 相当大的, lead 铅, potassium 钾, odorless 没有气味的 , ammonia 氨, convert 转换, pump 泵, generator 发电机
857	1627349400000	173	t	TIco 丨 7月27日 化学反馈 \n\n今天我们的小目标就已经达成了，Tico 已经能够从给的化学式前半部分写出后半部分了。今天我们开始进入酸和碱的这一单元，这个单元的，复习了酸和碱的定义，强酸碱弱酸碱的区分，以及酸的一些反应。化学式这一块已经能够正确地写出金属和酸的反应，下节课我们会复习酸碱反应当中其他类型的反应，继续加油！
858	1626139800000	173	t	7月13日 Tico 化学课反馈\n课程重点：今天我们继续讲解化合物的形成，特别是其中的离子化合物。\n\n今天讲到的内容涉及 Tico 长期以来都比较困惑的一个部分，不知道化合物形成以后如何去表达。我们在课堂上一步一步的讲解，并且练习了很久如何正确地表达一个化合物。今天表现很棒！作业很及时！
848	1627608600000	655	t	反馈【Wendy】2021年07月30日 周五  中学语法课 Lesson 12\n\n课堂表现：\n现在 Wendy 找句子的主句和从句的能力已经提高很多了，要注意的就是分析介词短语的时候注意从修饰对象下手分析哦！\n\n今天重点：\n1. 句子分析和拆解\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
851	1627624800000	669	t	0730 Lucas Pre-IG 科学课反馈\n主要内容：\n -  讲评Heredity的作业\n - 原子 （The Atom）\n\n课堂表现：\n上节课的作业完成得还好，主要是有几个概念还没理解清楚：genotype和phenotype是什么，有什么区别？DNA是如何影响蛋白质生产，进而影响生物特性的？\n\nLucas对原子的基础结构已经有所了解， 但是对于原子理论（Atom Theory）的发展过程 和同位素的概念还不熟悉，课后最好花点时间完成相应的阅读（Reading. The Atom P3, P4, P8） 。\n\n\n
852	1627621200000	434	t	\n【Eva】2021年07月30日 周五  Pre-AWS 第一季 Lesson 08\n\n课堂表现：\n今天花了比较多时间带着 Eva 把不会的作业完成了。所以，本来 Lesson Eight 的内容只是开了个头。下节课主要讲 Comparison Paragraph。 Eva 在描述性语言上要多训练哦！\n\n今日重点：\n1. Descriptive Paragraph 文章书写\n2. Comparision Paragraph 概念\n
853	1627608600000	462	t	0730 科学课反馈\n主要内容：\n- 上节课作业讲评 \n- 地球与四季\n\n课堂反馈：\n\n这节课上我们讲了地球公转自转以及四季。这也是Laura在课内学习时学的还不够扎实的部分。课后做作业的时候，记得多参考讲义和阅读，不用着急上交。\n\n作业：\n - Assignment. Earty Days, Years and Seasons
854	1627613400000	463	t	0730 科学思维课反馈\n主要内容：\n- 讲评作业\n- Ramps Lab， different model types\n\n课堂反馈：\n通过“types of model”这个话题，我们回顾了之前科学课上学到的模型并将它们分成三类（physical，mathmatical，conceptual）。Laura在老师的提醒下能够迅速回忆起这些模型的相关知识。\n\nRamps Lab这份作业是一份综合学习能力的测试，如果题目有读不懂的，记得问我哈\n\n作业：\n- Assignment. Ramps Lab\n- Reading. Ramps Lab
606	1627549200000	108	t	7月29日 菲菲英文课反馈\n课堂重点内容：Paragraph Review\n\n这节课菲菲状态挺好的。在 Paragraph Review 方面，我们一是要看文段的主题句是否清晰，二是要去校对（proofread）语法错误、拼写错误、标点符号等等。因为暑假日程繁忙，这节课暂时不布置作业了，有时间继续完成阅读任务就好，下节课我们会讨论暑假的阅读成果。
855	1627716600000	679	t	7月31日 Queenie 英文课反馈\n课堂重点内容：逐字逐句精读《Pan's Labyrinth》的第十六和十七章\n\n这节课 Queenie 的表现挺好的，都有认真在听。这节课我们重点讲解的阅读技巧是：如何辨别作者的言外之意？在小说中，很多时候作者不会把所有情节都直白的描述出来，而是要我们自己主动去根据语境推测的。
856	1627711200000	644	t	7月31日 琦岚数学课反馈\n课堂重点：讲评分数比较的作业、分数的加减乘除\n\n琦岚上次的作业中，遇到一个分数排序的作业，她觉得自己不会做。所以我们就一起尝试了不同的办法，发现虽然工程量比较大，但是都可以做出来，只是有的方法比较快。核心思想就是找到最小的公分母（LCD），希望琦岚能学会应用之前学的 LCM 的知识，并且多多尝试做复杂的题。
120	1622872800000	70	t	今天从作业中能看出来，琦岚在计算circumference时还不太熟练，radius和diameter会看错，不过她都能迅速自己改对，之后做作业要记得检查下。
859	1625707800000	173	t	7月8日 Tico 化学 反馈\n\n今天我们先复习了 Valency ，化合价的内容，然后继续学习了关于 bondings 的内容，主要是 covalent bond 和 ionic bond ，要注意他们的构成和一些性质。今天和 Tico 一起画了一份知识点导图，先定下我们的小目标，能够根据反应物写出生成物并且配平，加油
1278	1628233200000	733	t	08.06 Cady 课后反馈：\n今天讲解了阶层和排列（permutation）。对于阶层的运算，就只是需要特别注意0！=1。\n做排列题的时候，要把自己当做裁判，自己来完成题目的要求，对于有特殊的坑位和特殊的要求需优先满足，再填入一般的坑位。\nCady今天的状态很不错，课上有遗留一道题没讲完，我们下节课接着讲。
863	1625126400000	239	t	1
864	1626076800000	239	t	1
865	1626336000000	239	t	1
866	1626681600000	239	t	1
867	1626940800000	239	t	1
868	1625211000000	348	t	1
1367	1629790200000	603	t	【刘行】2021年08月24日 周二  中学语法课 Lesson 07\n\n课堂表现：\n刘行在背单词的时候要更加注意去记忆他们的词性，今天记得subordinate conj要熟读且背诵哦！\n\n今日重点：\n1. 从属连词\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了
871	1626051600000	246	t	1
872	1626224400000	246	t	1
873	1626397200000	246	t	1
874	1626685200000	541	t	1
875	1627030800000	541	t	1
876	1627263000000	576	t	1
877	1627435800000	208	t	1
878	1627608600000	577	t	1
879	1625794200000	450	t	1
880	1626080400000	449	t	1
883	1625452200000	368	t	1
884	1625533200000	244	t	刘行  |  7月6日 周二 数学一对一\n课堂内容：讲解等比数列及其求和。\n课堂表现：刘行对这堂课的内容理解的不错，不过就是在计算上，因为涉及到指数的高次运算，对指数运算能力的要求会比较高，所以需要刘行课后对常见的指数做到熟练，能看到数就条件反射这是一个指数。这两节课把常见数列中的等差和等比进行了讲解和类比，需课后多看看笔记，别混淆公式。\n课后作业：完成对应电子版作业
885	1625625600000	369	t	1
886	1625706000000	244	t	1
887	1625810400000	243	t	1
888	1626055200000	245	t	1
889	1626141600000	245	t	1
904	1625712000000	424	t	1
890	1626228000000	245	t	1
891	1626314400000	245	t	1
892	1626400800000	245	t	1
893	1625135400000	227	t	1
895	1625641200000	425	t	1
896	1625740200000	227	t	1
897	1626345000000	227	t	1
898	1626852600000	544	t	1
899	1626949800000	227	t	1
901	1627383600000	229	t	1
902	1627554600000	227	t	1
905	1626415200000	528	t	1
906	1627023600000	580	t	1
907	1625558400000	224	t	1
908	1625727600000	437	t	1
909	1626768000000	224	t	1
910	1627372800000	224	t	1
912	1625205600000	223	t	1
914	1626170400000	203	t	1
915	1626775200000	203	t	1
918	1627376400000	202	t	1
919	1625107200000	189	t	1
920	1625193600000	190	t	1
921	1625472000000	191	t	1
923	1625644800000	191	t	1
922	1625539200000	190	t	1
925	1625798400000	190	t	1
926	1626069600000	192	t	1
927	1626156000000	192	t	1
928	1626242400000	192	t	1
929	1626328800000	192	t	1
930	1626419400000	193	t	1
931	1626674400000	530	t	1
932	1626760800000	530	t	1
933	1626847200000	530	t	1
934	1626933600000	530	t	1
936	1627642800000	547	t	子杰 | 7月30日 助教课反馈\n \n内容： 1.type of claim复习巩固训练 2. 文章讲解\n表现：上次课的内容子杰对于claim和argument有点搞混了哈，今天会清楚很多~对于课上讲过的内容子杰都能记得，但是实际运用分析还弱了一些，主要是Inappropriate claim of fact和appropriate claim of fact的区分，以及claim of value和claim of policy在判断上会容易弄混，经过题目训练会清楚一些，课后可以结合这些题目复习~design thinking有点忘记了是什么，写作业前也好好再回顾一下哈 \n \n作业：redesign report: write down how to redesign the boarding pass and your reasons (150 words)
935	1627729200000	548	t	子杰 7月31日写作助教课反馈\n \n内容：文章讲解及claim分析\n表现：子杰今天有复习type of claim所以今天球判断的基本没有差错，尤其是能准确得说明原因是什么，不过claim of value里的objective evaluation还是要再注意一下，其他都挺好的~文章理解都很快，逻辑基本也能跟上，下节课继续\n\n作业：完成summary 
937	1627637400000	444	t	Kelland  7月30日助教课反馈\n \n内容：课堂内容复习，作业讲解订正\n表现：kelland对于今天的语法点掌握得还可以~就是又有点凭感觉了，部分错误没有找出来；作文写得还不错，写得很详细，特别是在psychological problem这一块有比较好得描述，但是前面drunk/bad weather还是比较直接写ideas，这一类有环境/画面的可以多描写\n \n作业：把drunk/bad weather部分运用show not tell/five senses增加描写
939	1627624800000	431	t	Bryant 7月30日助教课反馈\n \n内容：课上内容复习，作业讲解订正，单词抽查\n表现： bryant对于word form不太有概念，基本第一题都没找对，详细得讲了一下各类词性特点，这个问题也确实是bryant作文中比较明显的问题，其实具体的语法点还是知道一些的，写到作文中就忘了哈；作文写得太短了，以及第七课没看，没有写成descriptive paragraph哦，所以之前落下的课程要赶快补回来
940	1627801200000	671	t	Bryant 8月1日助教课反馈\n \n内容：课上内容复习，作业讲解订正\n表现： 语法题bryant今天准确率不错哈，不过有些没说出原因有点凭感觉了，句意也没理解，如果能说出原因更好哈；昨天的更改得还不错，已经能基本知道descriptive paragraph怎么写了哈，部分用词和coherence注意一下，尤其是coherence自己要多留意，第二个关于书的描写还不够哈；今天的作文还没写完，两篇都要再发\n\n作业：修改作文发到群里
941	1627867800000	656	t	反馈【Wendy】2021年08月02日 周五  中学语法课 Lesson 13\n\n课堂表现：\n今天是句子分析和拆解的最后一堂课，Wendy现在语法已经基本完全回血了。今天作业暴露出的问题就是 助动词和multipart verb的区别。\n\n今天重点：\n1. 句子分析和拆解\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
942	1627642800000	649	t	【Sherry】2021年07月30日 周五  糯米经济学 IB 微观知识点精讲课 05\n\n课堂表现：\n今天single 和 dual shifting的部分比较复杂，Sherry 课下要自己在画图过一遍哦！\n\n今天重点：\n1.Equilibrium\n2. Elasticity
943	1627786800000	651	t	【Sherry】2021年8月1日 周五  糯米经济学 IB 微观知识点精讲课 06\n\n课堂表现：\n今天因为作业完成的不太理想，所以花了一节课的时间专门讲 paper 1的答题方式和思路。也带着 Sherry 写了一遍。确实对于 Sherry来说IBDP的答题方式会比较难适应，这对公立转国际的学生来说是很正常的现象。不用太焦虑，练习多了就适应了！加油哦！\n\n
945	1625205600000	458	t	1. 采访模拟与反馈\n2. 依照反馈，完成采访内容的修改
946	1625554800000	460	t	1. 测试版问卷调查的详细反馈与修改意见， 社区走访计划\n2. 整理反馈，并根据反馈修改问卷内容。
947	1625727600000	628	t	1. 居委会采访，社区资料调取，拍摄\n2. 完成此次走访的blog
948	1625901300000	264	t	7月10日 Loretta 听力反馈\n\n今天我们讲的是 Marine Biology 的内容，Loretta 说自己在完成 TPO 19 的时候对一篇 Marine Biology 的材料比较头疼。Marine Biology 材料中的细节和专业术语一般会比较多，有时候涉及大量微生物名称，听的时候确实容易有疏忽。在记笔记的是后不需要记得太详细，有简称带过就好了，否则容易影响自己的答题正确率。这一点要多加注意！
951	1625453100000	260	t	小溪:\n反馈【Loretta】07月05日 周一  托福听力 Lesson 04\n\n今天我们讲评了模考中出现的错题，Loretta 这次的错题有两题在 conversation 当中。Loretta 其实在做这两题时都听出了大致答案，但是在选择时却选择了意思相近的错误选项。选项当中有些细节是值得我们去琢磨一下的，一定要注意。讲评完以后，我们又做了 TPO 46，其中 set 6 这篇阅读错的会比较多，一题错在对选项中 attributes 这个词的错误理解，一题错在对于原材料中 Nickle 这个词的理解，单词上还需要多努努力！\n\n\n课后任务：\n1.重新听 TPO 46 set 6\n2. 完成 TPO 45\n
952	1625296500000	259	t	【Loretta】2021年07月03日 托福听力 Lesson 03\n\n课堂表现：\n我们今天主要讲了 Art History, 艺术分类的文章。 Loretta 对于今天艺术类的文章想必天文学会有比较多的问题。艺术类文章中不再是满篇的细节题，更多的是需要对原文内容进行理解的目的题和推理题，这一方面还需要加强。\n\n课后任务：\n1.完成其他艺术分类的TPO
953	1627614000000	184	t	Content: 今天我们说了因果性段落 Cause-Effect Paragraph，也积累了很多单词。这个类型的段落需要⼤家提⾼对逻辑的敏感度哦！\n Homework: 在⽯墨⽂档⾥的 Lesson Nine \n Comment: 今天的课堂氛围⾮常好，Bryant 回归之后讨论更加热烈了！要提醒 的就是 Bryant 记得去回看⼀下前两节课的内容哦～
954	1625535000000	173	t	7月6日  Tico 化学反馈\n\n今天我们学习的是元素周期表，包括如何从元素周期表中辨别金属和非金属、如何在元素格子中找到元素的质子数，相对质量数以及通过计算算出元素原子的电子和中子数。 Tico 目前是比较容易忘记如何从元素周期表中找到有用的信息，需要多去复习。
1279	1628838000000	733	t	08.13 Cady 课后反馈：\n今天讲解了排列。主要是3类题型。1.若排列的东西中有重复的，需要最后重复部分的阶乘。2.捆绑法，适用于题目要求某些量必须靠在一起，可以先看成一个整体，再对捆绑的内部进行排序。3.插空法，适用于题目要求某些量必须分开，可以在两个量之间穿插其他量来达到分开的目的。\nCady今天的上课状态很不错，积极性也很高，课后作业要仔细区分下，用合适的解题方式。
1281	1629455400000	966	t	08.20 Cady 课后反馈：\n今天讲解了combination（组合），组合和排列的区别是：组合不需要顺序，而排列则需要顺序。上节课的作业错题主要是Cady在应用捆绑法的时候，将题目的量进行捆绑时，重新数数时算错了，这个需要自己之后做题时再注意下。
1368	1629781200000	681	t	8月24日  Lucy writing\n今天我们讲的内容包括，不定代词 somebody, no body, anybody 以及反身代词。最近的语法知识点 Lucy 掌握的比较不错，虽然开始会比较慢，但是熟练后做题的速度和正确率就会慢慢提升。
1369	1629784800000	682	t	8月24日  Lucy writing\n今天我们讲的内容包括，不定代词 somebody, no body, anybody 以及反身代词。最近的语法知识点 Lucy 掌握的比较不错，虽然开始会比较慢，但是熟练后做题的速度和正确率就会慢慢提升。
955	1626312600000	173	t	7月15日 Tico 化学反馈\n\n今天我们主要对比了4 种不同的化合物，ionic compound, covalent compound, giant covalent compound, metallic compound. 这一节课主要需要 Tico 知道每一种不同的化合物有什么样的特点，考题中会通过不同化合物的不同特点让同学判断具体是哪种化合物。在后面的题目中，TIco 有一个需要记得的考点，就是判断某一个物质在室温下是什么状态。对这种题，Tico 要先知道这个物质的熔沸点（题目会给），然后看室温应该是比沸点高还是低，或者比熔点低来判断物质在室温下具体的状态。
956	1626744600000	173	t	7月20日 Tico 化学反馈\n\n今天我们学的是氢气氮气氨气。这三种气体是我们实验室的常见气体。在实验室中制造氢气的过程中涉及到了我们的置换反应，于是我们一起复习了一下置换反应的化学式以及方法。这节课我们还一起复习了实验室中氨气的制作方式，化学式是一个可逆反应，我们会在之后的课上学习可逆反应的性质和特点。
957	1626917400000	173	t	7月22日 Tico 化学反馈\n\n今天学习的是工业制氨的 Haber process 以及实验室如何制作硫酸，Tico 需要知道的是制作氨气的可逆反应，以及制作流程中作为催化剂的是 Iron , 以 iron bed 的形式存在。初次之外， Tico 还要记下来制作硫酸的三个化学式，从 S + O2 → SO2，\n SO2 + O2→ SO3，这一步当中，要注意我们会有个 Vanadium Oxide 作为催化剂。
958	1622795400000	662	t	\N
959	1623400200000	662	t	\N
960	1624005000000	662	t	\N
962	1627614000000	663	t	7月30日 反馈 Mandy 词汇课\n\n今天我们复习了之前学过的词汇，Mandy 还是能够回忆的起不少词汇的意思，非常不错，但是因为量可能有点多了，后面就开始有些不耐烦了 。目前可能 Mandy 在背单词上还需要一些动力，虽然的确记得不少，但是就是不喜欢。我从这周开始会给 Mandy 留些作业，因为一周只有一节课了，不能每节课都在复习。
966	1627896600000	444	t	Kelland 8月2日助教课反馈\n \n内容：课上内容复习，作业讲解订正\n表现：作文写得很好哈，四个类型写得都挺详细的，内容很丰富，如果能再增加一些场景描述会更生动些，很棒🏻语法题自己有写出来原因很好哈，有去找依据准确率就高了不少，要注意along with/and之间的区别，以及表示一个整体的情况，单词都很棒🏻
967	1627893900000	466	t	Michael 8月2日助教课反馈\n \n内容：课上内容复习，作业讲解订正\n表现：因为落了几次助教课，Michael有点忘记怎么写descriptive paragraph，并且作文有点赶，写的不是很清晰，内容也不够多，没什么细节的描述比较vague，所以在这花的时间多一些；语法整体有进步，但还是老问题，会判断不准subject，有时候比较凭感觉，也有单词的问题，课后重点修改作文增加细节描述
968	1627888500000	640	t	Bryant 8月2日助教课反馈\n \n内容：课上内容复习，作业讲解订正\n表现：对于descriptive paragraph有比较清晰了哈，语法题今天也都是单词不认识影响做题，相应的语法知识点掌握得还可以，单词继续加油~今天的作文classify不是很明确，各类型之间的区别没有很明显，主要是词汇句子表达不够准确，逻辑不太严谨，下笔前多思考自己要写什么\n\n作业：修改作文
1282	1627954200000	707	t	课堂反馈：今天开始用模拟卷讲解入学考，天歌今天的课堂状态还是不错的，不过下节课课前提前准备好草稿纸和笔，方便课堂计算用。读题时需要更加仔细点，看清楚题目有关的代数量是指代什么，好清楚方程该怎么列式
971	1627954200000	731	t	Steven| 8月3日读写课反馈\n主要内容：\n1、生词学习\n2、Rise of megacities 文章精读\n\n课堂表现：\nSteven 上课是比较认真的，能够一直保持跟着老师的节奏互动和记笔记。有时候问题没听清，也会立刻提出来，这样非常好，老师就是希望Steven多提问题，还有自己不认识的单词，也大方地说出来不知道，这样我们可以学到更多，进步更多。\n\n另外我们在结合文章的内容，做一些延伸地讨论时，Steven也有认真去思考，比如讨论北京这个城市的有趣之处，为什么有不同的人、语言会更有趣，以及人太多为什么会造成问题，等等。\n\n作业：\n1、完成上面文档里第3-4页的4、5、7、8、9题\n\n2、背今天记的单词，下午检查，包括中文意思、拼写
972	1627887600000	717	t	8 月 2 日 AWS L1 课程记录\n\n今天讲的重点是，正本清源：议论文的本质是改变读者的想法，哪怕只有一点点\n\n今天孺亦要重点复习的 PPT 页数如下（通过我上课时对他的观察，我推断，下面这几页 PPT ，他要么是理解速度比较慢，要么是第一遍没听懂我在说什么）：\n\nP8 P9 P13 P14\n\n今天的课后作业：来来来，参加纽约时报的写作比赛（第一次发起挑战）\n\n读之前发过的那篇文章（我附件重新发一次），然后写一篇读后感，读后感为非命题作文，最多只能写 1500 个字符（是字符数，不是单词数，apple 算 1 个单词，但算 5 个字符，word 和 pages 都会统计字符数）。\n\n我把比赛的评分标准和范文都放下面，你可以先研究下再写，你写完的内容，我会教你怎么改，我们多改几遍再投稿。\n\n最终稿的截稿时间是 8 月 5 日。
973	1627972200000	672	t	【Lora】2021年08月03日 周二  糯米经济学 IB 摸底课01\n\n课堂反馈：\n今天通过宏观和微观的真题给Lora摸了一下底。Lora微观部分学的非常好，但是宏观部分不太扎实。宏观的知识点掌握的不好的情况下，我们将课程换成宏观的知识点课配套真题练习，占比大概是70%知识点+30%真题练习，这样对Lora的提高会最大化。稍后附上新的教学大纲。\n今天重点：\n1. 真题摸底\n\n课后任务：\n1.自行梳理宏观学过的知识点，方便我们在知识点课上加快进度
1283	1628127000000	708	t	08.05 天歌 课后反馈：\n今天继续讲解了7年级的入学测试卷，题型涉及到对方程列式中的每个数及运算法则该怎么由文字翻译得到。天歌现在还不太会做这种题型，得通过完成作业，增加下这类题型的熟练度。
1284	1628305200000	709	t	08.07 天歌 课后反馈：\n今天继续讲解7年级的测试卷，主要涉及到一些纯计算的题目，天歌的正确率还是不错的。\n天歌的作业正确率还是很不错的，所以下次可以写完后，课前发给我批改下。
1285	1628559000000	710	t	08.10 天歌 课后反馈：\n今天继续讲解了G7的测试题，题目主要涉及到了图像的gradient问题和常规的ratio问题，这部分是天歌G6的时候课内学过的知识点，不过可能有点久了，遗忘的有点多了。\n这节课的上课状态有点不太好，天歌跟我反映上课犯困，了解完之后发现她的时差还没有完全倒过来，所以时差问题得自己解决下，才能提高我们的上课进度。
974	1627966800000	569	t	【Molly】2021年08月03日 周二  糯米经济学 IB 微观知识点精讲课 05\n\n课堂表现：\nMolly 下次作业早点教了，不能在课上讲作业会影响学习的效果。\n\n今天重点：\n1. Elasticity\n\n课后任务：\n1.复习今天的笔记。\n2. 完成 Lesson Four + Five Homework，并于周三晚上10点前提交。
975	1627970400000	732	t	Steven| 8月3日 作业巩固课反馈\n讲评了今天的作业，明确了almost的意思，然后讨论了discussion部分怎么回答。遇到一般疑问句，首先答yes/no，再说明具体情况。关于断句，一个句子表达一个完整的意思，结束之后就要用句号了，现在Steven会全用逗号和and连接。\n\n听写的部分，Steven表现很不错，记住了绝大部分意思和拼写。harmful的意思没想起来，还有个别词不会拼。\n
976	1627974000000	718	t	周露 Joy:\n8 月 3 日 AWS 助教课反馈\n主要内容：\n讲了 Why Investing in Fast Food May Be a Good Thing这篇文章中的一些学术/专业概念，词汇，功能句的作用，需要回答的题目思路。\n\n课堂表现：这节课孺亦表现很棒，首先对专业术语的理解挺快的，比如 local economy，举出的例子也很贴切；词汇方面，孺亦也只有个别词汇需要帮助，跟他之前背单词的习惯应该有关系，他的词汇量是很不错的；最后功能句的作用方面，孺亦也理解得很快，这节课上除了承上启下的句子、主题句、设问句之外，还重点讨论了让步句，可以多关注和仿写这样的句子。\n\n作业：把题目写完\n截止时间：8月3日23:59\n
977	1627970400000	736	t	Michael 8月3日lesson 8助教课反馈\n \n内容：课堂内容复习，作业讲解订正，单词检查\n表现： 上次作文写得有进步，但是细节还是不够哦，要尽量把环境+人物+感受都能写到哈；lesson 89的作文也是descriptive paragraph，所以还有两次练习的机会，lesson8的作文内容都是上课探讨过的，也是写得比较vague，关于drowning/natural factors/cleanness可以再多描述，尤其这些可以用上five senses；语法题注意理清什么人/东西怎么样了，通过理解抓住重点去找subject，subject还是会找不到\n \n作业：作文订正，将describe的部分写详细
978	1627988400000	622	t	【Nina】2021年08月03日 周二  Pre-AWS 第一季 Lesson 14\n\n课堂表现：\nNina 在描述性语言这一块比较薄弱哦，平时可以多留意身边的小细节，比如表情、动作习惯、气味、环境等等。通过日常的积累可以让自己的文章更生动哦！\n今日内容：\n1. comparison paragraph\n\n课后任务：\n1.复习今天的笔记。\n2. Lesson 13 HWK。在石墨文档里了。
979	1627970400000	693	t	08.03 菲菲 课后反馈：\n今天复习了二次方程的3类题型，可能因为太久没上数学课了，解题方式在提问的时候，有点遗忘了。着重提醒下当你解二次方程时，两边能不能同除“x”，需要特别思考下，x能不能为0，从而知道能否两边同除x。今天的上课状态还是不错的，很多知识点和解题方式在通过提问后都能迅速想起来。
980	1627974000000	572	t	08.03 Caesar 课后反馈：\n本节课主要讲解了根号的有理化，分数的分母不仅不能是0，而且也不能含有根式。所以今天主要讲解了分母有理化的两种题型，分别是：1.分母只有根号时，只需要上下同乘同一个根式即可；2.分母是个组合体，得用公式：(a+b)(a-b)=a²-b²，使分母的根式消失。
981	1628040600000	743	t	Steven| 8月4日读写课反馈\n主要内容：\n1、生词学习\n2、Homestay holidays文章精读\n课堂表现：\n今天Steven上课状态更好了，回答问题会更快，交流得更顺畅了。课上的阅读题目，Steven能够比较快找到正确答案。\n课前预习的词汇题部分，有一部分单词选错了，在课上讲的时候，我有引导他根据句子中的辅助信息去做判断。\n\n作业：完成作业文件里的练习题
982	1628040600000	208	t	08.04 Simon 课后反馈：\n今天讲解了直线的公式表达，y=mx+c，其中m代表gradient，c代表y-intercept。由这两个信息量就可以从图中画出对应的图。在解题过程中，优先确定C的值，从而确定第一个点，然后再根据斜率求解出第二个点的位置，便能画出直线。
983	1628044800000	605	t	08.04 刘行 数学课后反馈：\n今天讲解了函数的3类变化，分别是Translation；Reflection；Stretch。这3种变化中要特别注意translation和stretch的水平挪动时，会有点认知，如水平向右挪动，则是“-a”。水平拉伸a倍，则变成“x/a”，所以解题时要特别注意这两点，而其他的变换则是和之前IG的transformation内容一样的。
984	1628040600000	593	t	【刘行】2021年08月04日 周三  Pre-AWS 第一季 Lesson 05\n\n课堂表现：\n今天状态还不错哦，但是刘行在语法上还是要多加强一下。\n\n今日重点：\n1. Clarity\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
985	1628056800000	726	t	【子杰】2021年08月04日 周三  AWS 第二季 Lesson 05\n\n课堂表现：\n子杰今天状态很好，对三个claim的理解可以再加强一下哦！课下可以看下这篇文章，学习一下类比法。\n\n今日重点：\n1. developing claims in to thesis\n\n课后任务：\n1.复习今天的笔记。
986	1628053200000	434	t	【Eva】2021年08月04日 周三  Pre-AWS 第一季 Lesson 09\n\n课堂表现：\nEva现在的描述性语言已经提升了很多啦！继续保持哦！\n\n今日重点：\n1. Comparision Paragraph\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
987	1628061300000	430	t	Bryant 8月4日助教课反馈\n \n内容：课上内容复习，作业讲解订正，单词抽查\n表现： bryant题目没有怎么读懂，以后题目不太确定要先问一下~理解正确后基本对于第一篇文章的结构没有太大问题，第二篇文章的details基本没有意识到，有单词的原因，也有bryant本身就不太注重细节的原因，觉得文章太废话了，所以带着bryant分析了一下这些descriptive details；单词有些又忘了，特别是之前学过的nuances/rewarding，单词一定要多复习
989	1628062200000	746	t	Steven| 8月4日 作业巩固课反馈\n我们讲评了今天的作业，一会儿需要Steven把后面附的这段笔记抄到笔记本上。\n\nSteven写作业挺认真的，看得出来都有去思考，听讲评的时候也很棒，在老师的引导下能够分析问题。\n\n今天的听写，Steven记住了所有单词的意思，注意since，local这两个词的发音，多读几遍。\n\n因为时间有限，今天就没测试拼写了。
990	1628062200000	691	t	8月4日 菲菲英文课反馈\n课堂重点：《The School Play》的细节阅读和大意理解\n\n今天这节课菲菲找回学习状态了，预习作业做得很好，上课回答问题也很主动。之后在阅读时可以多去做一些标记，在自己印象深刻的部分写问题。（即今天说的 Monitor）\n\n作业：\n1. 课后单词和写作作业：https://shimo.im/docs/KcP6Kkkq6wXDGytR\n2. 阅读《Posted》的 the Nudge\n3. 背单词 3-9
991	1628056800000	719	t	8 月 4 日 AWS 助教课反馈\n主要内容：\n讲了controversial topic，select a topic， develop argument， 也就是正式写议论文之前的准备工作。\n\n课堂表现：\n在想controversial topic的时候，孺亦觉得没啥思路，我们就去bing.com搜索了一下，顺便讨论了如何选择一个典型的话题，便于扩展成一整篇文章。\n\n选出来的第一个话题是The assessment of students must be optional，我们讨论了pro这个角度需要怎么展开，尤其是模仿使用昨天学习的功能句来组织文章的内容。另外con这个角度，也就是counterargument需要孺亦自己去思考和完成。\n\n今天还考了孺亦几个昨天学的概念，记得还不错，但是昨天剩下的需要课后写完的内容，没写呢 
992	1628066700000	466	t	썸머Summer:\nMichael 8月4日助教课反馈\n \n内容：作业讲解订正，单词检查\n表现：这次作业不太难，第一部分没有问题，但是第二题有点偷懒没写了哈，并且details找的不是很准，文章能理解，但是对于细节的捕捉和分析能力还欠缺，需要多分析多写了哈；单词基本都还记得，nuances反应比较慢，以及rummage和mirage要分清楚\n
993	1628046000000	184	t	Content: 今天我们进⼊⽂章的学习了哦。⼤家在写作业的时候可以去类⽐段 落的结构复习～ Homework: 在⽯墨⽂档⾥的 Lesson Ten HWK\nComment: 今天的课堂氛围很好，进⼊⽂章之后⼤家⼀定要更加保持思路的清晰 完成好每个句⼦的写作！加油哦！
1004	1628139600000	569	t	【Molly】2021年08月05日 周四  糯米经济学 IB 微观知识点精讲课 06\n\n课堂表现：\nMolly 现在知识点吸收的都还不错，但是在应用和做题上要引起重视，多加强这方面的练习哦！拿今天我讲的方法去订正作业吧！\n\n今天重点：\n1. Paper 1 练习讲评\n\n课后任务：\n1.复习今天的笔记。\n2. 订正 Lesson Four + Five Homework，并于下周一晚上10点前提交。
994	1627873200000	184	t	Content: 今天我们说段落类型的最后⼀种 - classification paragrah。接下来 的两节课我们开始进⼊⽂章的学习，⼤家要开始转变思路了哦。 Homework: 在⽯墨⽂档⾥的 Lesson Ten HWK\nComment: 今天的课堂氛围很热烈，⼤家的讨论也很积极。牧牧⽼师很喜欢你们 给我做的壁纸哈！即将进⼊⽂章的内容了，会⽐之前更加复杂哦。⼤ 家要做好复习，以免跟不上。
995	1628062200000	610	t	08.04 刘行 物理课后反馈：\n今天讲解了新课电学，首先charge分为positive charge （正电荷）和 negative charge（负电荷）。其次每种电荷都存在electric field line（电场线），而电场线是不会重叠的，并且正电荷的电场是往外发散的，负电荷的电场是往里聚集的。\n记住current（电流），电荷（Q），voltage（电压）直接的关系，把电流想象成水流，电荷量Q想象成水流量，电压想象成地势高低差。
996	1628071200000	620	t	08.04 Nina课后反馈：\n今天讲解了下之前的作业，错误点主要集中在对（a+b）²的展开时，会忘记“2ab”这项。讲解完作业用同类型的巩固了下。\nNina今天上课网络有点波动，所以有时会卡顿。之后上课的声音可以大一点，不然有点听不太到，下节课记得开摄像头噢。
997	1628066400000	211	t	08.04 Laura 数学课后反馈：\n上节课的作业要特别注意下，当k＞0时，应该先想下答案有2个，那2个答案的表示形式是用“±”来体现的，可以这么去记忆。\n今天讲解了二次方程的一种题型：（）×（）=0，则那么第一个（）=0，或者第二个（）=0。\nLaura今天上课状态有点不好，不清楚是不是有点累，回答得声音有点小。课上还得在集中下注意力，以后上课记得开摄像头，这样走神的时候老师可以提醒下。
998	1628056800000	713	t	08.04 逸然 课后反馈：\n上节课的作业主要突出了对不等式的错误理解，不等式的解题过程需要把一边归为0，因为跟0对比才能得出乘积的正负性，不是0则没有办法对比。\n今天开始讲解AMC8真题，逸然的上课状态非常不错，一解释完AMC8的平均解题速度，就非常的集中解题，解题速度非常快，希望之后的真题课也能保持今天的状态！
1000	1628069400000	444	t	Kelland  8月4日助教课反馈\n \n内容：作业讲解订正，单词检查\n表现：kelland对题目不太理解，以后如果题目不太理解要第一时间问哈~带着kelland把段落都分析了一下，一开始会找不准段落可以怎么分，内容概括得不够，但是supporting details都能找到，kelland对细节的理解和把握都很好，所以只是需要更有逻辑得把内容提炼一下就好了；单词都没有什么问题哈，新的单词积累到笔记本哦
1002	1628127000000	656	t	反馈【Wendy】2021年08月05日 周四  中学语法课 Lesson 15\n\n课堂表现：\n今天我们依然是继续标点符号的学习，wendy的吸收情况不错，要注意和之前的知识点串联起来。这次作业很棒哦！全对！\n今天重点：\n1. 冒号\n2. 破折号\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
1003	1627956000000	657	t	反馈【Wendy】2021年08月03日 周二  中学语法课 Lesson 14\n\n课堂表现：\n今天我们学习了 逗号 的使用规则，也把它和之前的一些知识点串联起来了。Wendy的理解里还是非常好的，吸收的很快！\n\n今天重点：\n1. 逗号\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
988	1628127000000	743	t	Steven| 8月5日 写作课反馈\n主要内容：\n1、介绍写作任务，学习评估和分类positives, negatives \n2、简单句结构（辨认主语和动词），there be 句型\n\n课堂表现：今天检查单词的时候，Steven表现得特别好，前两天的基本都记住了，只有customer和guest的意思还要再复习一下。\n\n今天学习的there be句型，可以解决一些之前Steven写作中的滥用have的问题。在课上，他一开始对于主语、动词的分辨还有迷糊，后来就能比较快地正确判断了。记住用there be的时候，要确认后面名词的单复数问题。\n\n今天课上生词比较少，就另外给了Steven一些。\n\n作业：\n完成课堂文件里的练习题
1005	1628130600000	606	t	08.05 刘行 课后反馈：\n今天主要讲解了函数挪动的综合运用。课上都是让刘行自己来动笔画的，让刘行感受下当平移，对称和拉伸进行组合时，先后顺序不一样，会导致表达式和图像都有差异。所以需要特别明确每一步需要变动的是什么，如水平平移只改变"x"，y轴对称只改变“x”，水平拉伸针对x的整个组合体进行改变，竖直拉伸针对整个表达式整体就行改变。
1006	1628143200000	747	t	Steven| 8月5日 作业巩固课反馈\n今天Steven上午下课之后没有完成学习任务。我就在课上带他完成了今天作文部分的作业，还有补充了单词本上生词的意思。\n\n下午需要把今天的单词，每个抄写5遍，边写边背，明天回考察。\n\n另外，还要把quizlet单词集发给我 @shygo_lone 10124 
1007	1628139600000	685	t	Lucy 丨 8月5日 英语写作 反馈\n\n今天我们重新复习了一下以前的内容，包括我们的几个介词的用法，Lucy 表现的还不错，就是依旧写东西速度偏慢了点。之后我们一起写了一篇文章，Lucy 还是比较不喜欢写和人相关的，不过今天写的是妈妈，她还是比较愿意写的。文章讲的是这两天得病了，虽然妈妈很忙没空回来照顾她，但是她并不难受，并且说要学会照顾自己。
1008	1628143200000	686	t	Lucy 丨 8月5日 英语写作 反馈\n\n今天我们重新复习了一下以前的内容，包括我们的几个介词的用法，Lucy 表现的还不错，就是依旧写东西速度偏慢了点。之后我们一起写了一篇文章，Lucy 还是比较不喜欢写和人相关的，不过今天写的是妈妈，她还是比较愿意写的。文章讲的是这两天得病了，虽然妈妈很忙没空回来照顾她，但是她并不难受，并且说要学会照顾自己。
1001	1628148600000	752	t	【刘行】2021年08月05日 周四  Pre-AWS 第一季 Lesson 06\n\n课堂表现：\n今天状态很好哦，知识点都吸收的很快。以后写作文的时候记得写完检查一下语法先。\n\n今日重点：\n语法：1. simple tense 2.非谓语 \n写作：1.Unity and coherence\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1028	1628240400000	98	t	8 月 6 日 Queenie 英文课反馈\n课堂内容：wordly wise 3-6 的单词讲解\n\n今天 Queenie 的状态不错哈，我问问题都有回答，然后课堂练习也基本做对了，记得把上周的单词作业也补做完哦。现在记单词的时候一定要把每个释义都记下来哈，不能只挑一个意思是记了。
1012	1628248200000	625	t	【Nina】2021年08月06日 周五  Pre-AWS 第一季 Lesson 17\n\n课堂表现：\n今天Nina状态真的非常的棒！作业写得也非常的好！每天都在进步！就是语法错误有点多哦，下次写完自己先 self-check一下哈。\n\n今日内容：\n1. Cause-Effect paragraph\n\n课后任务：\n1.复习今天的笔记。\n2. Lesson 17 HWK。在石墨文档里了。
1013	1628165400000	621	t	【Nina】2021年08月05日 周四  Pre-AWS 第一季 Lesson 16\n\n课堂表现：\n今天我和Nina的电脑轮流出现状况，所以拖了一会堂。现在Nina的作文进步真的很大！内容变得更加丰富了，格式也很完整。继续加油哦！\n\n今日内容：\n1. Cause-Effect paragraph\n\n课后任务：\n1.复习今天的笔记。\n2. Lesson 16 HWK。在石墨文档里了。
1014	1628075400000	623	t	【Nina】2021年08月04日 周三  Pre-AWS 第一季 Lesson 15\n\n课堂表现：\nNina 今天的作文也得很棒哦！表扬！ 但是今天上课的时候有点开小差哦。\n\n今日内容：\n1. comparison paragraph\n\n课后任务：\n1.复习今天的笔记。\n2. Lesson 15 HWK。在石墨文档里了。
1021	1628213400000	208	t	Oath:\n08.06 Simon 课后反馈：\n今天开始讲解Trigonometry（三角函数）。对于不同角，边的命名方式会有些变化，所以要特别注意每个角所对应的3条边的名称，特别是opposite和adjacent，懂得先确定哪条直角边是opposite，则另一条直角边便是adjacent。\n引入了sin，cos，tan这3个三角函数值，要记住三角函数值其实就是ratio的一种类型。\nSimon课上对找边比较生疏，课后得多看看图，增加准确度。\n
1009	1628213400000	593	t	【刘行】2021年08月06日 周五  Pre-AWS 第一季 Lesson 07\n\n课堂表现：\n今天状态很好哦，以后的作业要记得审题仔细一些哦，今天作业就跑题啦。\n\n今日重点：\n语法：1. 固定搭配积累\n写作：1.descriptive paragraph\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1017	1628146800000	727	t	子杰 | 8月5日 两节助教课反馈\n \n内容： 1. 文章讲解 2. 作业讲解 3. 话题探讨\n表现：子杰现在对于claim在文章中的分析基本没有问题，但是自己写的时候claim of value和claim of policy会混淆，这个点注意一下；作业中写得都还不错，有注意到purpose&audience，也有尝试使用analogy，但是类比的例子不到位，不够具体，没有突出特点，这个需要慢慢积累掌握逻辑没事的~进入thesis开始我们都会花时间审题对题目进行探讨，子杰对于advertising和plagiarism的了解不是特别多，随着探讨之后思路有打开，特别是对于plagiarism的思考逐渐比较深入，很棒哈，记得完成课后作业
1019	1628213400000	743	t	周露 Joy:\nSteven| 8月6日 写作课反馈\n主要内容：\n1、生词学习\n2、celebrate这篇文章精读\n课堂表现：\n今天Steven状态挺不错，理解文章和词汇的时候基本都能答上来，记笔记很配合。\n\n在仿写句子和思考作文素材的部分，还需要比较多引导和示范。在之后的课堂练习中，需要更积极地联想，更大胆地表达，很多问题没有标准答案的，不用怕说错。\n\n作业：前面布置了\n
1020	1628217600000	605	t	08.06 刘行 课后反馈：\n今天讲解了inverse function（反函数）。本质就是把坐标系的x轴和y轴进行对换，从图像上看，原函数和反函数根据y=x 对称。记住区分：原函数的domain=反函数的range；原函数的range=反函数的domain。解题时需注意题目要求解反函数的domain或者range，都通通转换成原函数的domain和range去解题。\n今天这个内容比较抽象，刘行课上还有点不太适应，会出现混淆的情况。课后自己刷刷题，增加下熟练度。
1022	1628217000000	754	t	Tony  8月6日数学课反馈\n \n内容：斜率/距离中点公式复习，圆方程\n表现：Tony作业因为太忙了没怎么写，课上过了一下思路，简单直接的题目都能反应出方法，稍微变形就需要花一点时间了哈，口算的反应和能力可以再加强，这样数学思维反应会越来越快，之后会多给Tony这种综合类型的题目，锻炼一下知识迁移能力；圆的基本知识点不难，都掌握得很快，也是和斜率的综合题会反应不出方法，我们下节课专门练几何综合题哈\n \n作业：课本课后习题+上次作业的计算过程完成
1023	1628226000000	565	t	【Eva】2021年08月06日 周五  Pre-AWS 第一季 Lesson 10\n\n课堂表现：\nEva现在的作文细节越来越丰富了，非常好！要记住Comparison paragraph 要先写 types哦！\n\n今日重点：\n1. Cause-Effect Paragraph\n
1024	1628229600000	726	t	【子杰】2021年08月06日 周五  AWS 第二季 Lesson 06\n\n课堂表现：\n子杰今天状态很棒！子杰在平时多思考counter argument，练习自己critical thinking的能力，想不出来的时候就去查资料。\n\n今日重点：\n1. types of thesis statement\n\n课后任务：\n1.复习今天的笔记。
999	1628229600000	431	t	Bryant 8月6日助教课反馈\n \n内容：课上内容复习，作业讲解订正，\n表现：今天作文bryant写离题了哈，写成了介绍一个朋友，之前所学的内容要都用起来，文章的开头结尾，以及段落的topic sentence要有概念；每一段的topic sentence不明确，写完topic sentence就没话讲了，bryant写作文还不够细，逻辑上也不够完善；方法跟之前的作文类似哈；单词储备也是个问题，句子意思没有表达清楚，好好修改作文~
1025	1628232300000	467	t	Michael 8月6日助教课反馈\n内容：作业讲解订正，单词检查\n表现：Michael今天作文内容上有很大进步哈，写得很充实，想到挺多细节，文章逻辑上是围绕着topic的，并且文章段落比较清晰，但是段落内的逻辑还是比较乱，尤其是unity&coherence，写着写着就不知道自己要写什么，两个body paragraph都是没有扣到段落的topic sentence，写飘了，句子和句子之间的逻辑要多推敲，个别词汇多想一下，是能写对的哈
1026	1628235000000	691	t	8月6日菲菲英文课反馈\n课堂重点：《the School Play》的情节分析和作业指导\n\n菲菲周三的作业中单词部分完成得很好，只是在造句方面遇到了一些小困难。写作作业要试着解释得更清晰，每个段落中只要有一个主要观点就好了。我建议菲菲可以去阅读同龄人写的范文，学习别人写的好的地方。\n\n作业：\n1. 作业 4 https://shimo.im/docs/KcP6Kkkq6wXDGytR/ \n2. 背单词 3-10，下周一就测单词啦，不要忘记复习之前的\n3. 读书《the Fish》（posted 的下个章节）
1027	1628229600000	747	t	Steven| 8月6日 作业巩固课反馈\n今天Steven作业写得还不错，discussion部分写出了具体理由来支持自己的观点。有一些注意事项我们在刚刚的课上强调了，希望下次注意。\n单词部分，今天Steven上课记的笔记不合格，意思有记岔了的，还有些单词都没写全，老师给的其他词也没有写到本子上去背。以后我们会在上午下课之前，把笔记检查好再下课。\n\n今天还是需要把每个词抄5遍并背下来，下次上课抽查。\n\nquizlet单词集加好今天的单词之后，重新发群里。
1029	1628301600000	695	t	08.07 菲菲 课后反馈：\n今天讲解了二次方程的一般式，公式的证明过程可以自己试着课后自行推导下。对于ax²+bx+c=0这样的一般式，菲菲还要学会把式子写成（）²=k的形式。紧接着我们练了一题涉及到相似的二次方程图题，对于相似三角形中涉及到的射影定理应用，菲菲可以根据上课的记忆点来自己尝试着推导下。
1030	1628229600000	611	t	08.06 刘行 物理课后反馈：\n今天讲解了电路中的Ohm's law，公式：R=V/I。根据这个公式我们进一步完善了P跟E的公式展开式。也学了两个新的仪器：电流表（amperemeter）和电压表（voltmeter）。其中电流表的电阻约为0，电压表的电阻大概上千欧。所以在电路中通常把电流表当做导线（无电阻），把电压表的支端当成无电流通过（电压表电阻远大于电路中其他电阻）。
1031	1628244000000	620	t	08.06 Nina 课后反馈：\n今天讲解了代数分解，是对代数公式a(b+c)=ab+ac，(a+b)(c+d)=ac+ad+bc+bd的逆运用。从题目中提炼出公共部分，讲多个数进行整合。\nNina今天的上课状态非常好，答题速度非常快，而且对符号的判断现在几乎不会出现错误了，已经对代数公式的应用很熟练了，继续保持噢！
1033	1628402400000	673	t	牧牧:\n【Lora】2021年08月08日 周天  糯米经济学 IB 宏观知识点精讲课 01\n\n课堂表现：\n今天进度比较快，讲了2.5个lesson的内容。Lora 课下可以自己再跟着ppt过一遍\n今天重点：\n1. Central Themes about Macro\n\n课后任务：\n1. 完成作业，并于8月9号 晚9点前提交我批改\n
1037	1628218800000	184	t	Content: 今天是我们第⼀季的最后⼀节课啦～ 我们讲了⼀篇学术⽂章的基本 构造，以及写学术⽂章的前⼏个步骤。 Homework: 在⽯墨⽂档⾥的 Lesson Twelve HWK\n⼤家表现的都很不错，从作业上可以看到同学们的每⼀个进步，⼤家 继续加油哦！
1041	1628316000000	719	t	\N
1286	1629514800000	902	t	08.21 天歌 课后反馈：\n今天讲解了代数分解：x²+2bx+b²的形式，需要对x²和b²进行拆解成乘积形式，而将拆解后的数通过“十字相乘法”来验证，如果结果是满足2bx，则拆解正确。再将题目写成( )( )的形式即可。
1038	1628242200000	444	t	Kelland  8月6日助教课反馈\n \n内容：作业讲解订正，单词检查\n表现：kelland今天选了一个比较简单的题目哈，写得还不错，有尽可能想describe的细节，处理得很好，只有一个段落所写内容没有提及topic sentences，有涉及关于counterargument的处理，这个点以后会再详细学，能有这个想法还是挺好的；剩余时间讨论了kelland觉得比较难写的题，思路打开后也能说很多，多花时间思考哈，很棒
1287	1628074800000	971	t	08.04 睿涵 课后反馈：\n今天讲解了函数的3类挪动：Translation（平移）；Reflection（对称）；Stretch（拉伸）。这六种对表达式的变换中，需要特别注意translation中的水平挪动及stretch中的平行x轴的拉伸，记忆点是反着来的，所以在解题时需要特别注意。\n睿涵今天的上课状态非常好，回答问题也十分积极，希望能继续保持噢！
1294	1629081600000	818	t	08.16 睿涵 课后反馈：\n今天复习了function，其函数分成2大类：one-one function和 many-one function。区分依据是1个y值对应多少个x值。并把x的取值范围定义成domain。y的取值范围定义成range。\n课上讲解的题型中包括分段函数求出range 和 domain。针对睿涵目前会的一次函数和二次函数图像进行辅助理解，这样比较能直观看出y的取值范围。\n睿涵今天课上反应还是很不错的，对二次图像的画法，需要课后自己多练练，尽量在画草稿图时，画的准确点，有利于解题
1297	1629352800000	819	t	08.19 睿涵 课后反馈：\n今天主要讲解了求y'的应用题，涉及到了很多之前的知识点。本节课睿涵的上课状态特别好，解题的思路也十分清晰，也对之前的不等式的区域范围，能做到正确看图了。\n状态很不错，继续保持。明天开始讲解复合函数的求导。
1299	1629450900000	860	t	08.20 Simon 课后反馈：\n上节课的作业中，没写的题最大的原因是Simon没有在图上做标记的习惯，当我课上做上标记后，自己就知道怎么求解了，所以在之后涉及到含有图像的题目时，要学会自己标记图，来让自己的解题思路更加清晰。\n这节课主要复习了方程组的应用题，从课上的反应情况来看，很清楚该怎么列式，但有点遗忘了解题方式了，课后需自己多加复习下。
1039	1628391600000	776	t	【Rebecca】2021年08月08日 周二  糯米经济学 IB 宏观知识点精讲课 16\n\n课堂反馈：\n这两节课的东西关联性很强，一定要记住一起对应着复习。\n\n今天重点：\n1. Aggregate Supply in long run\n\n\n课后任务：\n1.复习今天的笔记。\n2. 完成 Lesson sixteen Homework，并于周二下午4 点前提交给我批改。\n3. 做错题报告哦
1288	1628143200000	738	t	08.05 天歌 课后反馈：\n今天继续讲解了7年级的入学测试卷，题型涉及到对方程列式中的每个数及运算法则该怎么由文字翻译得到。天歌现在还不太会做这种题型，得通过完成作业，增加下这类题型的熟练度。
1291	1628575200000	742	t	08.10 睿涵 课后反馈：\n今天讲解了下昨天的反函数作业。睿涵对简单的求解反函数做得还是很不错的。不过就是涉及到分式或者指数的时候，会因为弄错先后顺序导致求解出来的式子出现了点偏差。所以需要注意一点：当在对数进行挪动时，我们满足对x的远近关系，从远到进进行数的挪动。
1292	1628748000000	742	t	08.12 睿涵 课后反馈：\n今天复习了下整个函数的知识点内容，发现睿涵的遗忘率还是有点高的，需要自己课后多看看笔记。今天的课堂笔记后面有一张整个函数知识点的总结，睿涵可以打印出来，再根据自己的习惯重新整合到自己的笔记本上。\n睿涵对函数的理解难点在与表达式和图像之前的转换和函数图像的各个意义会混淆。这点我们之后会重点强化下。
1293	1628842500000	973	t	08.13 睿涵 课后反馈：\n今天讲解了昨天的数学作业。跟睿涵商量好了，下周重新滚动梳理下函数的表达式及图像内容。需要睿涵配个平板，方便课上的沟通，这样也能更好的发现睿涵解题思路和解题习惯，可以开始纠正下不好的解题习惯。
1295	1629180000000	819	t	08.17 睿涵 课后反馈：\n今天讲解了昨天的作业。作业中暴露出了一个问题，就是睿涵的审题需要注意下，有时候会惯性思维觉得题目想求什么，导致解题方向跟题目有很大出入，做提前得自己好好审题下。\n通过画图的方式和看表达式的方式来找range，睿涵今天做的还是不错的，课后作业好好完成下。
1298	1629427200000	820	t	08.20 睿涵 课后反馈：\n今天讲解了the chain rule（链式法则）和切线与法线的表达式书写。\n针对链式法则，睿涵可以理解成套娃式的解题，不过是从外往内一层一层的求微分即可。\n切线和法线都属于直线，表达式：y-y1=m(x-x1)。其中（x1,y1）为定点，m是gradient。其中切线与法线满足垂直，即相乘为定值“-1”。
1040	1627959600000	714	t	【Rebecca】2021年08月03日 周二  糯米经济学 IB 微观知识点精讲课 15\n\n课堂反馈：\n最近状态不错哦！可以改进下学习方法，课下再整理笔记。上课主要还是理解和听。\n\n今天重点：\n1. Aggregate Supply in short run\n\n\n课后任务：\n1.复习今天的笔记。\n2. 完成 Lesson Fifteen Homework，并于周三晚 10 点前提交给我批改。\n3. 做错题报告哦
1042	1628471700000	755	t	Tony  8月9日数学课反馈\n \n内容：圆相交问题，函数图像相交问题复习，单元复习\n表现：Tony的理解能力一直都很好~我们今天进入到比较复杂的问题，但都是在IG内容基础上的提升，Tony对于二次函数实根及图像问题有点忘记了，所以复习了一下，这样才能求解圆相关的题目；以及综合题目中tony要注意读题，通过题目信息把握方向，而且自信些，方向对基本都没有问题；综合计算题中未知数和步骤比较复杂，不要纯靠想，把想法都写出来会比较有方向，课后作业继续攻破综合题型\n \n作业：课本P90 . 4/6, P92. 1/2/6, P93.10
1043	1628477100000	790	t	8月9日 桃子托福口语课反馈\n课堂的重点：讲评模考和托福口语的评分标准/复习 Task 2 的模版\n\n桃子这次的模考中主要有 2 个需要改进的地方，一是熟悉模版，把之前学过的内容复习一遍；二是提升流利度，练习到没有明显的卡壳。那么我们就从 Task 2 开始练起，及时完成作业就好。\n\n作业：\nDay 1 https://shimo.im/docs/xvdd9xpCDkrW6pWt
1044	1628321400000	757	t	8月7日 英语课反馈\n主要内容：\n1、复习假期前两次课的词汇\n2、英语语法：所有格 ’s\n3、数字相关的数学英语概念\n\n表现：Roy上课挺认真的，会积极思考，不懂就问。课后作业也完成了。\n作业已经批改好让她去订正了
1045	1628233200000	718	t	8 月 6日 AWS 助教课反馈\n主要内容：\n讲了 what employers can do to encourage their workers to retrain这篇文章中的一些词汇、概念、写作手法，还有reflection部分的答题思路。\n\n课堂表现：\n孺亦同学课前有预习了文章中的生词，有主动去根据一些词汇的语境来确定单词意思，但有个别词汇没理解准确。\n孺亦同学上课全程很认真，对概念和关键句式的理解都挺快的，也很配合仿写练习。\n最后关于作者是如何论证自己的观点的题目，还要在写的过程中继续捋一捋。
1053	1628472600000	802	t	8月9日 听力阅读模考讲解\n课堂重点：\n1、说明接下去两周阅读和听力的练习安排，需要桃子每天自己完成听力和阅读各一套，并且完成错题分析。\n2、分析昨天模考里的十道错题。\n\n桃子昨天的模考，阅读和听力都遇到了时间不够的问题，导致各有一题没完成，也没有时间检查，可能是因为有段时间没有练了，这个接下去一直练就会更快的。\n另外，桃子听力和阅读都是前半部分比后半部分正确率高很多，可能也跟前面花时间比较多，状态也比较好有关系。\n\n具体的题目分析，我们课上有说，注意听力时要尽量听懂并建立起前后联系，不要因为记笔记影响理解。
1047	1628473500000	312	t	反馈【泽霖】2021年08月09日 周一  中学语法课 Lesson 12\n\n课堂表现：\n泽霖今天状态找回来了，这次作业只错了两题，继续保持哦！\n\n今天重点：\n1. 冒号和破折号。\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
1046	1628235000000	643	t	反馈【泽霖】2021年08月06日 周五  中学语法课 Lesson 11\n\n课堂表现：\n泽霖现在有点倒退了，忘记了好多。要好好复习一下了。\n\n今天重点：\n1. 句子分析\n2. 逗号的使用规则\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
1048	1628478000000	816	t	8月9日 Kevin 阅读课反馈\n\n今天我们讲的是 The Wonder 奇迹男孩这本书，这节课讲到了主角 August 和妈妈一起来到了一家新的学校，在学习里见到了两位老师和几位学生。我们主要围绕一些细节描写来观察老师的主要特点，首先是 Mr. Tushman （Tush 有犬牙的意思）这个老师名字非常容易引人发笑，但是他并不介意同学们笑他，从他跪着跟我说话和把学生的油画作品挂在墙上可以看得出老师是非常尊金并且爱学生的。其次是 Mrs.Garcia，这个老师给人的感受就是有着职业笑容。几个孩子们第一次见到主角都是，shake hands, force a smile and look down ，孩子们虽然礼貌，但是还是会好奇 August 脸上的缺陷。我们会继续阅读，并且慢慢学会从细节来推理每个人物是如何塑造的。
1049	1628478000000	659	t	反馈【Wendy】2021年08月09日 周一  中学语法课 Lesson 17\n\n课堂表现：\n作业持续全对中，非常好！今天开始学从句了，内容会比较细碎，记得整理复习。\n今天重点：\n1. 名词性从句\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
1050	1628476200000	745	t	Steven| 8月9日 写作课反馈\n主要内容：\n1、测试上周的词汇\n2、生词学习\n3、Muscat Festival这篇文章精读\n课堂表现：\n1、今天抽查了10个上周的词汇（一个80个），Steven完全答对4个，对于长一点的单词，拼写的问题比较大。还要多花时间去复习，才能记住。\n2、今天的生词和文章讲解部分比较顺利，Steven挺认真的，尤其后面讲到一些跟国家位置相关的内容时，Steven展示出了很多对地理知识的了解。
1051	1628472600000	462	t	 0809 科学课反馈\n主要内容：\n- 上节课作业讲评 \n- 物质的特性 Part 1\n\n课堂反馈：\n\n地球与四季的作业，Laura完成得一般，所以花了比较长的时间又讲解了一遍。课后，Laura记得按照老师的要求再复习一下“地球与四季”的内容。\n后半节课，我们开始了物质的特性这个话题。可能是刚从假期中回来，所以Laura课上的状态一般，得花一两节课调整一下。\nP.S. 建议Laura可以在科学笔记本上，专门设置一页来记录公式、单位以及单位换算。\n\n作业：\n - Assignment. Propertie of Matter(只做有打勾的题目 2，3，4，8)\n- Reading. Earth Seasons (专注于复习地轴倾斜导致的温度和日照时长变化，以及equinox solstice与season之间的关系)
1052	1628477400000	463	t	0809 科学思维课反馈\n主要内容：\n- 讲评作业\n- System and Causation Level 1\n\n课堂反馈：\n作业讲评部分：Laura 还是会把自变量和因变量还是会混淆起来。之后，我们还会做1~2次与实验设计相关的练习。（P.S. Laura如果有在线下自己做实验，记得要先跟老师沟通，寻求一些意见；同时在实验过程中要记得记录数据）\n\n第二节课上，Laura状态有所恢复，与老师一起完成了几个系统与因果关系的案例分析。\n\n作业：\n- Assignment. System Level 1\n- Assignment. Causation Level 1
1054	1628472600000	208	t	08.09 Simon 课后反馈：\n今天开始用计算器来求解直角三角形中的边和角的关系，通过sin，cos和tan的列式，将两条边和角进行方程绑定。题型有：已知两条边求一个角的大小；或者已知一条边和一个角求另一条边的大小。\n整节课的计算都得通过计算器，Simon课后作作业的时候熟练下计算器的按法。
1055	1628476800000	607	t	08.09 刘行 数学课后反馈：\n今天讲解了函数的综合大题。其中对二次函数比较重要的一种解题方式是：优先把ax²+bx+c=0写成a(x-h)²+k的形式，其中二次函数中的根的数量和二次方程中的解的数量是同一个意思，解题是围绕△的正负性。
1056	1628485200000	565	t	【Eva】2021年08月09日 周一  Pre-AWS 第一季 Lesson 11\n\n课堂表现：\nEva的描述性语言还需要继续加强，现在的每个类别的文章都会设计描述性语言。\n\n今日重点：\n1. Cause-Effect Paragraph\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1057	1628488800000	759	t	8月9日 英语课反馈\n主要内容：\n1、复习单词，讲评上次的作业\n2、with的三种用法，when、because 引导的从句\n3、一些数学表达\n表现：\n心婷前次的单词记得不错，然后错题中有不太懂的地方，会直接说出来，都挺好的，知道自己哪里不会哪里会，是个不错的现象。\n今天新学的内容在造句的时候，很愿意说，虽然有时候会漏掉一些词，但正在慢慢进步。我们课上强调的 be动词，to这些，多用，多错几次，就会啦。\n作业：上面布置了
1058	1628494200000	746	t	Steven|8月9日 作业巩固课反馈\n今天Steven作业一半以上的题目都写得不错，有些题目不太会的，我们刚在课上一起做了一些分析和思路的引导。尤其是单词填空题，我们要学着分析句子缺什么成分。in,on, at这几个介词的使用，Steven在自己写的时候还是有些不确定，我们刚又复习了一下，他就能够自己把错题订正了，这是很不错的。之后再用的时候，都要思考一下，正确地使用。\n\n今天的词汇和短语，Steven把意思都记下来了，很不错。\n\n现在还要再抽时间复习quizlet里面上周的81个词，测试要做到60%以上的正确率，截图到群里。--截止时间：21:00之前。
1059	1628493300000	598	t	刘行】2021年08月09日 周一  Pre-AWS 第一季 Lesson 08\n\n课堂表现：\n刘行吸收知识是很快的，理解能力很好，但是经常忘记，所以要好好复习哦！\n\n今日重点：\n语法：1. 主语的辨识\n写作：1.comparison paragraph\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1060	1628496000000	482	t	 0809 Lucas Pre-IG 科学课反馈\n主要内容：\n - 上一节课的作业\n - 元素周期表\n\n课堂表现：\n上一节课的quizlet和作业都没能完成，我们课上花了些时间复习了“atom”部分的内容。欠的作业记得在周五之前补全。（quizlet需要整理的词汇已经加到反馈最后了）\n\n这节课我们学习了“元素周期表”相关的话题。 整体上Lucas表现还是比较积极的，但是在记笔记没有之前积极了。对于新的概念和只知道中文而不知道相应英文的词，一定要主动记录。\n\n作业：\n\n- 补Assignment. The Atom (第5题和第11题不用写)\n- Assignment. Periodic Table (第6题和第10题不用写)\n\n- 需要整理进quizlet的词汇：\n\nmatter, atom, element, nucleus, John Dalton, J.J. Thomson, Ernest Rutherford, Niels Bohr, James Chadwick, proton, neutron, electron, electron cloud, atomic number, mass number, mass number, isotope. (有人名的词条，写那个人对原子理论的贡献哈)\n\nperiodic table, average atomic mass, unit of atomic mass, metal, nonmetal, metalloid, group, valence electron, period
1289	1628236800000	972	t	08.06 睿涵 课后反馈：\n今天讲解了composite function（复合函数），可以通俗的理解成“套娃”式的解法，从里到外一层一层的代入替换，即可得到对应的复合函数。\n睿涵对复合函数的公式推导做的特别好！就是当题目掺杂些别的知识点进行混合应用时，睿涵就有点不太知道头绪，特别是对△的应用还是比较生疏。得通过习题再多加练习。总体来说，上课状态是非常不错的！
1296	1629266400000	819	t	08.18 睿涵 课后反馈：\n今天开始讲解新章节：Differentiation（微分）。首先先要知道学微分是为了解决不同函数的斜率求解方式。所以求微分=求gradient。而在计算过程中，首先需要把题目写成一个标准的指数形式，再去求导
1063	1628506800000	796	t	8月9日 写作模考讲解\n课堂重点：\n1、重申了综合写作的一些重点和注意事项\n2、讲了昨天写的两篇作文\n\n昨天的独立写作比综合写作写得好一些，综合写作主要是有一些信息的不准确和缺失，另外还要注意逻辑连接词的使用。\n桃子现在的作文基本没有明显的语法错误了，独立写作的结构和例子逻辑也是比较好的。现在我们注意提高用词和句型的质量，可以多模仿，积累一些好的句型，然后套用。这也是评分的比较重要的方面。\n\n作业：TPO 30的两篇作文，明天17:30之前写完。写下面的文档里\nhttps://shimo.im/docs/cC9xXVjHjHr6hhPv
1064	1628506800000	545	t	【子杰】2021年08月09日 周一  AWS 第二季 Lesson 07\n\n课堂表现：\n子杰今天保持的很不错，但是今天网络有点不稳定，有点影响上课。可以把路由器 router 拔了过一会再插上，可以能是过热导致的。\n\n今日重点：\n1. Reasoning\n\n课后任务：\n1.复习今天的笔记。
1065	1628511000000	621	t	【Nina】2021年08月09日 周一  Pre-AWS 第一季 Lesson 18\n\n课堂表现：\n最近 Nina的状态越来越好啦，进步也很快，作文写的一次比一次好！就是语法上要注意些小细节哦！\n\n今日内容：\n1. Classification paragraph\n\n课后任务：\n1.复习今天的笔记。\n2. Lesson 18 HWK。在石墨文档里了。
1066	1628485200000	681	t	Lucy 8月9日 writing class 反馈\n今天我们复习了一下之前讲过的内容，将多个句子结合成一个长句，Lucy 对于简单的句子还是能够做到的，但是稍微长一点的句子会比较的困难。今天复习的重点是简单句，明天我们会重点讲解复合句。
1067	1628488800000	682	t	Lucy 8月9日 writing class 反馈\n今天我们复习了一下之前讲过的内容，将多个句子结合成一个长句，Lucy 对于简单的句子还是能够做到的，但是稍微长一点的句子会比较的困难。今天复习的重点是简单句，明天我们会重点讲解复合句。
1068	1628226000000	681	t	8月6日 Lucy writing class 反馈\n\n今天我们讲的是标点符号的用法，因为Lucy 自己在 writing 的时候很容易会在标点符号上出现错误，所以我们就一起看了一篇标点符号错误的 essay，让 Lucy 寻找其中的错误。 Lucy 自己也能总结出具体哪些地方的标点要注意，非常不错。
1399	1628841600000	1023	t	\n【Rebecca】2021年08月13日 周五  糯米经济学 IB 宏观知识点精讲课 18\n\n课堂反馈：\n宏观的知识点明显增多，因为更加散乱，但是可以按照 Demand side 和 Supplu side 去归类记忆。\n\n今天重点：\n1. Inflation\n\n\n
1069	1628229600000	682	t	8月6日 Lucy writing class 反馈\n\n今天我们讲的是标点符号的用法，因为Lucy 自己在 writing 的时候很容易会在标点符号上出现错误，所以我们就一起看了一篇标点符号错误的 essay，让 Lucy 寻找其中的错误。 Lucy 自己也能总结出具体哪些地方的标点要注意，非常不错。
1062	1628495100000	788	t	08.09 逸然 课后反馈：\n今天讲解了12年和13年的错题。前面的简单题，部分是因为读题错误导致的，属于读题不仔细的情况。后面的难题，逸然在思路上没有问题，不过有一点需要注意下，因为是选择题，所以并不是一定得自己算出答案才算解完，应该更注重答案的格式是如何，特别是针对掺杂几何图的比例问题，常规几何图和圆的区别便是有无“π”，可以针对这一点去排除选项。\n还有就是在写难题的列式时，尽量不要直接先化简列式，先写完正确的式子，再看看是否真需要化简这步骤
1071	1628559000000	597	t	【刘行】2021年08月10日 周二  Pre-AWS 第一季 Lesson 09\n\n课堂表现：\n刘行最近语法有些进步了，但是在自己写作文的时候还是需要注意，尽可能的自查自己的文章哦！\n\n今日重点：\n语法：1. 并列结构\n写作：1.cause-effect paragraph\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1061	1628316000000	751	t	08.07 逸然 课后反馈：\n今天讲解了上节课的做题和12年的部分真题。其中涉及到了一个数学公式。其中A代表三角形面积，abc分别是三角形的三条边，s为半周长（semiperimeter）。对于个别数列问题，逸然需要自己复习下整除性那张表的内容，重新熟悉下2~11的整除性。   海伦公式：A=√s(s-a)(s-b)(s-c)。
1290	1628488800000	742	t	08.09 睿涵 课后反馈：\n今天讲解了inverse function（反函数）。课上让睿涵用纸张感受下了反函数的由来，本质上是将“x”和“y”进行对调。也使得原函数和反函数的domain和range发生了对调：原函数的domain=反函数的range。原函数的range=反函数的domain。要将题目中问关于反函数的问题转换成原函数的问题，这样会方便求解。\n这部分的内容比较难，睿涵课上的转换做得比较生疏，需要多练习下。
1073	1628559000000	744	t	Steven| 8月10日 写作课反馈\n主要内容：\n1、词汇：频率副词\n2、句法：宾语/补充信息\n3、段落结构：主题句、支撑句、总结句\n4、准备完成写作任务：介绍春节\n\n课堂表现：\n今天Steven上课还是挺认真的，积极思考和回答老师的问题。\n昨天的词汇，今天考的时候有一半儿没记住，要好好复习了。
1074	1628564400000	809	t	Michael 8月10日文学课反馈\n \n内容：poetry介绍+赏析\n表现：Michael在课上对于poetry能有基本概念，可以读懂比较直接的描写，但是隐含的意思基本没有办法理解，联想上还欠缺，对于细节的把握能力还不够，抓不住事物的特点，无法自己赏析文本，主要还是听我分析比较多，之后会先培养Michael自己分析的能力，以及能自己准确详细得对事物进行描述
1075	1628563200000	607	t	08.10 刘行 数学课后反馈：\n今天开始讲解新章节：Differentiation（微分）。首先先要知道学微分是为了解决不同函数的斜率求解方式。所以求微分=求gradient。而在计算过程中，首先需要把题目写成一个标准的指数形式，再去求导。\n刘行这部分以前在学IG的时候，掌握的就还是很不错的，今天梳理下公式的由来。明天讲解复合函数的微分求解。
1076	1628564400000	659	t	反馈【Wendy】2021年08月10日 周二  中学语法课 Lesson 18\n\n课堂表现：\n开始进入 Wendy 接触的比较少的从句类别了，提升提升对从句的敏感度，作业正确率就上来啦，加油！\n\n今天重点：\n1. 名词性从句练习\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
1077	1628559000000	462	t	 0810 科学课反馈\n主要内容：\n- 上节课作业讲评 \n- 物质的特性 Part 2\n\n课堂反馈：\n\n昨天的作业里出了一些小问题（单位的使用，科学词汇拼写），订正以后跟今天的作业一起交哈。\n\n今天课上，Laura的状态比昨天好，笔记和讨论都比较积极。“Reactivity”这个概念对于Laura来说还比较抽象，可以结合课上讨论例子（醋加小苏打）以及课后的视频再回顾一下。\n
1078	1628563800000	463	t	0810 科学思维课反馈\n主要内容：\n- 讲评作业\n- Science and Society\n\n课堂反馈：\n从昨天的作业来看， Laura可以比较熟练地去使用流程图来描述特定的系统和过程。“画流程图”是科学笔记里很重要的技能，之后我们会继续练习。\n\n后半段，我们讨论了两个问题 “What does science affect”以及“Who contributes to science”。Laura能够使用一些生活中和课内科学课的例子进行讨论和论证，但还不够完整。课后，记得先完成 “Science and Society”部分的阅读再开始做作业，多积累一些例证。
1079	1628575200000	747	t	Steven|8月10日 作业巩固课反馈\n今天Steven作业写得不错，现在写句子的能力有提高了。\n有一部分题目Steven没看懂，我们上课讲了一下题目后，他就能比较快地判断了。关于句子成分的知识，我们之后还会一直巩固，这样对于阅读理解和写作都会有帮助的。\n\n今天还需要做的是把昨天的词汇和今天记的词汇，汇总到quizlet里面，然后发群里，晚上9点之前完成\n
1081	1628577000000	585	t	\n课后任务：\n1.复习今天的笔记\n2. 完成作业。Lesson 10
1082	1628582400000	590	t	Lucas 8月10日阅读写作课反馈\n \n内容：词汇复习，文章逻辑论述分析， T-chart复习\n表现：lucas上节课的内容基本都忘了，单词只记得两个，没完成的作业今天继续完成；上课状态不错，对于technology的探讨很不错；对于topic sentence&main idea的把握不是很好，文章都能理解，逻辑分析还需加强，段内的逻辑梳理还不够，这些点在自己写作文的时候要注意\n \n作业：完成上次的作文（今天0810交），Tchart+新作文一篇（明天0811交）
1085	1628593200000	796	t	8月10日 桃子托福写作课反馈\n主要内容：\n1、讲解TPO30的两篇作文\n2、讲让步段写作\n\n课堂表现：\n桃子这次的作文应该在21-24 分之间，今天综合写作的模板用得不错。\n桃子上课一直是很认真的，今天我们示范了一些paraphrase，还有使用一些更书面的语言，短语等等去替换口语化的内容。另外写例子的时候，也要注意语言的简洁。\n\n作业：TPO31 的两篇文章，截止时间明早8:30
1083	1619730000000	63	f	
1084	1628593200000	547	t	子杰 | 8月10日 写作助教课反馈\n \n内容： 1. 文章讲解 2. reader response探讨\n表现：今天的文章子杰都能很快跟上，我们重点分析了文章的逻辑思路，有很多论述小技巧，作者在段落和内容编排上都很缜密，希望能把这些tips用到课后作业里；reader response分析也很到位，我们要逐渐开始自己写reader response了哈\n \n作业：一篇建议类文章
1088	1628586000000	202	t	Oath:\n08.10 小C 课后反馈：\n上节课的作业主要体现出了小C对题目变式的不太理解导致的解题方向错误，特别是对分式方程的求解，小C有点遗忘了之前学分式方程的第一步便是去分母的步骤，使得她这次对分式方程的求解给自己增加了不少的难度。\n今天讲解了二次方程的文字题应用，小C的上课状态是非常好的，读了一遍题目就能立马说出正确方程的列式，其次就是要注意一点，不是每道题都能够用十字相乘法噢，别太迷信这种解法，如果不行的话，就得记得用公式法来求解题目。\n
1089	1627981200000	202	t	08.03 小C 课堂反馈：\n上节课的作业反应出了一个情况，小C在对题目进行拆分时，数字的拆分做得很好，但是有时候会出现忘记符号，所以要特别注意符号怎么给，不然会出现答案符号相反的情况。\n今天着重讲解了二次方程的一般通用解法，要学会找出正确的a,b,c。从而代入公式去解题，要增加下公式的熟练度，因为公式不太好记。
1300	1629532800000	706	t	8月21日 菲菲英文课反馈\n课堂内容：《The Horse Snake》简要分析+作业讲评\n\n上次的写作作业是创意性写作，菲菲写的内容很丰富。有一个地方涉及到重建文中的一个动作情节，这里遇到了一些阻力，我们明白了只摘抄一部分原文是很难把事情说清楚的。或许之后要试着用自己的话来描述，会更自然。\n\n作业：\n1. Lesson 5 https://shimo.im/docs/KcP6Kkkq6wXDGytR\n2. 复习wordlywise第三本中自己觉得比较难的单词，下周会检查 3-14 3-15 和之前的错词。\n3. posted 的再后面一个章节。
1090	1628593200000	622	t	【Nina】2021年08月10日 周二  Pre-AWS 第一季 Lesson 19\n\n课堂表现：\n最近 Nina的进步真的很大，今天作文在描述上更进一步了！但是，单词上下的功夫不太够哦！\n\n今日内容：\n1. 作文讲评\n2. 语法讲评\n3. 单词复习\n\n课后任务：\n1.复习今天的笔记。\n2. 因为单词遗忘的比较多，今天的作业是复习之前学过的单词和词组。
1091	1628578800000	718	t	8月10日 AWS助教课反馈\n主要内容：\n1、检查之前学的概念\n2、辨别statements是否arguable\n3、分析一篇影评\n\n表现：\n之前的概念，个别记不清了，不过重要的概念我们之后还会多运用，所以不用太担心。\n今天辨别statement这部分，通过这些讨论和反复推敲，会帮助我们建立对于claim的理解，这对于写作thesis statement 和主题句，还有更进一步的话题展开，都是有帮助的。\n\n今天这篇影评比较长，所以今天有些内容是课上没有细讲的，而且孺亦没来得及预习，所以课后还要花些时间，根据我们课上讲的再去读一读。
1093	1628571600000	681	t	8月10日 Lucy writing class 反馈\n\n今天我们复习的是三大句型当中的复杂句，主要是学习通过 subordinate conjunction（after, before, while, because …）连接多个简单句。Lucy 需要先理解句子之间的关系，比如因果关系，转折关系，并且正确将每个单词按照词性规律放在应该在的位置上。这些知识点能够帮助 Lucy 读懂长句，也能写得出长句。明天我们会继续讲解这一部分内容。
1094	1628575200000	682	t	8月10日 Lucy writing class 反馈\n\n今天我们复习的是三大句型当中的复杂句，主要是学习通过 subordinate conjunction（after, before, while, because …）连接多个简单句。Lucy 需要先理解句子之间的关系，比如因果关系，转折关系，并且正确将每个单词按照词性规律放在应该在的位置上。这些知识点能够帮助 Lucy 读懂长句，也能写得出长句。明天我们会继续讲解这一部分内容。
1095	1628658000000	565	t	【Eva】2021年08月10日 周二  Pre-AWS 第一季 Lesson 12\n\n课堂表现：\nEva现在作文进步了很多了，逻辑变得清晰，描述的能力也有不少的提高。要继续加油哦！\n\n今日重点：\n1. Classification Paragraph\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1096	1628645400000	208	t	08.11 Simon 课后反馈：\n今天讲解了三角函数的进阶3大定理中的2个：分别是面积定理和正弦定理。而进阶定理的三角形并不局限在直角三角形中，而是任意三角形。\n面积定理会结合边和角，记忆方式：找出已知角及其相邻的两条边，即可得出面积大小。\n正弦定理的记忆点是对边和对角成比值。
1097	1628649600000	607	t	08.11 刘行 课后反馈：\n今天讲解了the chain rule（链式法则）和切线与法线的表达式书写。\n针对链式法则，刘行可以理解成套娃式的解题，不过是从外往内一层一层的求微分即可。\n切线和法线都属于直线，表达式：y-y1=m(x-x1)。其中（x1,y1）为定点，m是gradient。其中切线与法线满足垂直，即相乘为定值“-1”。
1098	1628645400000	462	t	 0811 科学课反馈\n主要内容：\n- 上节课作业讲评 \n- Introduction to Atom. Part 1\n\n课堂反馈：\n\n上一节课的作业完成得一般，需要好好订正一下。通过作业，还发现Laura对固液气三态变化知识点的掌握比较生疏，之后的科学课上会补充。\n\n原子这部分的知识比较抽象，Laura吸收的比较慢。因此，今天只讲到了原子以及其中结构的发现过程，明天我们会具体讲具体的原子结构以及相应的属性。\n\n作业：\n - 根据课上讲评内容，订正 Assignment. Propertie of Matter\n - 根据讲义和笔记，制作 Atom Thoery 的发展历程表 （who？when？what？）
1099	1628650200000	463	t	0811 科学思维课反馈\n\n主要内容：\n- 上节课作业讲评\n- Design a Fair Test\n\n课堂反馈：\n\n我们先从“公平竞争”的讨论开始，来了解“fair”这个词在运动和体育中的含义。之后，我们以Laura的课内实验“paper airplane”为案例，分析“fair test”的三个特征（controlling variables, multiple trials, objective measurement）.\n课上，Laura能够积极与老师讨论，并完成笔记。\n\n作业：\n- Assignment. Analyzing and Improving Unfair Situations\n\n\nScience Vocabulary Day 13：matter, atom, John Dalton, J.J. Thomson, Ernest Rutherford, Niels Bohr, James Chadwick, (有人名的词条，写那个人对原子理论的贡献哈)
1100	1628650800000	659	t	反馈【Wendy】2021年08月10日 周二  中学语法课 Lesson 18\n\n课堂表现：\n今天讲的形容词性从句也就是定语从句，规则和我们之前学习形容词和修饰成分的规则很类似。记住用类比法记忆哦！\n今天重点：\n1. 形容词词性从句\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
1101	1628645400000	795	t	8月11日 桃子托福写作课反馈\n主要内容：\n1、讲解TPO32的两篇作文\n2、练习让步段的写作\n课堂表现：\n桃子这次的作文也写得不错，paraphrase方面有进步，综合写作的时态上更统一了，独立写作的第一段也加入了background discussion。\n\n综合写作现在就是一些信息转述的准确性，还有多利用听力中听到的好的词汇短语来提高语言的质量。\n\n独立写作中举的例子现在逻辑上是恰当的，但描述得还不够简洁，所以会占去更多的篇幅，没时间写让步段或者第三个论述段。另外今天有几次应该用名词的地方用了动词，这个问题之后注意自己检查纠正。\n\n作业：TPO33 
1102	1628645400000	666	t	【Rebecca】2021年08月11日 周三  糯米经济学 IB 宏观知识点精讲课 17\n\n课堂反馈：\n开始进入宏观预习的阶段了哦，下次作业要早点交了哈！\n\n今天重点：\n1. Unemployment\n\n\n课后任务：\n1.复习今天的笔记。\n2. 完成 Lesson Seventeen Homework，并于周四下午4 点前提交给我批改。\n3. 做错题报告哦
1104	1628662500000	599	t	【刘行】2021年08月11日 周三  Pre-AWS 第一季 Lesson 10\n\n课堂表现：\n刘行在写作的时候要注意分析一下自己的逻辑，今天的作业出现的逻辑断层比较多哦！\n\n今日重点：\n语法：1. 主谓一致，并列句。\n写作：1.classification paragraph\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1106	1628649600000	840	t	Steven|8月11日 阅读课反馈\n主要内容：\n1、回顾前两个单元的写作要点\n2、学习生词/短语\n3、精读someone's always watching you online这篇文章。\n课堂表现：\n今天Steven上课非常积极，回答问题都用抢答的。我们练习了用reading for main idea 和 making inference这两个技巧来讨论这篇文章，Steven思考得很积极，不懂的地方也会直接地反馈给老师。\n\n另外，虽然让记单词的时候会嘴上抱怨一下，但还是把单词都认真记下来了。\n\n作业：已经完成了
1108	1628661600000	682	t	8月11日 Lucy writing class 反馈\n\nLucy 今天主动说她对之前的 compound sentence 不是很清楚，希望能够再复习一下。于是我们一起做了专项练习，熟悉所有 coordinate conjunction 的用法，我希望 Lucy 下课之后是能够自己再抄写一遍的，有助于帮她复习。今天 Lucy 表现非常棒，自行要求完成所有题目才下课，说明是学会了其中的规律，觉得题目你能够做懂了，继续努力。
1107	1628658000000	681	t	8月11日 Lucy writing class 反馈\n\nLucy 今天主动说她对之前的 compound sentence 不是很清楚，希望能够再复习一下。于是我们一起做了专项练习，熟悉所有 coordinate conjunction 的用法，我希望 Lucy 下课之后是能够自己再抄写一遍的，有助于帮她复习。今天 Lucy 表现非常棒，自行要求完成所有题目才下课，说明是学会了其中的规律，觉得题目你能够做懂了，继续努力。
1109	1628671200000	211	t	08.11 Laura 课后反馈：\n上节课的作业体现出Laura对代数分解不熟练，所以这节课穿插讲解了下代数分解。\nLaura今天的上课状态有点不太好，对基础的代数分解的公因式提炼很模糊，回答的时候也是不是的回答错误，导致整节课讲解了类型题不多。\n以后上课尽量用电脑上课，屏幕会比较大，这样看题就不会出现看不清的情况。同时为了以防上课不小心走神时，老师能够及时发现，还是把摄像头打开下。\n近期趁着还没开学，好好调整下状态，下节课开始我们就要加快进度了。
1110	1628661600000	719	t	8月11日 AWS助教课反馈\n主要内容：\n1、讲三种claim具体指什么\n2、精读felons and the right to vote这篇文章\n\n课堂表现：\n孺亦上课认真依旧，不过这篇文章的内容离我们的生活更远一点，议论的是一个政策的改革，对孺亦来说生词比较多，个别概念需要的解释也多一点。\n在这一篇中，作者是如何organize各种claim的，以及怎么写explanation，举例子等等，都是我们讨论学习的。\n\n注意课后再认真读一下，思考claim相关的问题。
1111	1628667000000	758	t	8月11日 心婷英语课反馈\n主要内容：\n1、人称代词宾格的使用\n2、HCF最大公约数相关的数学英语\n\n课堂表现：\n心婷上课一向很认真，而且现在上课时对于明白的和不明白的，会很明确地给老师反馈，这是很好的现象。及时提问，直到真的搞懂为止。\n\n作业在上面啦
1112	1628676000000	620	t	08.11 Nina 课后反馈：\n今天继续讲解了代数分解：a²-b²=(a+b)(a-b)。这个方程需要Nina对各类平方数熟悉，所以课上列举了1~20的平方数，Nina可以课后自己记下来，是不是看一下，先达到看到任意一个数能立马反应出来是不是平方数即可。\n课上的状态还是很不错的，对这类题型的掌握速度很快，课后需多练习下。
1113	1628668800000	586	t	反馈【Lucas】2021年08月11日 周二 中学语法课 Lesson 11\n\n课堂表现：\nLucas对于学过的知识需要加强记忆，不能单纯依靠看笔记（笔记记得也不全）。要把知识点记到脑子里，不然没法开展下一步学习。\n\n今天重点：\n1. 作业讲评 + 练习\n\n\n课后任务：\n1.复习今天的笔记\n2. 完成作业。Lesson 11
1114	1628667000000	691	t	8月11日 菲菲英文课反馈\n课堂内容：继续分析了文中的细节，尝试用 connect 的方式来理解角色的心理\n\n菲菲在 connect 方面做得很好，因为平时对生活中的观察是很细致的，情绪的体验也很丰富。目前能够很自信的描述发生过的场景，不过在如何准确地描述细节方面，还需要多练习，主动地去调用自己学过的词汇。\n\n作业：\n1. 作业 3 & 作业 4 https://shimo.im/docs/KcP6Kkkq6wXDGytR\n2. posted 的下一章《the gauntlet》记得读完要写一个简洁的 summary\n3. 单词 3-12
1115	1628736300000	790	t	8月12日 桃子托福口语课反馈\n课堂重点：讲评 Task 3 作业+复习 Task 4 模版\n\n上节课的作业桃子做得很好，我们讨论了如何改进一些发音、用词的细节。比如说在原文中讨论的主体是 new technology，我们就不能把它直接称为 something。Task 4 的模版比较简单，接下来主要练习的是每个例子大约讲 20 s。\n\n作业：\n1. Day 3\n2. 模考前记得复习模版和时间分配，做好笔记分区
1116	1628559000000	792	t	8月10日 桃子托福口语课反馈\n课堂重点：讲评作业+讲解 Task 3\n\nTask 2 的作业桃子讲的很流利、清晰，接下来要进行改进的是内容的简洁程度和时间分配。目前在做题的时候，桃子在阅读部分内容记得偏多，然后讲的时候想要一股脑儿讲完，一定要去做主动的总结而不是被动的复述。\n\n
1117	1628731800000	462	t	0812 科学课反馈\n主要内容：\n- 上节课作业讲评 \n- Introduction to Atom. Part 2\n\n课堂反馈：\n昨天的作业中还是出现了科学词汇拼写错误的情况（nutron vs. neutron）。下次作业中，一定要认真检查科学词汇的拼写，不然会开始有小惩罚了。还有就是科学词汇的使用（electron和particle是不一样的两个概念，不能混用）。\n\n今天我们学习了原子话题的后半部分。对质子、中子以及电子的性质做了区分，并学习了如何去描述一个原子（原子数、质量数）。Laura课后记得复习一下讲义，再开始做作业\n
1118	1628736600000	463	t	0812 科学思维课反馈\n\n主要内容：\n- 上节课作业讲评\n- Fair Test Case Study\n\n课堂反馈：\n昨天的案例分析题，Laura完成得不错。能够分辨出每个案例中出现的变量，并根据这些信息给出相应的实验和推理的改进意见。\n\n我们通过“Olympic Swimming suit”这个案例讨论了”公平测试“在现实生活中的应用。\n明天我们会通过一个实验案例来继续讨论”公平测试“这个话题，\n\n
1120	1628667000000	610	t	08.11 刘行 物理课后反馈：\n今天讲解了串并联电路的综合运用。对于综合电路，不管是求解电流还是电压时，都需要先对并联电路进行整合，使整个电路图是一个最简单的串联电路或者基础电路。\n因为像有关power的公式延展比较多，刘行会不太清楚什么时候用哪个公式最简。这里有个小技巧是：涉及到串联电路优先用电流作为解题切入点；并联电路优先用电压作为解题切入点。
1121	1628679600000	548	t	【子杰】2021年08月09日 周一  AWS 第二季 Lesson 07\n\n课堂表现：\n子杰今天保持的很不错，但是今天网络有点不稳定，有点影响上课。可以把路由器 router 拔了过一会再插上，可以能是过热导致的。\n\n今日重点：\n1. Reasoning\n\n课后任务：\n1.复习今天的笔记。
1122	1628731800000	857	t	Tony  8月12日数学课反馈\n \n内容：单元综合题讲解，弧度与弦问题\n表现：作业大部分都做得很好哈，部分题目没思路是没有利用好题目的已知条件，综合题型相对题目的信息很多，要好好分析题目；计算基本没有问题，口算都很快，换元法解方程的时候一定要再换算成x，这个地方没注意到就很可惜；进入新的章节就会有很多图形的综合题，各类三角形/三角函数的知识点有些忘记了哦，我们也通过做题巩固回顾一下\n \n作业：课本相关题目
1123	1628754300000	600	t	【刘行】2021年08月12日 周四  Pre-AWS 第一季 Lesson 11\n\n课堂表现：\n今天的作文是刘行写的最好的一篇，进步非常的大。逻辑清晰，结构完整。但是在语法上还有些小问题，要注意单复数哦！\n\n今日重点：\n语法：1. 名词单复数。\n写作：1.from paragraph to essay\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了
1125	1628753400000	724	t	8月12日  琦岚数学课反馈\n课堂重点内容：Fractions of fractions\n\n今天学习的分数的简化，是对 LCD 的灵活运用，琦岚第一次接触会觉得比较复杂，算多了之后就会适应了。要记得 LCD\n是 the product of prime factors, 在乘法中运用 product 的形式是可以加速运算的。\n\n作业：已布置
1124	1628148600000	724	t	8月5日 琦岚数学课\n课堂重点：讲评作业/分数的除法\n\n现在讲解分数逐渐到琦岚没学过的部分了，所以速度也放慢了点，上课时她都能跟得上。不过在作业中，我注意到有英文文字说明的题琦岚做题正确率都偏低，希望在接下来遇到文字题的时候先自己说一遍题目在问什么，再动笔做。
1126	1628748000000	759	t	8月12日 心婷英语课反馈\n主要内容：\n1、讲昨天的作业\n2、讲数学概念：prime factor，square，square root，cube，cube root，power，root，directed number\n\n课堂表现：\n心婷上课很认真，不懂的地方会立刻提出来，这很棒。\n\n不过今天发现，之前有部分笔记没有记的情况。另外，数学学习是要准备草稿纸的，比如找factor，要动手写一下，才不会出错。\n\n作业：\n1、上面文档的练习题\n2、今天记的单词，每个抄写两遍
1127	1628731800000	795	t	8月12日 桃子托福写作课反馈\n主要内容：\n讲TPO33的两篇作文，讲绝对性题目的破题思路。\n\n课堂表现：\n桃子这篇综合写作写得很不错了，有一个问题是今天还有出现的，就是有一段没有把lecturer的claim写出来。\n独立写作这篇，让步段写得很好，但因为题目比较抽象，所以桃子在解释论点和举例的时候都遇到了一些问题，具体的逻辑问题我们上课有重点梳理。另外关于这类绝对性题目，最简单直接的回答方式就是举出例外情况。可以用这个话题（有人认为，小学生不应该学乐器，你同意吗），复习一下我们上课讲的思路。
1129	1628732700000	312	t	反馈【泽霖】2021年08月12日 周四  中学语法课 Lesson 13\n\n课堂表现：\n泽霖状态越来越好了。我们也进入了语法的最后一个阶段 — 从句类别，继续加油哦！\n\n今天重点：\n1. 省略符号+引号。\n2. 主语从句\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
1133	1628754300000	849	t	Steven|8月12日 作业巩固课反馈\n\n今天Steven的作业是只写了简单的部分，后面催着才写了需要更多思考的部分。然后今天也没怎么复习单词。所以下午检查的时候，快一半儿都没想起来意思。\n\n在写的答案里面，今天我们重点讲了宾语从句缺主语的问题，后面写的时候要想一下这个问题。
1136	1628680200000	624	t	【Nina】2021年08月11日 周三  Pre-AWS 第一季 Lesson 20\n\n课堂表现：\nNina 看来单词还是没有好好复习哦，有好些单词都忘记啦！这些都是写作里很常用的单词，要记牢哦！\n\n今日内容：\n1. From paragraph to essay\n\n课后任务：\n1.复习今天的笔记。\n2. Lesson Twelve HWK
1134	1628736000000	840	t	Steven|8月12日 阅读课反馈\n主要内容：\n1、学习生词\n2、精读 Video games for kids: win or lose?这篇文章\n\n课堂表现：\n今天Steven上课还是挺认真的，我们在读的时候，讨论了各个段落的main ideas，还有details，在需要他回答问题的时候，Steven都挺配合的。另外我还带着Steven仿写了文章中一些重要的句子，分析了一些典型的信息的组织方式。这篇文章讨论的是游戏话题，Steven还是挺感兴趣的，很主动发表意见。\n\n作业：上面已经完成了
1301	1628154000000	976	t	08.05 菲菲 课后反馈：\n今天继续讲解了二次方程的题型，涉及到“十字相乘法”。这里有个小技巧是在拆解数的时候，我们优先考虑数字部分有没有可能符合x的系数，若能符合，再接着考虑符号该怎么给。\n菲菲今天的课堂状态非常好，吸收知识点的能力和反应速度还是一如既往的好。继续保持哈~
1135	1628770200000	621	t	【Nina】2021年08月12日 周四  Pre-AWS 第一季 Lesson 21\n\n课堂表现：\nNina 今天的作业写的不是很好，自己看的这篇文章没有很到位，所以今天带她解析了一下这篇文章。Nina 在单词上要多下点功夫哦，生词比较多也是妨碍文章解析和写作提升的一个坎。加油鸭！\n\n今日内容：\n1. 作业文章的解析\n\n课后任务：\n1.复习今天的笔记。\n2. 背单词次次次次次！
1137	1628766000000	545	t	【子杰】2021年08月12日 周四  AWS 第二季 Lesson 08\n\n课堂表现：\n子杰对于 reasoning 的部分有点薄弱，可以回看一下我们分析过的几篇文章。自己拆解出来他们的reasoning部分在哪，并且是从什么角度下笔写的。\n\n今日重点：\n1. Reasoning\n\n课后任务：\n1.复习今天的笔记。\n2. 去 google了解一下 U.S News 是什么？并且 做一下 critical thinking 思考一下“你觉得这个这个排名是否靠谱”
1139	1628737200000	659	t	反馈【Wendy】2021年08月12日 周四  中学语法课 Lesson 19\n\n课堂表现：\nWendy对于非限定性定语从句的用法，一开始有点模糊，所以作业错的都是这个知识点。现在改过来了，正确率会有所提高，继续加油哦！\n今天重点：\n1. 同位语/非谓语\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
1140	1628818200000	660	t	反馈【Wendy】2021年08月13日 周五  中学语法课 Lesson 20\n\n课堂表现：\nWendy要记住把复习的重点放在记忆引导词上，这是能最快速辨认从句类别的方式哦。\n今天重点：\n1. 时间性状语从句\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
1141	1628744400000	569	t	牧牧:\n【Molly】2021年08月12日 周四  糯米经济学 IB 微观知识点精讲课 07\n\n课堂表现：\nMolly 要习惯用自己的语言去理解和表达知识点，这是IB考试的能力点之一哦！\n\n今天重点：\n1. Tax&Subsidy\n\n课后任务：\n1.复习今天的笔记。\n2. 订正 Lesson Seven + Eight Homework，并于下周一晚上10点前提交。\n
1143	1628821800000	756	t	Tony  8月13日数学课反馈\n \n内容：弧度，扇形相关问题综合练习\n表现：三角函数的公式及相关概念今天都能想起来，很棒~这对于下个章节的学习也有帮助，同时也是复习IG的内容；进入综合圆的问题，需要能一步步分析最底层的问题，找到关键，这个思维通过多做题培养哈；弧度角度相关的问题可以不需要借助计算器，包括二次方程也是尽量自己手算，今天总体很棒\n \n作业：课本习题
1144	1628839800000	691	t	8月13日 菲菲英文课反馈\n课堂的重点：分析科普文的比较结构\n\n这节课发现菲菲在阅读非虚构文章时有个不太好的习惯，在看到文段后会自己“脑补”一些信息，然后去做主观的判断，偏离了文章本身的信息。接下来两周我们会进入非虚构文章的阅读理解，重点练习 Paraphrase 和 Summarize 这两项技能，会对改变这个习惯有帮助。\n\n作业：\n1. Lesson 3 https://shimo.im/docs/KcP6Kkkq6wXDGytR\n2. 单词 3-13 + 准备周一的单词测试\n3. 阅读下面这篇文章
1128	1628818200000	795	t	8月13日 桃子托福写作课反馈\n主要内容：\n讲TPO34的两篇作文\n\n课堂表现：\n针对桃子写的这两篇作文，我们今天讨论了比较多语法问题和功能句的问题。\n\n语法问题包括 介词短语不能作主语、主语是动名词时动词应该是单数、wether，such as，due to, because of, even, even though 等等的用法。另外有一些句子成分有多余或缺失的情况。如果桃子对于这些用法确实还不确定，那现在发现了也好，及时搞清楚。如果是因为写得太急了，之后看看找一个更完整独立的时间段来，安心写作文，避免这种失误。\n\n\n另外今天再分析了怎样的主题句质量更高的问题，还有这类题目怎么审题的问题。\n\n在写明天要讲的作文之前，把今天讲的这些复习一下哈。
1146	1628812800000	845	t	8月13日 心婷英语课反馈\n主要内容：\n1、数学概念：round off, decimal, significant figure,expression, algebra, given，substitution 等等。\n2、英语语法：主语和动词的数保持一致\n\n课堂表现：\nRoy 今天很棒，达成了8点准时上课的成就。\n数学的部分，英语概念讲得比较多，需要很多很多的复习，确定把单词意思背下来。\n今天讲英语的时候，Roy 可能开始有点困了，理解得很慢。\n\n作业的问题注意一下，每天记得要群里认真查看，如果没看到，就问老师，老师不会不留作业的。\n\n今天的作业：完成昨天的那个作业文档
1148	1628830800000	681	t	\N
1149	1628834400000	682	t	Lucy 8月13日 writing 反馈\n\n今天我们继续讲连词部分，这两天讲连词发现 Lucy 最大的问题可能是逻辑上的练习太少了，经常不是很能理解连词前后句子之间的关系，比如一个人从椅子上摔下去，他没有受伤，Lucy 觉得应该用 so 来连接。这些逻辑上的问题之前 Lucy 可能没有接触过很多，或者说练的太少，导致她会觉得烧脑，但是我觉得我们还是得练习这些题目，就是这几天会比较累，周末带她去放松下吧。
1150	1628822400000	840	t	Steven|8月13日 写作课反馈\n主要内容：\n1、学习怎么表达自己的观点，还有不同的连词怎么用\n2、学习写topic sentence\n3、分析advantages，disadvantages, 完成本单元的写作任务\n\n课堂表现：\nSteven 上课状态good，今天遇到了网络不太稳定的问题，有时候他回答问题老师听不清，老师让他重复说，或者更靠近电脑说之类的，他都能配合。学了新的东西，他也愿意思考和配合练习。\n\n作业：已经完成了
1177	1629078300000	312	t	\n反馈【泽霖】2021年08月16日 周一  中学语法课 Lesson 14\n\n课堂表现：\n泽霖这次的作业完成的还不错，但是对于主语从句的判断还需要加强。\n\n今天重点：\n1. 宾语从句\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。\n
1151	1628906400000	698	t	08.14 菲菲 课后反馈：\n今天讲解了两个新知识点：1.the factorial function（阶乘），是将数依次降低到1的乘积写成“！”。其中0！=1，这个特例需要特别记住下。2.permutation（排列），排列是指对所选取的对象们进行有顺序的排列，若所选对象其中无重复的，即可以看成每个对象都是独一无二的，则可以一视同仁的进行填坑排序即可。若所选对象中有个别是出现重复的情况，解题时可以先自行给重复的数据进行“小作弊”，把重复的部分用小角标进行区分，之后解题时可以近似看成无重复，最后再除以重复个数的阶乘即可。
1152	1628822400000	607	t	08.13 刘行 课后反馈：\n今天复习了下微积分的基础习题。这节课是让刘行课上来讲解题目，表现得很不错，解题思路还是比较清晰的。不过从她的解题习惯中，发现了1个问题：1.刘行不太清楚括号什么时候需要化简展开，什么时候不需要，导致了她解题过程会过于复杂。而解决这点问题，需要知道当分子或者分母，等式左边或者右边，如果x是被整合了，则不需要急着把括号展开，如果x本身就是分散的，而且需要继续往下运算时，就需要去掉括号，将x进行整合。
1393	1629772200000	676	t	【Lora】2021年08月24日 周二  糯米经济学 IB 宏观知识点精讲课 08\n\n课堂表现：\nLora在复习的时候好多尝试串联学过的知识—— 思考一下现在学的知识和之前的知识点的关联，这样才能在答题的时候保持思路的完整和清晰。\n\n今天重点：\n1. 作业讲评\n\n课后任务：\n1. 完成作业
1153	1628736000000	607	t	08.12 刘行 课后反馈：\n今天讲解了二阶求导和函数的乘除法求导公式。\n二次求导可以理解成套娃式的求导，在一阶导数的基础上进行再一次求导，这部分题型中的简单题，刘行在课上完成的不错。不过对于比较复杂的式子，就算得比较慢，尤其是需要运用乘除法的公式，需自己课后多练练。
1155	1628938800000	796	t	8月14日，桃子托福写作课反馈\n\n今天也是综合写作比较不错，桃桃的表达能力是没问题的。不过今天独立写作的两个论述段逻辑不是特别清楚，所以两段看起来有点相似。我们先过了一些语法、句法的问题，然后重点讲了这两个段落怎么写，包括段落的结构，具体的主题句、解释、举例、结尾。\n\n之后在写的时候，思路要清晰，每句话都有特定的作用，主题句要直接清晰地对应文章论点，结尾句要收回来。而且要考虑unity，所有与段落话题无关的信息都不写。
1156	1628910000000	804	t	8月14日，桃子托福阅读听力讲解反馈\n\n桃子这周的练习比较密集，做题情况有些起伏，今天主要讲了听力部分，针对错题分析出最常错的题型是细节题，时有没听到或者没法正确联系例子和论点的情况。今天我们又梳理了一些听力练习的要点，包括其他题型的。再做几套看下，如果需要分题型练习，我到时候跟桃子说。\n\n阅读的一些词汇题错误，有直观地反映出来桃子词汇还有些不够，这其实也有影响听力的理解，另外做题时间的把握还要继续提升。\n\n作业就是下周继续练，错误原因的分析要记得写，这样才练得更有效
1157	1628834400000	675	t	【Lora】2021年08月13日 周五  糯米经济学 IB 宏观知识点精讲课 03\n\n课堂表现：\nLora 要注意在学知识点的时候把每个知识点想象成题目，并且训练自己编织答案思路的能力哦！\n今天重点：\n1. EQ in short and long run\n\n课后任务：\n1. 完成作业
1159	1629090000000	842	t	8月16日 Steven 阅读课反馈\n主要内容：\n1、复习上周的一些词，学习新词和短语\n2、阅读 extreme weather 这篇文章\n\n表现：今天Steven上课还是很认真的，在讨论环节，能够比较快地给出一些想法，虽然不会说很多，但答案跟问题都比较相符。文章没有很难，读起来很顺利，在关于main idea 和 detail相关的问题时，也很有效率。\n\n作业：已经完成了
1162	1628920800000	826	t	08.14 Michael 课后反馈：\n今天讲解坐标系及斜率（gradient or slope）。其中坐标系中的坐标由来，可以看成从o点出发进行挪动，挪动规则是只能上下左右的方式挪动。且定义向右为“+”；向左为“-”；向上为“+”；向下为“-”。\n斜率的公式：gradient= vertical step/horizontal step。而vertical step和horizontal step的数字及符号和坐标系中坐标的挪动规则一致。特别注意两条特殊线：horizontal line的斜率为“0”；vertical line 的斜率为“undefined”。
1165	1628938800000	548	t	子杰 | 8月14日 写作助教课反馈\n \n内容： thesis&topic sentence训练，google evidence演示\n表现：子杰今天都想尝试counterargument thesis，但是对于concession能写什么没有什么方向哈，有点乱，所以多花了些时间，探讨之后写的thesis很好，点抓得比较细，但是topic sentences就变得比较难想，不过子杰最后也能写得不错，很棒~\n \n作业：thesis&topic sentences两题，另一题google一下evidence
1167	1628906400000	855	t	8月14日 Edward 英文课反馈\n课堂内容：《Greek Myths》第七章\n\n距离上一次上课的时间比较久了，Edward 同学有点不适应，上课的前半段时讲英文有点拘谨，后半节课的表现比较好。这节课还尝试了以剧情表格的形式总结了内容，接下来要多训练总结句子的能力。\n\n作业：\n1. 写单词：\ncommotion 骚动\nmodel 模型\naimlessly 没有目标地\nthreat 威胁\ndreadful 可怕的\ncourage 勇气\ntemper 脾气\nguilt 内疚
1168	1628853000000	625	t	【Nina】2021年08月13日 周五  Pre-AWS 第一季 Lesson 22\n\n课堂表现：\nNina 在第一季的学习过程中文章已经有了很大的进步啦。今天是 Pre-AWS第一季的最后一节课啦，今天的作业也是一个 Final Exam。 在下笔之前先去复习一下段落要点以及积累的单词词组哦！\n\n今日重点：\n1.Introductory Paragraph\n\n课后任务：\n1.复习今天的笔记。\n2. 完成Final Exam。在石墨文档里了。
1160	1628834400000	850	t	Steven|8月13日 作业巩固课反馈\n今天两大道课后题，其中一道，Steven写全对了，但另一道，因为没认真读题，就没写对。\n因为上午信号不太好，耽误了一些进度，下午我们多上了一些时间，带着Steven把写作任务完成。虽然他经常说我不知道，我不会，但一点一点引导着，还是能把我们学过的东西用起来，包括词汇、句型，等等。正在一点一点进步中，很棒。\n\n今天还需要把单词输入到quizlet里面去，之后这个部分，要自己检查，确保输入的内容是对的。如果输错，老师检查到了，就要抄写输错的单词，每个5遍。
1130	1628818200000	208	t	08.13 Simon 课后反馈：\n今天讲解了余弦定理。因为公式比较复杂，课上也证明过，是根据勾股定理的思路出发进行证明。Simon对图形的辅助线构建比较陌生，这点可以在之后的几何部分，系统性的学下如何做出恰当的辅助线。\n暑假的课程知识点内容，到三角函数就先暂停下，从下周开始，我们系统性的复习和学会如何应用这些知识点。
1161	1628926200000	758	t	8月14日 心婷英语课反馈\n主要内容：\n1、英语语法：主语和动词的数保持一致\n2、复习前几次的数学概念\n\n今天的主谓一致问题是重新讲，上次时间不够，心婷也比较困，今天在前半节课讲，理解和吸收得比较好。对于主语是单数还是复数，动词的单数复数分别是什么，都弄懂了。很棒\n\n作业：\n1、上面文件的练习题\n2、抄写最近三节课的单词，每个2遍（抄好了拍照来检查）
1164	1628737200000	809	t	Michael 8月11日文学课反馈\n \n内容：poetry赏析\n表现：今天课上发现Michael现在还没有办法能够完整赏析诗歌，对Michael来说有一定难度，联想上比较欠缺，今天课程通过探讨beauty & mystery加强Michael对细节的关注和阐述，之后对于可以再具象的词汇在课上我们会多做讨论，然后再放到诗歌的背景进行联想分析，并结合主题意义进行探讨，加油哦🏻课后把作业修改一下哦
1166	1628852400000	547	t	子杰 8月13日写作助教课反馈\n \n内容：题目探讨+thesis练习\n表现：子杰文章内容上写得都还可以，递进可以加强，以及句式词汇可以再多样哈~昨天练习了不同的thesis和topic sentence，尝试写出了counterargument thesis很棒，内容写太详细了哈，要注意对应前文可能存在的问题，topic sentence讨论后写得都不错\n\n作业：把suggestion文章再修改一下，然后gun control 第二个thesis和topic sentence写掉
1169	1628848800000	620	t	08.13 Nina 课后反馈：\n今天讲解了(a+b)²=a²+2ab+b²，及十字相乘法的配对。Nina课上对这两种类型的题解答的都不错，不过要注意下符号问题，因为平方数是有两种选择，比如4，可以是2²，也可以是(-2)²，许自己判断下哪个适用本题。\n课上也抽查了下平方数的表，发现Nina有点生疏，反应时间有点长，课后自己多花些时间读一读，或者可以抄几遍加深下印象。
1171	1628575200000	890	t	0810 科学课反馈\n主要内容：\n- Motion and Motion Graph\n\n课堂反馈：\n我们先通过quizlet回顾了之前的科学课内容，Michael已经遗忘了很多，有空的时候要记得复习。之后，我们开始了Year9科学内容的预习。整体上，Michael表现积极，能够配合老师运动图表绘制和计算。“Vector”和“Accleration“这两个科学概念对Michael来说比较难理解。要记住这两个量不仅仅有大小，也有方向。
1172	1628748000000	892	t	 0812 科学课反馈\n主要内容：\n- 讲评上节课作业\n- Forces and Newton's Law of Motion\n\n课堂反馈：\n从上节课的作业来看，Michael还需要注意：1）区分position和reference point； 2）有图表的题目，要细心观察。作业最好能提前完成，这样遇到难题才有时间可以问老师。\nQuizlet学习集也不能偷工减料，上节课布置了12个词，但是学习集里只有9个词。\n\n今天我们学习了与力相关的基础概念。在讨论例子和题目的时候，Michael的整体思路还是很清晰的。\n\n牛顿的三大运动定律比较抽象，记得通过课后视频再复习一下。
1170	1628910000000	832	t	\n@土豆 0814 科学课反馈\n主要内容：\n- 讲评上节课作业\n- Magnetism\n\n课堂反馈：\n上节课的作业，Michael 整体完成得还不错。不过，有两个需要注意的地方：1. 对于Net force的计算方法需要写得具体些；2. 注意牛顿第二定理的使用（F=ma），每个参数代表什么以及如何变换这个公式。\n\n我们今天学习了磁学相关的基础知识。Michael能够顺利地理解大部分的磁学概念。地球产生磁场的原因以及极光的形成，这两个知识点设计的细节比较多，Michael课后还需要根据视频和讲义复习再完成作业。\n\n作业：\n - Assignment. Magnetism （截至周一晚上8点）\n - 完成本节课quizlet的制作\nQuizlet词汇列表：magnet, magnetic forces, magnetic pole, magnetic field, ferromagnet, electromagnet, temporary magnet, Earth Magnetic Poles, formation of aurora\n
1173	1629081900000	775	t	8月16日 冠宇生物课反馈\n课堂重点：介绍 IG 生物考试和学习生命的特征\n\n冠宇对生物研究的问题是很好奇的，在介绍 IG 生物的时候问了我很多相关的问题，例如说人为什么会有缩手反射，什么是生殖隔离等。不过根据他的描述，过去一年在生物课上学习的内容还比较少，学习效果也不是很好。如果之后要选修生物的话，要自己多花些功夫了。\n\n作业：已布置
1174	1629081900000	801	t	桃子|8月16日 听力阅读模考讲解反馈\n这次模考桃子听力错了 7 道题，阅读错了4道，我们就主要讲了听力部分。从最近练习听力的情况来看，桃子对于理解lecture并搭建知识图谱还是有点困难。这部分要全对的话，要理解各个point之间是如何衔接的，以及每个例子是什么作用。不用听懂每个词和短语，但大致意思，尤其是逻辑推进，一定要听懂。桃子有时候还不能把例子和主要意思联系起来。\n\n这周听力就重点练习难一点的lecture，习惯这个程度的理解，尝试突破瓶颈。\n\n作业：听力，上面五篇；阅读 TPO27
1175	1629082800000	900	t	8月16日 Kevin 阅读反馈\n\n\n今天我们继续讲 The Wonder， 奇迹男孩，今天的主要内容是通过 context 中的细节对人物性格进行分析，我们读了 August 和 3 位同学在学校参观时的描写，其中描写的比较多的是 Julian，各种细节看的出他喜欢嘲笑或者挖苦主角 August。Kevin 上课的时候能够主动记下单词，但是有时候可能会稍微有些走神。下课以后要记得复习下单词，下周我们测试。测试的内容包括单词和一些阅读理解题。
1178	1629077400000	880	t	冠宇 | 8月16日 物理课反馈\n \n内容： 1.IG物理介绍 2. 单位换算 3. 测量仪器介绍\n表现：冠宇对于物理有基本概念，也都能跟上，不过之前没怎么听物理课也不太喜欢物理，所以听得比较累，我们这三节课内容都比较简单，也通过介绍一些生活中的物理现象让冠宇知道物理是什么，今天主要就是记住单位换算哈，这些是比较基本的工具\n \n作业：单位换算，仪器读数
1179	1629082800000	602	t	【刘行】2021年08月16日 周一  中学语法课 Lesson 01\n\n课堂表现：\n刘行在之前写作课里面已经提高了对主语和谓语的判断力，所以现在学习会轻松一些。继续加油哦！\n\n今日重点：\n1.名词\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1180	1629082200000	750	t	0816 科学思维课反馈\n\n主要内容：\n- 上节课作业讲评\n- Introduction to Hypothesis\n\n课堂反馈：\n\n周末Laura在制作模型的过程中，遇到了一些问题导致实验没有完成。下一次，一定要及时与老师沟通，以及仔细阅读实验材料。同时，因为软件问题，周末的实验作业在Laura ipad里只显示了一页。之后，我会标明每份作业包括几页，Laura也要仔细确认。实验的剩余部分，今天记得补完。\n\n今天我们开始了科学假设的学习。这部分内容，Laura在课内有接触过，上手比较快，对基础概念比较熟悉。课上对案例和例题的讨论， Laura也表现的得比较积极。之后做作业的时候，希望Laura能保持讨论时候的状态，详细地做出回答，避免出现之前“回答太过简短”的情况。\n\n\n作业：\n- Assignment. Constructing A Hypothesis (一面)\n- 继续完成 Worksheet. Straw Flyer Trails 的内容 （一共有三面）\n\nScience Vocabulary Day 16：physical change, chemical change,  compound, pure substance, mixture ,heterogeneous mixture , homogeneous mixture, hypothesis
1181	1629077400000	749	t	 0816 科学课反馈\n主要内容：\n- 上节课作业讲评 \n- Pure Substance and Mixture\n\n课堂反馈：\n作业方面，Laura还是在读题和使用科学词汇上遇到了问题。课上，我们进行了针对性的讲解。希望下一次，Laura在完成简答题的时候，能使用我们学习过的科学词汇来表述，避免口语话的表达。\n\n我们今天学习了纯净物和混合物的基本概念。这部分对Laura来说比较抽象，课后记得复习一下讲义，特别是对“homogeneous mixture”和“heterogeneous mixture”的区分。\n\n\n作业：\n - Assignment. Pure Substance and Mixture (一面)
1182	1628823000000	463	t	\N
1201	1629163800000	771	t	冠宇 | 8月17日 物理课反馈\n \n内容： 1.物理性质介绍 2. 密度相关生活现象及实验 3.时间测量\n表现：今天冠宇课堂表现还不错，能联想起之前物理课的相关公式，也能联系生活中的物理现象，主动提出了很多生活中的问题，也一起探讨了如何用物理思维解决生活中的问题；冠宇都能理解，但是如果是实验角度的话会不够细心，对实验的细心还需慢慢培养哈，以及对于单位要敏感些\n \n作业：单位换算，密度相关题目
1183	1628818200000	462	t	 0813 科学课反馈\n主要内容：\n- 上节课作业讲评 \n- Introduction to Periodic Table\n\n课堂反馈：\n从上节课的作业完成来看，Laura对原子学说发展过程中的主要理论还不够熟悉。在完成“比较”题的时候，一定要先复习相应的信息（比如这回作业的 J.J.Thomson Model与current atomic model）再进行作答，以免混淆信息。同时，读题和回答的时候，还是有点粗心（比如：没能正确计算原子的质量数、回答原子核在原子中的位置）。这些都是基础的计算和概念，做错了真的很可惜。\n\n今天我们完成了元素周期表的基础学习。 Laura学会了元素周期表的基本结构以及如何去读其中每个元素的基本信息。\n\n作业：\n - Assignment. Introduction to Periodic Table
1184	1629093600000	793	t	8月16日 桃子口语课反馈\n课堂重点：讲评考试+独立口语训练\n\n这次的模考口语进步挺大的，模版基本上是练熟了，所以讲的比较流利，明显卡壳的部分很少。目前还要提升的部分是 Task 2 的清晰度，和口语发音的清晰度，以及语料的丰富程度。接下来的几节课我们就以课堂的口语车轮战为主，在限时训练中不断改进。
1186	1629096300000	846	t	8月16日 心婷英语课\n主要内容：\n1、语法，用一般现在时描述习惯\n2、复习数学课上学的单词\n\n今天Roy也是很认真上课的，一般现在时表示习惯这个知识理解得不错，而且正在适应主谓一致的应用。\n最近学的单词不少，需要好好记一下，课后也要多读。\n\n作业：习题和读单词
1188	1629077400000	616	t	08.16 刘行 物理课后反馈：\n今天讲解了上节课的选择题错题，其中提到一个新的电路元件滑动变阻器（variable resistor），有4个接线柱，正确解法是一上一下，有效部分是靠近下接线柱的部分是有效电阻。\n串联电路的分压问题还需要再强调一遍，电阻的比值＝电压的比值（成正比关系）。\n并联电路的分流问题：电阻的比值=电流的倒数比（成反比关系）
1189	1629093600000	609	t	08.16 刘行 数学课后反馈：\n今天讲解了求导的实际应用：找stationary point。需满足2个条件：1.y'=0；2.该点左右的y'相反（即一边＞0，一边＜0）。\n找Maximum point（极大值点） 和Minimum point（极小值点）。第一种方法：需满足2个条件：1. y'=0；2.左边y'＞0，右边y'＜0，即为极大值点，反之则为极小值点。\n第二种方法：找到y'=0的点，再找出y''，然后进行赋值，若y''＞0，则为极大值点；反之则为极小值点。（通过最简单的函数：y=x²进行记忆，y'=0，y''=2＞0）
1187	1628834400000	615	t	08.13 刘行 物理课后反馈：\n今天通过选择题来复习下电路图的题型。其中关于电阻的变换要记住：串联电路的总阻值＞任何一个单一电阻；并联电路的总阻值＜任何一个单一电阻。这点可以在做选择题时快速排除选项。\n对于电压的分配，串联电路中R越大，分配到的V就越多；并联电路中的R越大，则分配到的I越小。
1193	1629102600000	798	t	8月16日 桃子写作课反馈\n课堂重点：讲评模考作文\n这次的两篇作文都不错，没有大问题，字数也很够。今天主要讲了一些小问题，在综合写作中，听力部分的细节要写得比阅读部分多一点。然后 and 前后的内容，确定要是相同的成分或者词性才能并列。另外在写this，these，the 这种有所指的内容时，要确定前面有说过了，指代时清晰的不会造成obscurity。\n明天看看，独立写作没什么问题的话，接下去重点练习独立写作。\n下午还一起练了一篇比较难的lecture听力，边听边分析内容是怎么构建起来的。\n\n写作作业：TPO 36
1195	1629111600000	545	t	【子杰】2021年08月16日 周一  AWS 第二季 Lesson 09\n\n课堂表现：\n子杰今天的状态很好，课下的任务也完成的很棒！记得之后写作的时候去整理归纳自己的logical chain，然后结合research去做proof reading。\n\n今日重点：\n1. Logical Fallacies\n\n课后任务：\n1.复习今天的笔记。
1196	1629167400000	608	t	08.17 刘行 课后反馈：\n今天讲解了微分的最值应用题的计算。解题格式：1.求先出y'=0时对应的x是多少（并加以判断有没有不合适的x，进行舍弃）。2.通过y''去明确这点事max还是min。\n课上的题目难度不大，主要是在求y'时的运算量会比较大，这部分的计算要仔细点，顺便加强下二次方程的运算。
1197	1629168600000	750	t	0817 科学思维课反馈\n\n主要内容：\n- 上节课作业讲评\n- Writing A Procedure\n\n课堂反馈：\n根据Laura完成的课后实验，我们复习了“公平测试”的三大要素（controlling variable，multiple trials，objective measurement），并讨论了这些要素是如何体现在Laura的实验里的。讨论的时候，Laura还是稍显生疏，需要通过最后的一个实验再加强一下。\n\n我们今天讲到如何写步骤，这也是Laura课内老师觉得需要加强的地方。我们用“制作花生酱三明治”的例子来讨论如何去写一个详细的步骤。\n\n作业：\n- Assignment. Writing A Procedure (一面)\n- 完成“Straw Flyer Trials”的实验步骤（自己创建一个文档写哈）\n\nScience Vocabulary Day 17：solid, liquid, gas, solution, solvent, solute, concentration, dilute solution, concentrated solution, saturated solution, supersaturated solution, solubility, 
1198	1629163800000	749	t	@Petrichor 0817 科学课反馈\n主要内容：\n- Solution\n\n课堂反馈：\n上节课的作业记得今天补完哈。\n\n今天我们学习了与溶液相关的基础知识点。这节课，我们有更多的生活中的例子可以使用，Laura的学习状态也更好。同时，我们使用了网络化学实验室，来讲解了浓度变化以及温度变化对固体溶解度的影响。Laura还是挺喜欢这一类型的学习工具的，之后可以尝试自己去使用。\n\n这节课上学习的图表也比较多，Laura在这方面还不够熟练，需要多练习。\n\n作业：\n - Assignment. Solubility (一面)\n - 补 Assignment. Pure Substance and Mixture
1199	1629168300000	883	t	冠宇 8月17日 化学课反馈\n\n内容：物质的三种形态转变及其分子结构，熔沸点，扩散现象\n表现：冠宇上课的时候能够回忆起很多之前学过的化学知识，同时也非常有好奇心，问了很多自己好奇的问题。我们今天讲的内容比较多，但是冠宇的理解能力还是比较强的，很快就能够理解这些知识点。目前的问题是冠宇不大喜欢记笔记，需要慢慢培养记笔记的习惯。\n\n作业：相关练习题
1200	1629163800000	872	t	反馈【Wendy】2021年08月17日 周二  中学语法课 Lesson 21\n\n课堂表现：\nWendy的语法已经全部学完了，现在题目的正确率也越来越高了！\n\n今天重点：\n1.状语从句全类别\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。
1392	1629889200000	980	t	【Sherry】2021年08月25日 周三  糯米经济学 IB 微观知识点精讲课 07\n\n课堂表现：\nSherry 今天的吸收程度很好，思路的活跃度也很高！继续加油哦！做作业的时候要在细致一点，避免计算错误。\n今天重点：\n1. XED YED PES\n2. 政府介入市场的手段\n\n课后任务：\n1. 完成当堂的讲义部分\n2. 完成 Lesson Six HWK
1202	1629169200000	810	t	Michael 8月17日文学课反馈\n \n内容：devices分析\n表现：今天随堂提问了上节课的devices，Michael有点忘了，结合今天课程新的文学手法一起课后要复习一下哦，然后尝试用自己的话解释一下这些手法的作用或者意义，写在文档里哈~课上Michael基本能理解，并且也能自己尝试用device分析，注意分析过程中不要忘了theme以及对于语法理解还不够\n \n作业：文档里相关device解释
1203	1629168300000	791	t	8月17日 桃子口语课反馈\n课堂重点：口语车轮战独立+Task 2\n\n这节课桃子表现的很好，基本上能很淡定地回答完第一遍。我们总结了以下可以改进的地方：\n\n1. 独立口语选择讲细节/还是讲例子是要看好时间。长例子至少要留 25 s 左右。\n2. 独立口语讲得更自信，即使当时讲的内容自己觉得不完美。\n3. Task 2 的阅读要灵活更改模版，控制在 20 s 内总结完。\n4. Task 2 的听力部分要少用代词，把讨论的对象的具体名称说出来，例如 the man / the project
1204	1629185400000	603	t	【刘行】2021年08月17日 周二  中学语法课 Lesson 02\n\n课堂表现：\n刘行对于固定搭配会比较薄弱，我们现在会加强这方面的训练。\n\n今日重点：\n1.动词\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1205	1629167400000	841	t	8月17日 阅读课反馈\n主要内容：\n1、检查昨天的单词，学习新单词\n2、精读文章surviving the sea of sand\n3、分析重点句子，仿写\n\n表现：\nSteven上课表现很好，复习时发现昨天的词汇、短语意思都记住了，读文章时理解比较快，在练习写句子时，很会利用例句，if，when，but 这样的句子都能模仿，而且句子的内容都是Steven主动想出来的。细节的语法，还要继续积累，老师指出来重点讲的地方，注意纠正。\n\n作业：已完成
1208	1629180000000	797	t	8月17日 桃子写作课反馈\n主要内容：\n讲评两篇作文。\n\n这次综合写作也写得挺好，个别细节可以更具体和准确。\n独立写作的论述段，今天也有一些逻辑不清晰的问题，还有两段有部分观点重复。我们重新捋了两段的结构：主题句，解释，例子，结尾，分别怎么写。\n\n后面在课后我们又花了一点时间，是讨论了今天作业的两个题目，审题以及写论点，论述段的思路等等。\n\n作业：重写今天的独立写作，和另一篇独立写作
1209	1629186300000	824	t	08.17 Michael 课后反馈：\n今天讲解了直线的表达式：y=mx+c，其中m代表gradient，c代表y-intercept。通过表达式画图的步骤是：1.先找出c是多少，在图上先画出一个点（这个点便是这条直线上的一个定点）。2.再通过m找到点的移动规则，从而找到第二个点的位置。两个点即可以确定直线的图像。
1211	1629190800000	202	t	08.17 小C 课后反馈：\n今天开始讲解Trigonometry（三角函数）。对于不同角，边的命名方式会有些变化，所以要特别注意每个角所对应的3条边的名称，特别是opposite和adjacent，懂得先确定哪条直角边是opposite，则另一条直角边便是adjacent。\n引入了sin，cos，tan这3个三角函数值，要记住三角函数值其实就是ratio的一种类型。
1212	1629195000000	867	t	08.17 Nina 课后反馈：\n上节课的作业中错题类型主要集中提取“-”的时候，忘记每个数都得改变下符号。导致整合后的（）²里的符号出现了错误。\n今天讲解了最后一种代数分解。Nina上课的掌握速度还是很不错的。下节课会做章节的复习，有时间可以看看之前的每种类型题的解法。
1214	1629183600000	718	t	8月17日 AWS助教课\n主要内容：\n1、介绍thesis statement的三种类型\n2、审一道作文题\n\n课堂表现：\n孺亦同学上课表现很好，在各个环节，都能确认听懂并举例，如果有疑问会立刻提出来。\n\n现在写三种claim还不是特别得心应手，尤其是在有字数要求的情况下，但看得出来在文字表达方面最近又有进步。\n\n继续加油
1219	1629250200000	888	t	【Eva】2021年08月18日 周三  Pre-AWS 第一季 Lesson 14\n\n课堂表现：\nEva今天作业没做完哦，所以课上一起解读了作业里的文章。测单词的时候发现，Eva 在单词上下的功夫还不够，好好好复习单词！\n\n今日重点：\n1. From Paragraph to Essay\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了
1213	1628838000000	718	t	8月13日 AWS助教课反馈\n主要内容：\n1、练习分辨3种claims，并写一段argument of policy\n2、用design thinking的方式，去分析解决一个设计问题\n\n课堂表现：\n大多数claim，孺亦都能分析得不错；个别 claim of policy 孺亦还不太看得出来，因为没有明说要解决的problem，需要读懂暗示的意思。在我们讨论的过程中，发现以前对于很多statement我们可能不会去challenge，或者认为它debatable，通过最近的学习，critical thinking的意识和能力都能明显提高。\n\ndesign thinking这部分，总的来看，一方面要考虑使用者（可能是多个）方便，一方面要考虑品牌特征明显，还需要根据课上讨论的具体的几个方面去一一改进原有方案。
1215	1628920800000	719	t	8月14日 AWS助教课反馈\n主要内容：\n读一篇文章，分析其中的claims 类型。\n\n表现：\n\n孺亦同学上课一直很认真，一直可以保持清醒地思考。\n不过今天文章比较长，有些claim界定起来有点模糊，讨论得不是很快，最后拖了一会儿都没把文章读完 孩子也辛苦了
1216	1629198000000	547	t	子杰 8月17日写作助教课反馈\n \n内容：topic sentence & evidence训练\n表现：今天课堂状态很好，很棒~topic sentences 的内容基本没有问题了，思考审题也很深入，evidence训练也能尝试自己找key words；特别要注意题目里的condition，写句子时句式用词的准确性和多样性，evidence一定要基于topic sentence的特点，不要找串了；继续加油🏻\n\n作业：evidence一题+预习文章
1218	1629187200000	706	t	8月17日 菲菲英文课反馈\n课堂重点：精读和分析《Woodsong》\n\n这节课我们读的是一篇回忆录，作者讲述了自己在荒野边缘与动物相处的一些片段。我们学习了环境描述（setting）的作用，只要是真实的故事，经过细致的描绘后都能让人身临其境。
1220	1629081000000	756	t	Tony  8月16日数学课反馈\n \n内容：章节综合练习\n表现：作业都做得不错哈，基本的弧度角度转换要牢记哦，不需要借助计算器；今天讲解的几道综合题目都不太好想，基本思路类似，构造最基本的三角形或者扇形，根据三角函数角和边的特点去尝试，Tony会没思路主要是对特殊三角形不敏感，以及基本的角边会混淆，难的方程公式都没有问题，这些细节虽然简单，但是能够节省时间+提供方向，继续加油哦\n \n作业：课本习题P110/13,14 P112/1,6 P95/1.7
1441	1627459200000	1047	t	反馈【Lucas】2021年07月28日 周三 中学语法课 Lesson 07\n\n课堂表现：\nLucas 上课记笔记的时候效率要高一些，不准再拿记笔记的时间去做别的事情。\n\n今天重点：\n1. 作业讲评\n2. coordinate conj\n\n
1221	1629253800000	756	t	Tony  8月18日数学课反馈\n \n内容：章节综合练习+IG三角函数\n表现：作业做得还不错哦，两道稍微难的题目都是综合题，每个知识点Tony还是知道的，结合起来会没联想到，本质还是三角函数和二次函数，所以专门复习了一下IG的三角函数题目，tony没有大问题，所以还是综合题型练的不够多哈；IG三角函数题中可以多尝试不用计算器，锻炼一些图形思维对之后写AS题目有帮助的\n \n作业：IG三角函数题目，question 6不用计算器，把过程都写清楚
1302	1628582400000	975	t	08.10 菲菲 课后反馈：\n上节课的作业中，菲菲反应不太清楚怎么做。因为上节课题目主要是应用公式法或者配方法来解题。而菲菲个人会比较倾向用配方法来解题，不过配方法在刚开始应用时有个比较难的部分便是得自己推出(a+b)²中的b是多少，而菲菲恰巧因为题目的数据出得比较常规，导致不太找得对“b”是多少。针对这个现象还是需要加强下公式法的套用，学会一题多解，不能老是想用一种方式来解题。
1222	1629250200000	749	t	 0818 科学课反馈\n主要内容：\n- 讲评前两节课的作业\n\n课堂反馈：\n这节课我们主要讲评了周一和周二的作业，没有上新的内容。根据作业的完成情况来看，Laura从一下方面进行复习和改进：1）Pure subtance的定义，以及为什么 element和compound属于pure substance；2）solubility的定义；3）如何根据不同温度下的溶解度数据来绘制图表，并对溶解度的变化趋势进行总结。\n\n作业：\n - 整理Pure Substance and Mixture以及Solution这两课的笔记，并发在群里 （今天的作业重心放在实验上哈）
1223	1629255000000	750	t	主要内容：\n- 上节课作业讲评\n- 介绍Ruler Dropping Experiment\n\n课堂反馈：\n从两份“写实验步骤”的作业来看，Laura已经基本掌握写步骤的结构和基本规律，但有些地方还需要多加打磨：1）步骤描写的详细程度；2）如何去控制对实验结果有影响的变量（如环境、地点、抛掷方式等）；3)测量用的工具，相应的单位；4）实验重复的次数。\n\n今天我们介绍了一个新的实验（反应时间）。这个实验Laura妈妈也可以参与其中，Laura会向您介绍实验的步骤，麻烦啦。 期待明天的实验报告哈~\n\n作业：\n- 先完整 Practice. Test Reaction Time 中的表格，熟悉实验步骤\n- 再完成 Worksheet. Ruler Dropping Lab （共两面，要全部完成）
1224	1629255600000	873	t	反馈【Wendy】2021年08月18日 周三  写作练习课 Lesson 01\n\n课堂表现：\n接下来的写作练习课将以写作文+讲评作文+ 改作文为主。帮助wendy 应用语法知识和AWS的知识点。\n\n今天重点：\n1.作文题目解析和大纲\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业
1225	1629266400000	604	t	\N
1226	1629358200000	603	t	【刘行】2021年08月18日 周三  中学语法课 Lesson 03\n\n课堂表现：\n刘行在作业里的固定搭配记得反复复习哦！\n\n今日重点：\n1.形容词\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1227	1629273600000	870	t	【Nina】2021年08月18日 周三  Pre-AWS 第二季 Lesson 01\n\n课堂表现：\nNina 在写作的时候要注意point by point 的分类描述哦！\n\n今日重点：\n1.Shot Size\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了
1228	1629276000000	211	t	08.18 Laura 课后反馈：\n今天继续讲解了代数分解。上节课的作业完成的不理想，也跟上节课的上课状态有点关系。不过这节课的上课状态就很不错，回答的也很积极。\n这节课的题型是用“十字相乘法”来解题，Laura可以为了快速选取出合适的组合，优先考虑数字部分是否合适，当数字部分合适后，再选择合适的符号。
1230	1629244800000	843	t	8月18日 英语课反馈\n主要内容：\n基本的几何概念的英语\n\n表现：心婷上课很认真，虽然今天早上那么早，也一直没瞌睡，从头到尾都好好听课回答问题和做笔记。\n今天心婷的拼读也很好，而且在题目的理解上比之前进步很多，愿意主动去思考了，而不是直接说看不懂。现在能看懂的多了很多。\n\n这些词都很基础，以后会经常见到，一定要用心记下来。\n\n作业：已完成
1231	1629271800000	610	t	08.18 刘行 物理课后反馈：\n今天讲解了电路的应用题，总体来说掌握的非常不错，公式的套用很准确。但唯一比较不太套用准确的就是power，P=VI=V²/R=I²R，得学会根据题目的已知条件去选取合适的公式，别老是用P=VI 这个公式噢。
1232	1629253800000	608	t	08.18 刘行 数学课后反馈：\n今天讲解了integration（积分）。这个概念我们在物理课铺垫了一年了。由图像问题引申出的gradient和area的意义，其中integration 就是求图像的area。所以differentiation 和 integration是一组互逆的运算。\n所以在运算时，我们更喜欢微分的运算逻辑，所以在求原函数时，得注意系数和得加上常数“C”！！
1234	1629250200000	859	t	08.18 Simon 课后反馈：\n今天讲解了上节课的作业。Simon在解题时还是有个惰性，知道怎么解题。但发现题目给的信息量不够时，就觉得没办法解。而应用题更需要自己一步一步解出来，而不是题目把所有条件就给你，然后套公式。\n当发现自己缺哪个信息量时，试着自己求解看看，这次的作业还是三角函数的应用题，认真思考下解题思路。
1235	1629279000000	921	t	8月18日 作业巩固课反馈\n\n今天作业部分整体完成得不错，个别写错的地方，咱们在巩固课上讨论一下，确认规则和题目的意思之后，Steven基本就能自己订正了。\n今天的生词不多，下午检查的时候，Steven意思都记住了的。
1236	1629254400000	918	t	8月18日 Steven写作课反馈\n主要内容：\n1、学习怎么解读和描述曲线图\n2、形容词的比较级和最高级\n3、理解段落的支撑句：细节\n\n表现：今天上课，感觉Steven是有点儿走神的，问问题要等好一会儿，老师重复问才会回神儿。好在咱还是在课上了解和练习了怎么读图表的重点，对比图表，描述图表的整体和细节等等。在后面两部分也是，都有通过一些课堂练习来确认Steven的理解。\n\n今天没来得及把写作任务完成，明天会先完成这部分，再开始新的内容。\n\n作业：已完成
1237	1629275400000	798	t	8月18日 写作课反馈\n主要内容：\n1、讲昨天的两篇作业，\n2、介绍近期的真题题目\n\n表现：桃子的文章这两天有出现个别以前的问题，比如句子太长，关系连接词用得不够，这样的。\n要注意虽然最近咱们重点讲逻辑，但表达方式上还是要按之前讲的来：长短句结合，别写太长的句子（容易出错），多用关系连接词，and/or这样的并列结构要前后一致，句子不能缺主语/动词，动词和介词的固定搭配，等等。\n另外咱们今天讲的新题目难度有提升了，桃子不用有心理负担，你觉得难，其他人也会觉得难，没有绝对的对错，写得出来东西，逻辑是通的，就行。\n继续加油
1238	1629270000000	720	t	8月18日 AWS助教课反馈\n主要内容：\n1、写了上节课读的问题\n2、读一个新的问题\n\n课堂表现：\n孺亦同学上课态度没得说，很好。这两节课在练习读题，分析题目要求，还有写好thesis statement。确实不简单，题目里好多词儿都不属于我们之前经常接触的词儿，还要完全读懂来龙去脉，然后想到从什么角度出发去论述。\n孺亦全程很有耐心，积极去思考，需要动手写的时候，也立刻就开始做，很好了 继续加油
1239	1629284400000	548	t	子杰 | 8月18日 写作助教课反馈\n \n内容： Evidence讲评，文章讲解\n表现：文章分析子杰都很不错哈，课前有预习所以我们分析重点就很快，claim/evidence分析都很到位，counterargument上还欠缺一些哦，两处分析对了一处，继续加油哈~evidence的文章找的还可以，但是内容没法做evidence，并且会想不到topic sentences，在找evidence的过程中就是一个brainstorm的过程哈，这次课后继续尝试自己通过google找到方向\n \n作业：两道evidence+文章分析（written forms）
1303	1628755200000	977	t	08.12 菲菲 课后反馈：\n今天前半节课主要是解答菲菲写应用题时，看到题后不太知道怎么假设未知数x的困惑，绝大部分题目的假设都是依据题目问什么，我们就假设什么为x，不过个别题目会为了解题方便点，而假设别的量为x，来引出所求量。菲菲可以先好好掌握下大部分题的解法，遇到什么就假设什么，至于变式题等之后遇到题再进行补充。\n后半节课开始讲解乘积定理，可以理解为当每一环之间是“and”的关系，即用“×”；若环与环之间是“or”的关系，就用“＋”。\n这节课的内容是为下节课开始讲解的新知识点：permutation and combination 进行铺垫，可以多看看笔记熟练下乘积定理。
1304	1629104400000	978	t	08.16 菲菲 课后反馈：\n今天主要讲解了上节课的作业错题，菲菲对重复的数字排列已经比较熟练了，但是对填数时有时候会忽略特殊坑位，导致解题错误。\n两种新的解题方式需要特别注意下：1.捆绑法，适用于题目要求某些量必须靠在一起，可以先看成一个整体，再对捆绑的内部进行排序。2.插空法，适用于题目要求某些量必须分开，可以在两个量之间穿插其他量来达到分开的目的。
1305	1629282600000	979	t	08.18 菲菲 课后反馈：\n那天j讲解了combination（组合）。和排列最大的区别就是：排列是有顺序的，而组合时没有顺序的。而在组合的公式运算上有个对称性，所以在计算时可以挑选列式量少的进行运算。
1306	1629446400000	974	t	08.20 菲菲 课后反馈：\n上节课的作业完成的不是很理想，主要的错误点是菲菲在解题时想得比较多，且都把题目的要求想成了有顺序的，导致答案错误。对于排列组合的问题，解题思路就是把题目的要求先满足了，再去随意填补剩下的空位即可。
1370	1629887400000	967	t	08.25 菲菲 课后反馈：\n今天继续讲解了排列组合的习题。涉及到一种新题型：排列成一圈的排列方式，若n个人，则有（n-1）！的排列方式，和列成一排的排列不太一样，所以需要特别注意下。其他的题型都掌握的很不错。
1371	1629709200000	988	t	08.23 菲菲 课后反馈：\n上节课的作业错题主要是集中在挑选时，把同一类人进行了多步筛选，这是不可取的，其中会涉及到排列重合的问题，所以最好进行分类讨论。\n这节课开始综合训练，对于分类讨论的问题，菲菲需要强化下这类问题。
1372	1629799800000	952	t	08.24 Nina 课后反馈：\n今天讲解了题型 ( )( )=0，得出任意一个（）= 0的结果，首先只适用于=0的情况及得是乘积的形式才可以。\nNina今天课上的上课状态还可以，掌握题型的速度挺快的。
1373	1629795600000	202	t	08.24 小C 课后反馈：\n今天讲解了对sin，cos，tan的公式应用，主要是教小C怎么使用计算器，这个得自己课后写作业的时候多加应用。
1374	1629774000000	1012	t	8月24日菲菲英文课反馈\n课堂内容：《The Horse Snake》时间线分析\n\n这节课我们分析了 narrative nonfiction 中叙事的顺序、制造冲突的细节。接下来两节课我们将做一个 writing and speaking workshop，把这个月学习的内容综合运用一次。\n\n作业：\n1. Lesson 5: https://shimo.im/docs/KcP6Kkkq6wXDGytR\n2. 单词 4-1（即 wordlywise 4 Lesson 1 的单词，新学期我们目标暂定每周背 2 个 list）\n3. posted 阅读 the catch，别忘了写 summary。\n4. 如果有额外的时间，可以把下面讲义中的第一页看完，是今天课后的延伸阅读。
1375	1629867600000	681	t	8月25日 Lucy writing class 反馈 \n\n今天我们讲的是 be made of，used to do 等短语以及重新开始复习现在完成时。前面 be made of 和 used to do 这两个点 Lucy 掌握得会好一些，做题速度快，但是后面现在完成时的部分 Lucy 会比较吃力，主要是因为动词的分词形式是 Lucy 接触得最少的，需要背的动词变化比较多，我在课上给 Lucy 留了少部分的动词变化，Lucy 下课需要自己多去看看。
1376	1629871200000	682	t	8月25日 Lucy writing class 反馈 \n\n今天我们讲的是 be made of，used to do 等短语以及重新开始复习现在完成时。前面 be made of 和 used to do 这两个点 Lucy 掌握得会好一些，做题速度快，但是后面现在完成时的部分 Lucy 会比较吃力，主要是因为动词的分词形式是 Lucy 接触得最少的，需要背的动词变化比较多，我在课上给 Lucy 留了少部分的动词变化，Lucy 下课需要自己多去看看。
1377	1629768600000	925	t	8月24日语法课反馈\n课堂重点内容：介词（on/in/at）\n\n这三个介词既可以用在时间状语中，又可以用在地点状语中，能看出来两位同学在如何用他们描述时间时，都还是比较迷糊的。课堂练习都完成得很好，课后作业中还要加油巩固。
1378	1629855000000	925	t	8月25日 语法课内容反馈\n课堂重点：被动语态的将来时\n\n我们先复习了被动语态，它的基本原理两位同学都记得很清楚。但是要把语态和时态分开还是挺困难的。一方面我们要牢记 be 动词的各种时态变化，另一方面要去判断原句的时态变化，然后再做调整。\n\n后半节课在讲将来时（future tense）的时候，谈到未来的话题，两位同学都很激动，发表了很多自己的观点，老师希望这些观点不要只停留在口语中，要写下来，并且用上今天学的知识。
1229	1629880800000	211	t	08.25 Laura 课后反馈：\n今天讲解了“十字相乘法”的进阶法。Laura的上课状态很不错，对符号的判断也没出现错误，不过这节课讲的题型难度比较大，对数的拆解组合会比较多，需要Laura自己解题时多耐心点。
1394	1629032400000	1021	t	【Lora】2021年08月15日 周日  糯米经济学 IB 宏观知识点精讲课 04\n\n课堂表现：\nLora可以在课下复习的时候多尝试用自己的语言去解释term，觉得理解不清的可以和我讨论！\n\n今天重点：\n1. Unemployment
1379	1629781200000	947	t	0824 MYP科学课反馈\n主要内容：\n- 入学测试的讲评与相关知识点拓展\n- “密度”实验报告的分析\n\n课堂表现：\nLulu课上表现积极主动，能够很好地与老师互动讨论。\n讲评入学测试的过程，发现有些知识点因为是比较早学的，所以Lulu已经记不完整或者不够准确了（比如 unbalanced forces\\ matter\\ electric resistance）。\n\nDensity实验报告方面，我们只讲评了一半。Lulu需要注意：\n1）表格中单位的正确使用，以及密度单位的转换（"g/cm3"对应固体密度，"g/ml"对应液体密度）\n2) 在“suggest improvement”的部分，可以去进行额外的调查（比如除了“water displacement”，有没有更好的固体体积测量方法）\n3）注意在实验步骤中所出现的测量是主观的（subjective）还是客观的（objective），这些是否会影响实验的可靠性（reliability）
1380	1629791100000	828	t	08.24 Michael 课后反馈：\n今天讲解了vector（向量），它涉及了两个维度的量：magnitude 和 direction。由线的长短代表大小，由箭头代表方向。它的解法比较特殊，今天课上讲解的新概念也比较多，自己课后好好消化下。
1381	1629871200000	821	t	08.25 睿涵 课后反馈：\n今天讲解了increasing function（递增函数）和decreasing function（递减函数）。区别依据是：y'＞0时，y就是递增函数；y'＜0，y就是递减函数。其中最大的运算量便是不等式，睿涵的计算没有什么问题，不过就是在找范围时会犯错，所以得好好练练不等式的计算。
1382	1629855000000	859	t	08.25 Simon 课后反馈：\n这节课主要讲解了上节课的作业，因为Simon来不及完成，所以就当课上重新复习一下。发现解题时还是会不太清楚要怎么解，解题思路还是不清楚，课后自己多看看笔记中的公式，最好自己多写几遍加深下印象。
1383	1629442800000	718	t	8月20日 AWS助教课\n主要内容：今天处理了一些前几次没完全讲解完的内容，包括identify visual language，writing thesis statement。\n\n这两项任务都是需要持续练习的，理解的部分都能经过探讨来解决，不过在写的时候就还比较困难，需要继续练习，积累经验。今天还讨论了一个which引导的定语从句的情况，也是因为effect这个词比较特殊，所以才有比较nuance的差异，这些也要积累经验的，对与表达的严谨性很有帮助。\n明天上课前好好预习下新的任务。
1384	1629529200000	720	t	8月21日 AWS助教课\n主要内容：\n今天继续完成了一个题目的讲解和thesis statement的写作。\n\n因为对题目的理解会直接影响文章的主题和论证，所以我们在练习的时候注重读懂每个词、每个意群的字面意思和暗含的意思，读懂题目具体要求我们做的事儿，然后判断哪个角度是比较容易论证的，哪种类型的thesis statement比较适合。\n\n孺亦今天写的时候比昨天更好的地方在于，能够比较快地选定position，字数也能写够，不过对于自己写的thesis类型今天还有不确定的。
1385	1629788400000	718	t	8月24日 AWS助教课反馈\n主要内容：\n1、赏析How to get things done when you don't want to do anything 这篇文章\n2、分析纽约时报征文赛的评分标准，并赏析两篇范文。\n\n在赏析第一篇文章的时候，我们主要分析了除了小标题之外，作者用哪些起递进作用的句子推进了文章的讨论。\n对于这种前后内容的联系和推进方式的学习了解，可以帮助我们理解阅读材料和提升自己的写作。\n\n纽约时报的评分标准，实际上是让我们学习了怎样给一个合适的、动人的、有理有据的response（反馈），而应用范围并不限于报刊文章的读后感。\n这些标准放在其他沟通场景中一样好用，比如给人建议，听了演讲给人反馈，想跟爸妈提个什么要求等等。\n\n我记得有次孺亦想请假，发给妈妈的一段文字，就各方面都挺符合这个标准的
1386	1629874800000	720	t	8月25日 AWS助教课反馈\n主要内容：\n练习读题、写thesis、写topic sentence。\n\n先让孺亦同学就同一个话题写了两个thesis statement，然后再根据这两个thesis想topic sentences，在这个过程中，他自己总结出来“如果thesis写得太具体，后面就不好写”。\n也就是thesis的中心词定义广一些的时候，更容易写出包含多个论点的文章。\n\n练习写topic sentence的时候，一开始写的有点跑题，也就是跟主题的关系不够直接，后面就写得更好了。\n这两个部分都需要常练习。\n\n前面6.1里两个作业，今天有时间写完吗？
1387	1629797400000	1019	t	8月24日 写作课+阅读课 反馈 今天两篇作文都写得挺好的！ 明天咱们写作文记得： 1、别写太长的句子（一个主句带一个从句就够）； 2、避免 run-on sentence，记得用句号； 3、多用关系连接词（加强逻辑） 今天下午多花了些时间讲阅读错题和专项练习。 明天阅读要注意： 1、难题不要想太久，简单题目保证做对，留出时间检查和想难题； 2、文章中没有提到的信息，别推测，除非是考推测的题目。 听力注意事项： 1、专注于当下的部分，不想前面或者后面的考试（避免走神） 2、一点没听懂或者没记下，不要慌，继续听就会懂
1388	1629682200000	803	t	8月23日 阅读听力讲评反馈\n昨天的模考，桃子听力做得挺好，阅读错得稍微多点，所以今天重点讲的阅读。\n\n阅读错的题目，基本上都是关键句找错了。我们针对具体错的题目进行了分析，阅读和听力中都有大量连接词，but，so，then，这些要重点关注。\n\n另外桃子做阅读要把握时间，简单题迅速过，难题也不要纠结超过2分钟。暂时不确定的题目，先选一个，在白板上几个题号和不确定的选项。留5-10分钟时间全部检查，还有继续思考难题。
1389	1629793800000	799	t	8月24日 写作课+阅读课 反馈 今天两篇作文都写得挺好的！ 明天咱们写作文记得： 1、别写太长的句子（一个主句带一个从句就够）； 2、避免 run-on sentence，记得用句号； 3、多用关系连接词（加强逻辑） 今天下午多花了些时间讲阅读错题和专项练习。 明天阅读要注意： 1、难题不要想太久，简单题目保证做对，留出时间检查和想难题； 2、文章中没有提到的信息，别推测，除非是考推测的题目。 听力注意事项： 1、专注于当下的部分，不想前面或者后面的考试（避免走神） 2、一点没听懂或者没记下，不要慌，继续听就会懂
1390	1629856800000	1018	t	反馈【Sam】2021年08月25 日 周三  写作练习课 Lesson 01\n\n课堂表现：\nSam 今天状态很不错，在写作上思路越来越多了。有阵子没写作文了，有点生疏了哦。\n\n今天重点：\n1.作文构思\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业
1391	1629871200000	604	t	【刘行】2021年08月25日 周三  中学语法课 Lesson 08\n\n课堂表现：\n刘行最近状态都很好，开始进入句子部分了，要注意分析结构哦。这几节课记的语法词汇要注意去背哈！\n\n今日重点：\n1. 从属连词\n2. 句子和从句\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了
1397	1629878400000	870	t	【Nina】2021年08月25日 周三  Pre-AWS 第二季 Lesson 03\n\n课堂表现：\nNina 的描述能力还需要加强哦，多去发挥想象力，寻找图像中的细节，并且猜测他们之间的关系。\n今日重点：\n1.Shot Size\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1398	1629882900000	992	t	【Rebecca】2021年08月25日 周三  糯米经济学 IB 宏观知识点精讲课 19\n\n课堂反馈：\n今天的内容挺多的，课下一定要巩固复习，多去想想例子和串联嗷！加油！\n\n今天重点：\n1. Fiscal Policy\n\n\n课后任务：\n1.复习今天的笔记。\n2. 完成 Lesson Nineteen Homework，并于周四前。
1400	1629443700000	939	t	8月20日 Mandy 词汇课反馈\n\n今天我们复习了上节课的词汇，并且新学了 Lesson 8 的新词汇。Mandy 上课表现非常不错，我们的复习测试大部分都能够达到正确，少部分能够自己通过排除的方式进行选择。我觉得目前 Mandy 记单词的状态相当不错，比起之前要快的多，继续加油
1401	1629858600000	946	t	Tony  8月25日数学课反馈\n \n内容： 二次函数/反函数domain&range，angle&cricle\n表现：作业大部分都做得很好~二次函数domain不同对应的range会有些乱哈，注意对称轴/顶点/开口，也可以直接借助图像，反函数的domain&range有时候也比较懵，Alevel的难题之后我们再多练哈，基本IG的题型能够掌握；IG里的圆定理都还记得还不错，不过内接四边形忘记了，以及相似全等三角形有点混，这些知识点不难但是多，今天课后重点过这一块~\n \n作业：圆&相似图形相关题目
1402	1629941400000	925	t	8月26日语法课反馈\n课堂内容：动词不定式\n\n动词不定式指的是动词没有做时间限定的样式，它可以作为动词的补语，也可以作为目的状语。它的核心语意就是在计划中将要发生的动作。在作业中记得不要把主句的动词和不定式搞混。\n\n作业：\n1. Learning Grammar 17-24 页\n2. 选做作业：What do you want to become when you grow up? Write down at least three sentences to describe your plan in detail.
1403	1629889200000	915	t	8月25日John英文课反馈\n课堂内容：作业讲解+一般现在时\n\nJohn 之前在学校有学习一些语法，不过时态这块几乎都没有学过，所以目前的课程目的就是让他了解语法的概念，知道说英文句子是需要遵循一定的规律的。每次上课只学习一个知识点，相信这次他会比上次掌握得更好。
1280	1629941400000	734	t	08.26 Cady 课后反馈：\n今天讲解了排列组合的习题。属于综合练习册，课上对讲解的习题，熟练度还是比较高的，不过有类题型需要注意下，把同一类人进行了多步筛选，这是不可取的，其中会涉及到排列重合的问题，所以最好进行分类讨论
1404	1629957600000	831	t	0826 科学课反馈\n主要内容：\n- Chemical Bonding\n\n课堂反馈：\n上一节课的Michael的作业完成得不错，但还是有两个小地方需要注意一下：1）审题，注意题中要求对比的元素（copper vs. nickle）; 2) 答题的完整性，不仅要说明是什么，还要说明为什么。\n\n这节课上我们讲解了化学键的基本概念。因为之前有两节课（原子与元素周期表）和相关案例的铺垫，所以Michael在这节课上的学习还挺顺利的。课后，Michael还需要练习如何通过原子结构图来确定最外层电子数、以及如何根据原子序数来画相应元素的原子结构图。\n\n
1405	1629945000000	608	t	08.26 刘行 课后反馈：\n今天继续讲解了积分的综合题，着重讲解了下如何切分面积及是dx还是dy的确定。先自己确定单个长方形的面积构成，再进行合适位置的堆积，就能列出正确的式子。
1406	1629858600000	608	t	08.25 刘行 课后反馈：\n今天整体复习了下整个微积分的内容，刘行的解题思路还是比较清晰的，不过对概念之间的等效替换会比较生疏，如：gradient=tanθ。章节与章节之间还没形成串联，之后我们会系统性的复习下。
1408	1629946800000	810	t	Michael 8月26日文学课反馈\n \n内容：Macbeth Act1 Scene1\n表现：Michael作业写得还不错哈，主要人物和之间的关系基本到位，但是在描写莎士比亚的时候，最后一点写得比较vague，注意想想为什么哈；今天课上我们正式进入scene的阅读，setting能自己分析了哈，环境相关的描写都能明白，自己也能举例子，但是还不够完整;之前学过的devices中alliteration又忘了，和rhythm混起来了，还需要再复习哦\n \n作业：环境作用分析
1409	1629963000000	603	t	【刘行】2021年08月25日 周四  中学语法课 Lesson 09\n\n课堂表现：\n刘行要习惯去用语法知识分析句子哦，不要再靠语感啦。现在语法能力已经变得越来越强了。\n\n今日重点：\n1.句子拆解和分析\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1410	1629964800000	706	t	8月26日菲菲英文课反馈\n课堂内容：分析范文和作文要求\n\nWhat makes a good story? 这是我们这个月的主题。我们学习了环境描写中营造画面感、设计音效，还有让故事围绕一个冲突展开，设计悬念，以及提前列好事件发生的顺序。\n\n作业：\n1. 按照讲义上的要求完成 Writing Prompt 1，上课时我们已经发散地想了很多可能性，下课后要去收敛，设计一个主场景，描述一个 conflict 就可以了。\n2. 按照自己的 Writing 准备 Speaking，详细要求在讲义上的 165 页。
1411	1630051200000	870	t	【Nina】2021年08月27日 周五  Pre-AWS 第二季 Lesson 04\n\n课堂表现：\nNina 这次的作业有进步啦！描述得越来越好了！\n今日重点：\n1.如何写好故事\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1412	1630044000000	675	t	【Lora】2021年08月27日 周二  糯米经济学 IB 宏观知识点精讲课 09\n\n课堂表现：\nLora还是老问题哈，要强迫自己去串联知识点，不然学的越多忘的越快哦！\n\n今天重点：\n1.Expansionary Fiscal Policy\n\n课后任务：\n1. 完成作业
1413	1630044000000	609	t	08.27 刘行 数学课后反馈：\n今天讲解了二项式定理，题型虽然有不同，不过解题的套路都是一样的，先算出T(r+1)的通式，再根据题目想要求的量进行合适的r值代入，而常数项的特点是x^0,。对于括号的组合题，就是跟常规题一样，解题的重心在代数x身上，先不用去管数字或者符号部分的内容，找出想要的代数项，然后代入正确的r值即可。
1414	1630033200000	602	t	【刘行】2021年08月27日 周四  中学语法课 Lesson 10\n\n课堂表现：\n句子结构部分已经全部学完啦！这几节课的内容都比较重，刘行课下要记得先复习一下再写作业哦！\n\n今日重点：\n1.Clauses\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1447	1629876600000	610	t	08.25 刘行 课后反馈：\n今天讲解了通电导线周围会存在磁场，满足右手定则。\n对于通电直导线，大拇指为电流方向，四指为磁感线方向。\n对于螺旋线圈，四指为电流方向，大拇指为磁场的N极方向。
1415	1630027800000	925	t	8月27日语法课反馈\n课堂内容：复习前四课+讲解Reported Speech\n\n前四课的错题大家做的很不错，开始学会谨慎思考了，而不是一看到题就凭直觉抢答。学习语法的目标就是这个，在写句子时懂得自己要检查哪些项目，也许一开始想错了，但是后面能够自己纠正。\n\nReported Speech 是一个综合性语法知识点，涉及到陈述句、问句、祈使句、人称代词、不定时等知识点，所以对大家来说是一个挑战。记得做完作业后自己要检查，有不会的地方随时问我。\n\n作业：\n1. Learning Grammar 第 80-82 页\n2. 选做作业：Learning Grammar 第 58 页 和 第 60 页
1416	1629975600000	980	t	【Sherry】2021年08月26日 周四  糯米经济学 IB 微观知识点精讲课 08\n\n课堂表现：\nSherry 要多注意去串联学过的知识点，这样才能牢固记忆，并且提升题目正确率。\n今天重点：\n1. Gov intervention\n\n课后任务：\n1. 完成当堂的讲义部分\n2. 完成 Lesson Seven HWK
1417	1630055700000	992	t	我们结课啦【Rebecca】2021年08月27日 周五  糯米经济学 IB 宏观知识点精讲课 20\n\n课堂反馈：\n进过一个暑假多的学习，我们已经过完了微观部分的所有知识点，以及宏观部分的大部分知识点。Rebecca 也有了很大的进步，无论是知识点的理解还是做题的思路上。接下来要继续加油哦！延续我教你的学习方法！️！\n\n今天重点：\n1. Fiscal Policy\n\n\n课后任务：\n1.复习今天的笔记
1418	1630062000000	980	t	【Sherry】2021年08月27日 周五  糯米经济学 IB 微观知识点精讲课 09\n\n课堂表现：\nSherry 今天状态很好，知识点越来越熟悉了！继续加油！在做题上，多去思考这个知识点要用什么 Lense哦！\n今天重点：\n1. Gov intervention\n\n课后任务：\n1. 完成当堂的讲义部分\n2. 订正 Lesson Seven HWK\n3. 对前七课做个总复习
1420	1630116000000	855	t	8月28日 Edward英文课反馈\n课堂内容：Greek Myth 第九章\n\n今天我们的故事主题是斯芬克斯的谜语，虽然 Edward 同学觉得自己不可能猜出来，但还是猜中了以后就可以把 Riddle 这个词记得很牢啦～\n\n课后作业：\n1. 抄写单词/短语：\nriddle 谜语\npose a question 提问题\ninsist 坚持\nencounter 遇见\ncane 拐杖\ngrateful 感激的\n\n2. 写作作业
1421	1629970200000	963	t	08.26 Michael 课后反馈：\n今天讲解了向量的加减法。本质上向量是没有减法的，需转换为加法来运算。加法运算时满足首尾相连即可。运算过程突出跟过程无关，只和起点及终点的位置有关。而公式的加减法满足同坐标的运算逻辑。
1423	1630055700000	860	t	08.27 Simon 课后反馈：\n今天复习了下上节课作业中不会的知识点。Simon自己要先理清楚一个概念，坐标是由（x,y）组成的，而x与y之间本身是没有直接关系的，所以我们在应用公式时，核心逻辑都是同类找同类运算，所以不会出现运算过程中，赋值的逻辑中出现类似“x-y”这种情况。这点需要自己意识到，这样运用公式时就可以避免运算逻辑出错。
1424	1630051200000	968	t	08.27 菲菲 课后反馈：\n今天继续讲解排列组合的练习题，出现了一种新题型，是关于数列的。这种题需要用到我们上第一节课时用到了对数进行拆解，如“2345”拆解成2×1000+3×100+4×10+5×1。通过数位的方式去得出求和后的结果。
1425	1630060200000	956	t	08.27 逸然 课后反馈：\n今天复习了下三角形和圆的综合题，对于相似的应用，注意在使用勾股定理运算时，不要急着直接算，先把边长的数据放大或者缩小成整数，再通过相似的比例关系去得到未知边的大小，这样能加快解题速度和准确度，同时减少计算量。
1426	1630287000000	925	t	8月30日语法课反馈\n课堂内容：形容词短语和定语从句\n\n定语从句是最常见的一种复杂句。第一个特点是先行词放前面，修饰的部分放后面，这是中英文思维的最大不同之处。第二个特点是关系代词需要随着先行词是人、是物做出对应的改变，这节课学到的是 which、that、who、whom、whose。\n\n作业：\n1. Learning Grammar 30-32 页 40-44页\n2. 选做作业：完成下面这封 email 的写作，谈谈自己在某次旅游的见闻，试着用上 what、when、where、how 连接的从句。
1427	1630234800000	980	t	【Sherry】2021年08月29日 周天  糯米经济学 IB 微观知识点精讲课 10\n\n课堂表现：\nSherry 这次做作业要记住用上 Lense的概念哦！可以很大程度提高正确率！\n\n今天重点：\n1. Price Celling\n\n课后任务：\n1. 完成当堂的讲义部分\n2. 订正 Lesson Eight HWK
1428	1630062000000	982	t	8月27日 John 英文课反馈\n课堂内容：可数名词和不可数名词\n\n上课我们主要讲了如何判断名词是可数还是不可数的。除了语法原理外，名词复数的变形还涉及到发音和拼写。这方面 John 同学做得不错，大部分时候的直觉是对的，除了特殊变形的名词有些没学过，记得要把这两个词记到自己笔记本里。goose-geese（鹅） 还有 mouse-mice（老鼠）
1429	1630130400000	725	t	8月28日 琦岚数学课反馈\n课堂内容：The unitary method with fractions\n\n这节课的内容涉及到等分的概念，数学层面的方法，琦岚可以说是秒掌握了，上课的例题都能做得又快又好。下课后，自己再去练习独立读题吧！分数这一个单元今天就学完了，我们进行了一个简短的复习，我把板书全部发上来。（复习笔记在板书的最后一页）
1430	1630130400000	831	t	 0828 科学课反馈\n主要内容：\n- Chemical Reaction\n\n课堂反馈：\n上节课的作业，Michael完成得一般哈。比如， Be是4号元素，内层有两个电子，外层有两个电子，都需要标明清楚。对比氮（N）和氖（Ne）的电子结构的时候，不仅仅要标明他们的最外层电子数不同，还要具体描述这个不同是多少。还是要尝试更具体地去写科学课的题目。课后还要记得把“Group 18 element”的quizlet词条修订一下。\n\n我们今天学习了化学反应的基本概念。Michael课上的状态不错，我们用光合作用和其他生活能够遇到化学反应，解释了化学式、配平以及吸热\\放热反应。\n\n作业：\n - Assignment. Chemical Reaction\n - 完成本节课quizlet的制作\nQuizlet词汇列表：chemical reaction, evidence of a chemical reaction, chemical formula, subscripts, chemical equation, reactants, products, law of conservation of mass, balancing the equation, coefficient, endothermic reaction, exothermic reaction
1431	1630135800000	1028	t	 0828 MYP科学课反馈\n主要内容：\n- From Cells to Organism\n- Three Elements of Fair Test\n\n课堂表现：\n课堂上，Lulu能够积极主动地与老师讨论互动，并完成笔记。\n秋季学期，Lulu主要学习身体系统，所以我们以“cells to organism”这个话题开始，帮助Lulu理解“structure”和“function”的关系，也复习了一些关键词和概念。课后，Lulu可以看看附加的视频，复习与身体系统相关的基础词汇。\n\n我们还学习了“公平测试”的三大要素。基于之前实验设计的经验，Lulu在这部分的学习上手得很快，能够应用三大要素来分析实验案例。\n\n课后作业：\n- Worksheet. Fair Test\n- Assignment. From Cells to Organism
1432	1629974400000	869	t	08.26 Nina 课后反馈：\n本节课讲解了二次方程中ax²+bx+c=0，涉及到十字相乘法的运用。需要把数进行适当的拆解，凑成( )( ) =0 的形式。这部分应用我们在讲解代数分解时专门训练过，Nina上课的反应也还是不错的。
1433	1629965700000	574	t	08.26 Caesar 课后反馈：\n今天讲解了方程组的最后一种题型。解题方式：先确定想要消除的代数，然后把两个方程的代数部分通过乘积方式弄成数字部分相同，再通过加法或者减法来达到消除其中一个代数的结果。还是要记得最后需要带入验算答案是否正确。
1434	1630027800000	618	t	08.27 刘行 物理课后反馈：\n这节课讲解了安培力：F=BIL。B是磁场强度，I是电流强度，L是磁场中的导线长度。安培力满足左手定理，4指为电流方向，大拇指为安培力的方向，掌心向着磁感线穿过的方向。
1435	1630062000000	1024	t	8月27日 AWS 助教课反馈\n主要内容：讲评了孺亦完成的两个写作任务\n\n那两个写作任务都有字数要求，孺亦同学觉得难，估计是觉得没什么话可说，不过还是努力写了一些想法出来，值得表扬。\n\n我们今天先讲评了孺亦答案中的一些表达问题，包括选词和固定搭配。然后又重新去读了题目要求，带孺亦利用最近学习的读题和构思技巧、评分标准去完成任务。其实我们最近的练习，都是围绕读题和构思essay这个主题的，孺亦可以把这些思考方式渐渐变成自己的习惯，打破一些相对来说比较直、比较浅、比较笼统的思维，这样你能把答案写得更好，更重要的是以后你说得话都会更有说服力、影响力。总之，思考难一点的问题，现在看来可能确实比较费劲，但也更能锻炼到你的能力，而且想不通的，还可以问嘛，多跟这个群里的人讨论嘛。加油~
1437	1630216800000	1037	t	8月29日 阅读课+作业巩固课反馈\n主要内容：\n1、学习新单词\n2、精读Tough Guy 这篇文章\n3、学习方向介词，完成课后练习\n\n课堂表现：Steven 在单词学习的部分很认真，跟老师一起根据例句和英文定义，来理解新单词的意思，然后做笔记。在阅读的部分，Steven也读得比较快，在理解内容上还有些困难，老师带着他针对他觉得难的地方去逐字分析。今天学了关于一个活动过程的描述，里面的描述步骤的方式是写作中会经常用到的。方向的介词，across，over，under都是Steven比较熟的，另外through，along，around，past也需要尽快记下来。\n\n作业：\n1、上面作业文档里的题目，\n2、造句：用今天记的生词/短语，每个写一个句子\n3、生词记到quizlet
1436	1630222200000	1038	t	8月29日 阅读课+作业巩固课反馈\n主要内容：\n1、学习新单词\n2、精读Tough Guy 这篇文章\n3、学习方向介词，完成课后练习\n\n课堂表现：Steven 在单词学习的部分很认真，跟老师一起根据例句和英文定义，来理解新单词的意思，然后做笔记。在阅读的部分，Steven也读得比较快，在理解内容上还有些困难，老师带着他针对他觉得难的地方去逐字分析。今天学了关于一个活动过程的描述，里面的描述步骤的方式是写作中会经常用到的。方向的介词，across，over，under都是Steven比较熟的，另外through，along，around，past也需要尽快记下来。\n\n作业：\n1、上面作业文档里的题目，\n2、造句：用今天记的生词/短语，每个写一个句子\n3、生词记到quizlet
1407	1630137600000	834	t	Michael 8月28日文学课反馈\n \n内容：Macbeth Act1 Scene1\n表现：作业中关于天气在文学中的分析写得不是很完整，情节+人物心情没有写到位；今天继续详细分析了scene1，都是最后一句话的device和主题分析，Michael对之前的部分内容又忘记了，想不起来的地方就开始随便说，笔记都要记，课后写作业前复习笔记\n作业：分析最后一句话（字面意思+devices+function+theme）
1438	1629784800000	821	t	08.24 睿涵 课后反馈：\n今天讲解了the chain rule（链式法则）和切线与法线的表达式书写。\n针对链式法则，刘行可以理解成套娃式的解题，不过是从外往内一层一层的求微分即可。\n切线和法线都属于直线，表达式：y-y1=m(x-x1)。其中（x1,y1）为定点，m是gradient。其中切线与法线满足垂直，即相乘为定值“-1”。
1439	1630290600000	879	t	08.30 睿涵 课后反馈：\n今天讲解了上节课的作业错题，主要是带睿涵学会如何熟练的画函数图。\n步骤：1. 先求出y'，然后找出y'=0时对应的x及（x,y）。2. 根据x的值去划分坐标系的区域，同侧的原函数图像有一个共同点，y'的正负性相同，及增减性一致。3. 将增减性的图像过特定的点即可。
1440	1627632000000	1048	t	反馈【Lucas】2021年07月30日 周四 中学语法课 Lesson 09\n\n课堂表现：\nLucas 需要认真复习和记忆学过的内容，记笔记的目的是为了让你复习，不是无时无刻都在查看。\n\n今天重点：\n1. 作业讲评\n\n
1442	1626163200000	1049	t	 0713 Lucas Pre-IG 科学课反馈\n主要内容：\n -  复习细胞的基本结构\n - 真核生物和原核生物\n\n课堂表现：\nLucas能够积极配合老师完成例题和讨论。课后，记得多花时间熟悉每个科学词汇的读音（今天相对不熟练的词：membrane, cytoplasm, organelles ）。课上遇到图例（如细胞结构）的时候，尽量记到笔记里。\n\n
1443	1627028100000	1050	t	 0723 Lucas Pre-IG 科学课反馈\n主要内容：\n -  讲评昨天的作业\n - DNA\n\n课堂表现：\n昨天作业中，出现有两个问题：\n1. 按照题目的要求回答，如第八题，你不仅仅要分辨谁是消费者，还要回答它们是什么样的消费者（食肉？食草？杂食？）。题目一定要看完整，这样基础的题目错了很可惜。\n2. 还无法正确使用部分科学概念，如 : 注意one animal，one species以及 one animal speices之间的区别。\n\n今天的内容科学词汇相对较难，概念相对抽象。不过，Lucas状态不错，跟得上上课节奏。课后要在复习一下 transcription和translation这两个过程，以及DNA和RNA的英文读音。\n
1444	1626336000000	1052	t	Lucas 7月15日阅读写作课反馈\n \n内容：places文章一篇，T-chart思路训练\n表现：一开始Lucas状态都挺好哈，后面开始有点走神了，大部分词汇都能懂，但是要通过读才能反应出来，有要求不要通过读来听，要认；思路训练中Lucas思路比较狭窄，所以提供了一些思考方向，听着听着又走神了，话题很感兴趣，但是思路也要打开哦\n
1445	1627372800000	1053	t	Lucas 7月27日阅读写作课反馈\n \n内容：festival文章一篇，T-chart复习，词汇积累\n表现：lucas对于上节课的词汇掌握得还可以，这节课文章比较长，词汇多，课后录入quizlet；关于中国节日几乎都不知道怎么用英文表示，以及单词之间的辨析不太清楚，文章结构逻辑都没有问题；关于Postive/negative方面想的还是不够，笔记要自己总结
1446	1627545600000	1053	t	Lucas 7月29日阅读写作课反馈\n \n内容：词汇复习，文章逻辑分析，main idea&topic sentences, argument探讨\n表现：lucas对于上节课的词汇掌握得还可以，charm/feature/take advantage of不知道其他都可以；今天文章的单词不难，但是lucas在逻辑理解上需要花时间所以反而觉得难，无法准确理解句子和句子之间的关系，以及对于main idea把握不准，重点会理解错，我们多训练这一方面；不过argument的讨论比之前好，会列举比较多点，但是比较片面，对于自己不支持的观点就一律“stupid”，这个想法还是要转变一下 \n \n
1448	1630032000000	822	t	08.27 睿涵 课后反馈：\n今天讲解了求导的实际应用：找stationary point。需满足2个条件：1.y'=0；2.该点左右的y'相反（即一边＞0，一边＜0）。\n找Maximum point（极大值点） 和Minimum point（极小值点）。第一种方法：需满足2个条件：1. y'=0；2.左边y'＞0，右边y'＜0，即为极大值点，反之则为极小值点。\n第二种方法：找到y'=0的点，再找出y''，然后进行赋值，若y''＞0，则为极大值点；反之则为极小值点。（通过最简单的函数：y=x²进行记忆，y'=0，y''=2＞0）
1449	1630303200000	1033	t	8月30日 Nova 读写课 反馈\n\n今天我们主要是进行复习，看 Nova 有没有忘记之前学过的一些重要知识点，今天复习的内容是代词的变化，an/or/but 的使用，以及特殊疑问词 what,which,who,when 的用法。今天 Nova 表现的还不错，但是因为没睡午觉，感觉还是会比较困，一会儿就比较没精神了，所以今天完成的内容会相对少一些，回去之后的作业已经发给 Nova 了。作业辅导课的时候会由小佳老师带着一起完成。
1450	1630307400000	1032	t	Nova | 0830 词汇听力课反馈\n内容：\n-  话题词汇“occupation and workplace”\n- 复习话题词汇“gender，parent and young” \n\n表现：\n\n一开始，我们一起回忆7月份最后一堂课的内容。之后的上课一开始的时候，我们都会一起来回忆前一堂课的内容记得复习哟。\n\n我们今天通过画图和讲故事的方式来串联了不同工作和工作的场所词汇。不熟悉的词汇，Nova能够主动用字典来查询，继续保持。不过，可能是太久没来上课了，Nova还要再适应一下上课节奏。 到最后阶段，Nova又有些犯困了。\n\n作业：\n1. Learning English Vocabulary 1 Exercise 31 (P67-68) and Exercise 32 (P69-71)\n2. 0830学习集：https://quizlet.com/_a15spu?x=1jqt&i=1zo45c
1451	1630319400000	969	t	08.30 菲菲 课后反馈：\n这节课讲解了上节课的作业错题，主要是针对同种题型，不同数据时采用的方法不同。其中有两种句式需要区分下意思；如第一个：“ no two of sb will sit together.”是指这类人彼此之间没靠在一起的，可以理解成这类人中的每一个人左和右都不是同类人，所以推荐用插空法。第二个：“ all sb do not sit together”是指这类人并不是所有人都坐在一起，可以理解成所有人都坐一起的互补事件，所以可能性有非常多，优先用总排列-互补的排列。
1452	1630373400000	925	t	8月31日语法课反馈\n课堂内容：学习动名词+复习定语从句\n\n动名词即把动词标记为名词，同样是吃饭这个动作，eat 和 eating 却有着不同的语意。定语从句的部分，我们补充了限定性定语从句和非限定定语从句的讲解，这个知识有助于同学们阅读长难句。\n\n作业：\n1. learning grammar 第34-37页
1453	1630323000000	931	t	08.30 Timmy 课后反馈：\n这节课我们讲解了代数公式：a(b+c)=ab+ac。因为学习过了正负数，所以这里的解题方式是把加减号当成正负号去看待，计算过程当成数与数之间的乘积，该是什么数就写出来即可，不用再去纠结数与数之间用什么符号来连接。\nTimmy这节课的上课状态非常好，知识点的理解速度和应用上没什么问题，希望这个状态继续保持！
1454	1630411200000	1015	t	8月31日 Emily 化学课反馈\n\n今天应 Emily 自己的想法，我们重新复习了一下氧化还原反应的内容，Emily 对大部分知识点都是有印象的，唯独对氧化还原剂的内容忘的比较多。我们重新回忆了一下口诀，然后一起完成了相关的练习题。 Emily 表现不错，看得出有在想要进步了。作业记得完成。
1455	1630312200000	1003	t	08.30 逸然 课后反馈：\n这节课讲解了上节课作业错题和相似的难题。对于相似的难题，逸然的主要问题是在找解题切入点的三角形上会有困惑的地方，要学会根据题目给的已知条件去找合理的三角形，而别一直专注在题目想要你求的未知量上，顺着已知量来解题才是解难题的常规方式。
1456	1630119600000	1060	t	8月28日 语法课反馈\n内容：复习现在完成时+学习现在完成进行时\n\n现在完成时有两种使用场景，表示最近刚完成的动作，或是表示经历（具体什么时候发生的不重要）。总之，现在完成时是讨论事情对现在的影响。现在完成进行时则是在此基础上表示持续发生的事。\n\n两位同学平时的英语环境中，肯定是有现在完成时常常出现的，但是他们现在都还没有留意过。以后要多去发现阅读、听力中出现的现在完成时，结合语境来理解。\n\n作业：\n1. Learning Grammar 25-28 页 61-64页\n2. 选做作业：Conquer Grammar 第 11 页
1457	1630404000000	1013	t	08.31 Nina 课后反馈：\n这节课讲解了上节课的作业错题，错误点是把拆解数时，进行交叉相乘验算，再写式子的时候也交叉着写，所以导致列式错误。不过整体的解题思路是没有错的，对数的拆解也做得很不错，都是正确的拆解方式。所以这节课作业就继续巩固下这类题型。
1458	1630400400000	202	t	08.31 小C 课后反馈：\n这节课讲解了三角函数的进阶公式，三角形的面积公式。公式的推导证明课上有讲解，小C应该会发现新公式的由来往往是从旧公式推导出来的，所以之后遇得到新公式让你思考怎么得来时，不要没有方向，用自己已学的知识点来尝试推导下。\n公式的记忆点是：若已知两条边及其夹的角，那么便可以得出这个三角形的面积。
1459	1630404000000	1054	t	8月31日 Lucy writing class 反馈\n\n今天 Lucy 问了我很多关于 ww 单词的问题以及作业，之后讲被动语态的用法以及写法。Lucy 的单词课我建议她去使用 quizlet，也给她演示了如何去操作，妈妈可以要求她去使用 quizlet，会比较有效果。Lucy 知道现在初中了会忙起来，虽然还有些不习惯，但是现在态度是真的变化好了很多，一定能够慢慢进步起来。
1460	1630483200000	1044	t	【Nina】2021年09月01日 周三  Pre-AWS 第二季 Lesson 05\n\n课堂表现：\nNina 今天上课一直打瞌睡哦，生物钟要好好调整一下啦。\n\n今日重点：\n1.如何在文章里使用描述性语言\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业。在石墨文档里了。
1461	1630495800000	1041	t	【Lora】2021年09月01日 周三  糯米经济学 IB 宏观知识点精讲课 10\n\n课堂表现：\nLora前面的知识点还是有点遗忘和混淆哦。要好好复习，一定要反反复复的看和思考哦！\n\n今天重点：\n1.Expansionary Fiscal Policy\n\n课后任务：\n1. 完成作业
1462	1630495800000	932	t	9月1日 Timmy 阅读课反馈\n\n今天我们读了 Wonder ，主要内容是从主角 August 的自述当中了解一个天生有缺陷的男孩是如何生活的。我们读了前 4 章的故事，讲述 August 对自己的看法，上学前的好朋友，自己出生的故事以及去学校的前一天。这些故事的一些细节描写可以反应 August 身边的人和他自己的性格。Timmy 昨天表现的不错，记单词回答问题都还比较积极，继续加油！
1463	1630481400000	1030	t	09.01 Simon 课后反馈：\n这节课复习了二次方程，Simon对于列式还是很熟练的，不过就是在解题的过程中，对之前的代数公式有点遗忘了，如( a+b )²=a²+2ab+b²，不要漏了“2ab”，还有一个就是在解题过程中是要用等效替换代入解题，还是用方程组相互的加减法，得自己看看式子，针对性应用。
1465	1630486800000	1034	t	09.01 Laura 课后反馈：\n这节课我们讲解了二次方程的十字相乘法。用的基础是我们上一节课讲解的代数公式，Laura的课上应用得还是很不错的。这节课尝试让她自己写，我来纠正她的一些解题习惯，发现在对符号的判断上，Laura太在意中间的一次项，有点强行去拼凑出答案，这种思路是错误的，应该对现有的常数进行合适的拆解，然后一组一组去测试，这才是正确的思路。
1466	1630494000000	1061	t	9月1日 John 英文课反馈\n课堂内容：Apostrophe\n\napostrophe 是一个常用的标点符号，John 之前还没有学过，但他大概知道用法。我们这节课就是把 apostrophe 表示“拥有”的这个概念讲透了，然后讲了针对不同类型名词的注意事项。\n\n作业：Learning Grammar 2 Lesson 1，也可以等到纸质书寄到了再完成。
1468	1630040400000	681	t	Lucy 8月27日 writing class 反馈\n\n今天我们学习了一些动词的过去分词形式变化，这一块 Lucy 相当不熟悉，只对部分常见的动词变化是清楚的。动词的过去分词形式在英语中使用频率非常的高，需要 Lucy 尽可能地去记下这些变化。可以记住所有过去式是 ed 的动词，过去分词也是加 ed。
1467	1630044000000	682	t	Lucy 8月27日 writing class 反馈\n\n今天我们学习了一些动词的过去分词形式变化，这一块 Lucy 相当不熟悉，只对部分常见的动词变化是清楚的。动词的过去分词形式在英语中使用频率非常的高，需要 Lucy 尽可能地去记下这些变化。可以记住所有过去式是 ed 的动词，过去分词也是加 ed。
1469	1629694800000	681	t	Lucy 8月23日 writing class 反馈\n\n今天我们主要学习 some 和 any 以及somebody anybody 的用法。Lucy 需要明白否定句是什么意思，否定句和疑问句会用到 anybody 和 any（有时候会用到 some），肯定句则都是用 some，需要多加注意。Lucy 今天的表现不错，基本都能完成我们的语法练习题。
1470	1629698400000	682	t	Lucy 8月23日 writing class 反馈\n\n今天我们主要学习 some 和 any 以及somebody anybody 的用法。Lucy 需要明白否定句是什么意思，否定句和疑问句会用到 anybody 和 any（有时候会用到 some），肯定句则都是用 some，需要多加注意。Lucy 今天的表现不错，基本都能完成我们的语法练习题。
1471	1629176400000	681	t	Lucy 8月17日 writing class 反馈\n\n今天我们继续复习both..and, either..or, neither..nor, 这三种连词，因为Lucy 掌握的不够好，我们一起做了相关的练习题和语法题，Lucy 的表现比昨天好的多，可能还是有印象的原因，今天完成题目的正确率比较高，非常不错！
1472	1629180000000	682	t	Lucy 8月17日 writing class 反馈\n\n今天我们继续复习both..and, either..or, neither..nor, 这三种连词，因为Lucy 掌握的不够好，我们一起做了相关的练习题和语法题，Lucy 的表现比昨天好的多，可能还是有印象的原因，今天完成题目的正确率比较高，非常不错！
1473	1629090000000	681	t	Lucy 8月16日 writing class 反馈\n\n今天我们开始讲解一些常用的连词，也就是 both..and, either..or, neither..nor, 这三种，Lucy 能够掌握其意思，但是在选择 both,either,neither 这三种联系词后面是 and,or,还是 nor 的时候会出现比较大的问题。后半部分我们一起阅读了时代广场的蜥蜴这本书的第二册。Lucy 总体的表现比较不错，但是在答题的时候还是会比较慢。
1474	1629093600000	682	t	Lucy 8月16日 writing class 反馈\n\n今天我们开始讲解一些常用的连词，也就是 both..and, either..or, neither..nor, 这三种，Lucy 能够掌握其意思，但是在选择 both,either,neither 这三种联系词后面是 and,or,还是 nor 的时候会出现比较大的问题。后半部分我们一起阅读了时代广场的蜥蜴这本书的第二册。Lucy 总体的表现比较不错，但是在答题的时候还是会比较慢。
1147	1628744400000	681	t	Lucy 8月12日 writing class\n\n今天我们学习的是 complex sentence 复杂句的构造，了解 main clause 主句以及 dependent clause，也就是从句之间的关系。复杂句中主要的难点在于连接词。Lucy 目前的问题是容易搞混 coordinate conjunction 也就是 Fanboys 和 subordinate conjunction 之间的区别，回去之后还需要多看看今天的笔记。
1475	1628748000000	682	t	Lucy 8月12日 writing class\n\n今天我们学习的是 complex sentence 复杂句的构造，了解 main clause 主句以及 dependent clause，也就是从句之间的关系。复杂句中主要的难点在于连接词。Lucy 目前的问题是容易搞混 coordinate conjunction 也就是 Fanboys 和 subordinate conjunction 之间的区别，回去之后还需要多看看今天的笔记。
1476	1629341100000	928	t	冠宇 8月19日 化学反馈\n\n今天是我们化学的第二课，我们学习的是对分离实验的进一步分析。今天学习了 Filtration 过滤 simple distillation 简易蒸馏，fractional distillation 多层蒸馏以及色差法。这些方法都是我们用来将不同状态物质分离的方法。\n\nFiltration 专注于分离液体和固体，也能够把 soluble 固体和 insoluble 固体分开。\n\nSimple distillation 是提取溶液的两个部分\n\nFractional distillation 则是致力于分离两种不同液体的混合物。\n\n色差法则被用来分离集中不同颜色颜料的混合体。\n\n回家之后，冠宇还是需要多看下我们的笔记，加深印象。
1316	1629529200000	944	t	8月21日 宜林托福听力 一对一 反馈\n\n今天的内容主要是讲评模考的题目，分析细节题和目的题的一些做题关键点。模考中 Leon 错的比较多的都是细节和目的题，于是我们一起重新做了一遍，并且一起分析细节题中的常见信号词，比如，出现新定义，出现 first, another, but, 以及教授和学生之间的问答，都可以作为出题的信号。接着我们做了两套天文学相关题目（自然科学中细节题较多），第一套 Leon 还不是很熟练，没能抓住信号词，第二套在根据我们再次强调信号词的作用后，全部正确！我们下节课会继续讲关于人文社科类的听力中需要注意的一些 point。
1477	1630486800000	1026	t	MYP科学课反馈\n主要内容：\n- Introducation to Body Systems\n\n课堂表现：\nLulu可能还没习惯新学期的节奏，上节的课后作业忘记完成了，下次要注意哈。课上，我们通过口头问答的方式快速过了一遍，Lulu还记得大部分上节课学习的知识点。下次记得完成哟，这样老师可以对回答的逻辑以及科学概念的正确使用进行评价。\n\n今天，我们学习了主要的人体系统以及体内平衡的概念与案例。Lulu可以尝试将这些概念应用到课内项目（patient diagnosis）中， 如endocrine system、lymphatic system 等之前不熟悉的人体系统。\n\n课后作业：\n- Worksheet. Fair Test (补做)\n- Assignment. Introduction to Body Systems
1478	1630580400000	1016	t	9月2日 Emily 生物课反馈\n课堂内容：疾病和免疫\n\n这节课我们主要是把整个单元的知识点复习了一遍，下面这些重要的概念是要记住和理解的：\npathogens 病原体\nmicroorganisms 微生物\nactive immunity 主动免疫\npassive immunity 被动免疫
1479	1630576800000	1065	t	反馈【Sam】2021年09月02 日 周三  写作练习课 Lesson 02\n\n课堂表现：\nSam 今天状态不错，就是作业忘记写了。发现一个小缺点 —— 喜欢靠想象写作文，不喜欢查资料。今天带着Sam走了一遍查资料的流程。接下来写作的题目会越来越难，光靠想象是不足以支撑了，要开始学会查资料了哦。\n\n今天重点：\n1.如何做学术research\n2. 写作文\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业，在石墨文档里反馈【Sam】2021年09月02 日 周三  写作练习课 Lesson 02\n\n课堂表现：\nSam 今天状态不错，就是作业忘记写了。发现一个小缺点 —— 喜欢靠想象写作文，不喜欢查资料。今天带着Sam走了一遍查资料的流程。接下来写作的题目会越来越难，光靠想象是不足以支撑了，要开始学会查资料了哦。\n\n今天重点：\n1.如何做学术research\n2. 写作文\n\n课后任务：\n1.复习今天的笔记。\n2. 完成作业，在石墨文档里
1480	1630573200000	970	t	9月2日菲菲英文课反馈\n课堂内容：Speaking + Posted 阶段性阅读总结\n\n菲菲暑假的大作业是创作一个短故事，并且在课上用英文口语讲一遍。我能听出来这个故事是经过充分的准备的，并且能够很清晰的展示冲突（Conflict），并且有让人很惊喜的细节。Good Job！\n\n对 Posted 的讨论中，我们发现描述性语言是在阅读时容易被忽略的部分，因为目前暂时还比较难去 visualize（语言、文化的差异）。如果对这些部分做精读，就可以更好地把握人物的特点。\n\n作业：下面这份pdf
1481	1630576800000	1013	t	09.02 Nina 课后反馈：\n这节课讲解了二次方程的公式法，公式比较复杂，课上也推导过了，可以自己课后的时候多看看，主要是先找出 ax²+bx+c=0中的a，b，c，然后再代入公式即可。因为公式中涉及到根号的运算，记得化简噢。
1482	1630570500000	592	t	09.02 Caesar 课后反馈：\n这节课讲解了方程组的应用题，需要Caesar学会从题目种把条件翻译成数学方程，再联立求解即可。课上Caesar的学习状态很不错，对题目的条件挺敏感的，不过就是对于列出后的公式，我们之前讲的方法有好几种，自己要回顾下解题方法，看看哪种方法才更有利于解题。
\.


--
-- Data for Name: event_student_envolved; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.event_student_envolved (event_envolved_id, student_envolved_id) FROM stdin;
\.


--
-- Data for Name: question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.question (id, accuracy, answer, choice, pick_times, question, question_type, topic) FROM stdin;
\.


--
-- Data for Name: question_bank; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.question_bank (id, accuracy, answer, choice, pick_times, question, question_type, topic) FROM stdin;
1	0	has	\N	0	to have: The cracked windshield, in addition to the torn upholstery and rusted body, __________ made Ruth’s old car difficult to sell. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
2	0	are	\N	0	to be: This week's National Inquisitor claims that there __________ photographs of the Loch Ness Monster eating Elvis. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
3	0	work	\N	0	to work: At Tito’s Taco Palace __________ friends who will stuff double meat into our burritos for free. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
4	0	crawl	\N	0	to crawl: On the tables in the library __________ the many germs that have escaped in the hot breath of hardworking students. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
5	0	is	\N	0	to be: None of this breakfast that Lilly Mae cooked __________ fit to eat. 	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
6	0	tastes	\N	0	to taste: None of these chocolate-broccoli muffins __________ good, either. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
7	0	has	\N	0	to have: The whole red ant colony, including the queen and all of her drones, _________ swarmed over Tommy's feet, stinging his ankles. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
8	0	make	\N	0	to make: Fifteen gallons of chocolate milk __________ Herbert the elephant a happy pachyderm. 	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
9	0	hopes	\N	0	to hope: Everyone on the roller coaster, including Martha and Angie, __________ that the hot dogs, onion rings, funnel cake, and cotton candy will stay down during the twisting ride to come. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
10	0	bothers	\N	0	to bother: Neither Fred's ratty clothes nor his sullen attitude __________ Esmeralda, who lets Fred pick up the check every time they dine out. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
11	0	hugs	\N	0	to hug: That pair of jeans ____hugs______ the curves of Hannah’s body as nicely as tinfoil on a baked potato. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
12	0	annoys	\N	0	to annoy: Neither the coughing muffler nor the squeaky brakes __________ Ruth as much as the broken radio in her old car. 	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
13	0	get	\N	0	to get: Florida alligators usually __________ severe indigestion after eating poodles. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
14	0	clings	\N	0	to cling: Every cat hair, candy wrapper, and loose thread __________ to the super-charged polyester pants that Theodora loves to wear. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
15	0	knows	\N	0	to know: Any one of Ms. Orsini's students __________ the rules that govern subject- verb agreement. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
16	0	takes	\N	0	o take: The shine on my hardwood floors __________ abuse from the ragged toenails of Floyd, my dog. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
17	0	has	\N	0	to have: Neither of those students __________ a clue about the rules governing subject- verb agreement. Pity them both during the quiz. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
18	0	make	\N	0	to make: Patience and compassion, in addition to a wallet bulging with money, __________ everyone want Jordan as a friend. 	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
19	0	requires	\N	0	to require: Statistics  __________ so much homework that Michelle's poor fingers have permanent indentations from the calculator pads. 	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
20	0	comes	\N	0	to come: The committee ___________ from all parts of the city, so we usually have to start late because so many members get stuck in traffic. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
21	0	believes	\N	0	to believe: The committee ____believes_______ that waiting until everyone arrives is more important than starting on time. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
22	0	is	\N	0	to be: When Dad is angry, there __________ fire flickering in his eyes as well as smoke escaping from his ears. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
23	0	brighten	\N	0	to brighten: When Matthew is having a bad day, old episodes of The X-Files always __________ his mood. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
24	0	hits	\N	0	to hit: Each of those opera singers regularly ___________ notes high enough to break glass and rupture eardrums.	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
25	0	is	\N	0	to be: Either the fried oyster sandwich or shrimp pizza __________ the best choice for lunch at Crusty's Seafood Restaurant. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
26	0	disapproves	\N	0	to disapprove: Not only the Zorteks from Saturn but also the Martian ambassador __________ of the unfriendly greeting from the United Nations. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
27	0	annoys	\N	0	to annoy: Each of my brothers __________ me with his bad habits, like nose-picking at the dinner table and spitting on the sidewalk.	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
28	0	keeps	\N	0	to keep: Even though Jose has seen the film at least twenty times, Star Wars always __________ him on the edge of his seat.	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
29	0	are	\N	0	to be: Where __________ the gas mask and HAZMAT gloves? It's time to change the litter box. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
30	0	makes	\N	0	to make: The giant spider in the kitchen, together with the cockroaches in the bathroom, __________ entertaining at my house a potentially embarrassing experience. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
31	0	disagrees	\N	0	to disagree: Even after carefully considering the evidence for several days, the jury still __________ about the guilt of the mob kingpin. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
32	0	arrives	\N	0	to arrive: For the trial of the mob kingpin, the sequestered jury __________ in a bulletproof van. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
33	0	gives	\N	0	to give: Physics __________ Philip many headaches because he has to solve long, difficult word problems. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
34	0	is	\N	0	to be: A vitamin C tablet, in addition to milk jug caps and dead cockroaches, __________ part of the debris that Sara found when she cleaned under the stove. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
35	0	sees	\N	0	to see: Neither of the surfers __________ the sharks that wish to make a quick snack of some human toes. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
36	0	goes	\N	0	to go: Jim, together with his dog Pooh, __________ walking on the golf course every day, even in the rain. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
37	0	are	\N	0	to be: In the backyard of Sam's house __________ the buried corpses of many pets, including all of the goldfish that he won at state fairs. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
38	0	is	\N	0	to be: Zipping through the clouds __________ a fleet of UFO's—with the United States Air Force in hot pursuit. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
39	0	makes	\N	0	to make: Not only shopping for presents but also attending boring parties __________ many people dislike the winter holidays. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
40	0	cuases	\N	0	to cause: This semester, statistics _________ Shantell the most frustration. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
41	0	are	\N	0	to be: Mrs. Mauzy told her student, "There __________ too many subject-verb errors in this essay for it to pass." 	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
42	0	has	\N	0	to have: The inch-thick dust on all the furniture, as well as the piles of unwashed clothes and dirty dishes, __________ convinced Tony that Horace will not make a good roommate. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
43	0	buys	\N	0	to buy: Neither the nurses nor Dr. Taggart __________ soup at the hospital cafeteria. There are rumors that the cooks regularly use two-week-old leftovers as the primary ingredient. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
44	0	has	\N	0	to have: That pair of pants __________ a big rip in the back that showcases your polka- dotted boxer shorts.\n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
45	0	enjoys	\N	0	to enjoy: Neither the spoiled chimpanzees nor the pampered gorilla __________ bananas without ice cream, chocolate sauce, and chopped nuts. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
46	0	fill	\N	0	to fill: One thousand pounds of jelly beans ___fill_______ the bed of Betty's truck. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
47	0	sneers	\N	0	to sneer: Richard, the class snob, together with his two arrogant buddies, Philip and Charles, ___sneers_______ at everyone who pulls into the parking lot in a car that costs less than $50,000.00. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
126	0	on	\N	0	I don't know what we'll do at the weekend. It depends _________ the weather.\n	Use the correct preposition to fill in the blank.	Prepositions
48	0	come	\N	0	to come: From the school cafeteria __________ the palest tomatoes, the driest lettuce, and the most nuclear-green pickle slices that you will ever see. \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
49	0	has	\N	0	to have: The entire class, including the two students who have slept every day in the back row, __________ been invited to have dinner at Mr. Parker's house. 	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
50	0	are	\N	0	o be: Where _________ the gifts that I deserve for washing all the smashed love bugs off the front of your car? \n	Use the given words to fill in the blank. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
51	0	A	costs,cost,costed,had cost	0	Every pale of tomato slice, wilted pickle, and brown lettuce leaf __________ an extra 25 cents at Bernie’s Burger Emporium. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
52	0	A	has,have,had,has been	0	Not only the Smiths but also Tonya __________ agreed to try one of the world-famous chocolate-broccoli muffins. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
53	0	B	hopes,hope,hoped,had hoped	0	The Smiths, along with Tonya, _________ to avoid indigestion after eating these weird muffins. \n	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
54	0	B	is,are,was,were	0	On the sidewalk ________ many little lizards sunning themselves on the hot concrete. \n	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
55	0	A	makes,make,made,had made	0	Even though Antonio has many friends who love their Chevrolets and Buicks, he has always believed that General Motors __________ lemons. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
56	0	A	likes,like,liked,had liked	0	My dog Floyd, together with Buster the cat, __________ to play with money; the cat swats crumpled bills onto the floor where the dog shreds them to pieces. \n	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
57	0	B	is,are,was,were	0	Latoya isn't going to Daytona Beach for spring break because fourteen dollars __________ all that she has in her vacation fund.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
58	0	B	warns,warn,warned,had warned	0	Even though Johnson and Johnson _________ consumers not to insert Q-tips into their ears, people refuse to read directions and frequently rupture their eardrums. \n	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
59	0	B	is,are,was,were	0	All of my important keys __________ now stuck in the drain pipe of my bathroom sink. Buster, my kitten, doesn't realize how much his playfulness inconveniences me. \n	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
60	0	B	causes,cause,will cause,had caused	0	Grandpa claims that Martian measles _________ green and purple spots to erupt all over a person's body.\n	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
61	0	A	is,are,was,were	0	Digging holes in the sofa cushions __________ Peanut, Elizabeth’s new puppy.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
62	0	A	wants,want,wanted,are wanting	0	Even though the jury _________ to believe that the defendant did not feed Elvis to the Loch Ness Monster, much of the evidence points to her guilt. \n	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
63	0	A	is,are,was,were	0	Neither the students nor their instructor __________ happy with the long cafeteria line for squid eyeball stew. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
64	0	A	has,have,are showing,had	0	Neither of Freud’s parents _________ much intelligence when it comes to choosing spouses. Freud’s father has married five times, and Mom just presented him with stepfather number three.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
65	0	A	wishes,wish,wished,would wish	0	Each of these women __________ that she had read the care instructions before washing the delicate and expensive dresses. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
66	0	B	is,are,was,be	0	Here ___________ the mail and newspapers that I picked up for you while you were on vacation.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
67	0	B	ruins,ruin,has ruined,ruined	0	Mr. Lowry, our English teacher, believes that students who major in economics or physics __________ their imaginations.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
68	0	A	does,do,did,has	0	___________ no one except Marge and Beatrice have the subject-verb agreement exercises that Ms. Koopman assigned for today? 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
69	0	B	stands,stand,is standing,stood	0	Here ___________ Tonya and Robert, the two students who scored 100 percent on the subject-verb agreement quiz. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
70	0	A	has,have,had,is	0	General Foods, the maker of Cheerios, ___________ developed a new cereal with chocolate puffs and broccoli-flavored marshmallows. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
71	0	A	needs,need,needed,will need	0	Each man, woman, and child __________ to write General Foods a letter supporting the company's decision to produce a chocolate-broccoli breakfast cereal.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
72	0	B	is,are,will be,were	0	There ___________ more calories in a bowl of chocolate-broccoli breakfast cereal than you might think. \n	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
73	0	A	makes,make,made,will make	0	Not only the vitamin C from the broccoli but also the delicious taste of the chocolate ___________ this breakfast cereal a real crowd pleaser. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
74	0	B	is,are,has been,had been	0	Who needs a pet if you live in Florida? There already __________ lizards that sneak in between the window screens and cockroaches that take up residence in every bathroom and kitchen.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
75	0	A	kisses,kiss,kissed,has kissed	0	Susan is one of those students who ___________ up to the instructor every chance that they get. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
76	0	D	made,has made,makes,make	0	The dead trees and peeling paint, along with the broken windows and flapping shutters, __________ everyone believe that evil spirits haunt the deserted Sinclair house. \n	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
77	0	D	was,were,is,are	0	Where __________ the earrings that I left by the bathroom sink? Oh no! That stupid cat has swatted them down the drain again!	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
78	0	A	looks,look,looked,had looked	0	Neither of those sharks circling your boogie board __________ hungry enough to bite.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
79	0	A	is,are,was,were	0	One hundred and fifty gallons __________ the amount of liquid the average living room rug can absorb. Rachel discovered this fact after taking a long shower when the curtain wasn't tucked inside the tub.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
80	0	B	will have,has,have,had	0	Agnes never loses a single possession. Everyone knows what belongs to her, for each pen, pencil, and paperclip __________ a tiny flag attached with Agnes' full name on it. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
81	0	A	worries,worry,worried,used to worry	0	Asteroids and comets slamming into Earth __________ Marge; she tries to remain under the protective cover of her roof as much as possible. \n	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
82	0	C	knew,will know,knows,know	0	Someone—perhaps Emmanuel or Paul—__________ the right wine to serve with earthworm lasagna.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
83	0	B	is,are,has been,had been	0	These scissors __________ so dull that I'm not sure you could slice butter with them!	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
84	0	A	has,have,had,will have	0	Physics __________ proven to be Jerry's easiest subject this semester. He brings Carol, the lab assistant, an oatmeal-raisin cookie, and, as his reward, she finishes his report. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
85	0	A	costs,cost,will cost,had cost	0	The good jewelry Dad gave Sara for graduation __________ more than the cheap leather wallet that David got as his reward for finishing high school.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
86	0	B	gobbles,gobble,gobbled,will gobble	0	At Wendy's Washateria, all of the dryers _________ six quarters before spinning wet clothes dry. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
87	0	A	rocks,rock,rocked,will rock	0	At Wendy's Washateria, each of the industrial washing machines _________ so forcefully during the spin cycle that new patrons dash outside, convinced that an earthquake is shaking the building. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
88	0	A	wished,have wished,wish,wishes	0	Everyone at Wendy's Washateria, even Myra and old Mrs. Webster, __________ that she could afford her own washer and dryer at home.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
89	0	A	has,have,will have,had	0	Every cereal bowl and casserole dish _________ slipped out of Sheila’s soapy hands and shattered on the hard tile of the kitchen floor. Sheila really needs to buy a dishwasher. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
90	0	B	has,have,will have,had	0	Not only fat caterpillars but also my neighbor's rabbits __________ chewed my poor tomato plants to leafless nubs.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
91	0	D	seemed,had seemed,seems,seem	0	Two cups of sliced jalapeno peppers ___________ extreme for a single batch of burrito filling, but that's the amount in Felipe's recipe.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
92	0	A	is,are,was,were	0	Even after winning the away game, the girl's basketball team __________ gloomy because Coach Cox will insist that the players return to their hotel rooms to study for next week’s classes.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
93	0	C	was,were,is,are	0	Either The Matrix or Aliens ___________ Sam's favorite science-fiction movie. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
94	0	D	meant,will mean,means,mean	0	The eight slots on Pam's extra large toaster __________ that no one has to fight over frozen waffles during breakfast. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
95	0	A	is,are,will be,have been	0	"Here __________ the box of broken appliances that you promised to repair," Bob reminded Sue, his wife.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
96	0	A	has,have,had,will have	0	Statistics __________ become Matt's favorite subject because for fifty minutes three times a week he gets to study the beautiful curls on the back of Betty’s head. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
97	0	C	have,had,has,will have	0	Elton’s newest pair of eyeglasses __________ corrected his vision so well that this young man clearly sees the lovely Miranda sneering at his nerdy appearance.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
98	0	A	disagrees,disagree,disagreed,will continue to disagree	0	The class __________ about the solution to the stuffy condition of the room; ten students want to open the window, but the others remember the flood of frightened cockroaches that poured in the last time Mr. Frampton released the window from the frame.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
99	0	A	insists,insist,insisted,has insisted	0	When the fire alarm starts ringing, Mrs. Hoff is one of those teachers who __________ that class continue on the lawn outside. 	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
100	0	B	believes,believe,believed,will believe	0	Mrs. Hoff and Mrs. Phillips __________ that class time is precious and should not be wasted because of someone's immature prank.	Multiple choice: Choose the most correct answer. You should use the correct form of verb. Try to decide whether it is single or plural.\n	Subject-Verb Agreement
101	0	for	\N	0	England is famous ________ its rainy weather.	Use the correct preposition to fill in the blank.	Prepositions
102	0	of	\N	0	I'm very proud ________ my daughter, she worked very hard.	Use the correct preposition to fill in the blank.	Prepositions
103	0	in	\N	0	He isn't really interested ________ getting married.	Use the correct preposition to fill in the blank.	Prepositions
104	0	with	\N	0	Luke is very pleased ________ his exam results.	Use the correct preposition to fill in the blank.	Prepositions
105	0	at	\N	0	Unfortunately, I'm very bad ________ music.	Use the correct preposition to fill in the blank.	Prepositions
106	0	to	\N	0	ve been married _____ my husband for 10 years.	Use the correct preposition to fill in the blank.	Prepositions
107	0	about	\N	0	She's very excited ________ the party.	Use the correct preposition to fill in the blank.	Prepositions
108	0	from	\N	0	Julie is very different ________ her sister.	Use the correct preposition to fill in the blank.	Prepositions
109	0	of	\N	0	My niece is afraid ________ dogs.	Use the correct preposition to fill in the blank.	Prepositions
110	0	to	\N	0	A ball gown is similar ____ an evening dress.	Use the correct preposition to fill in the blank.	Prepositions
111	0	for	\N	0	What is your town famous ________?	Use the correct preposition to fill in the blank.	Prepositions
112	0	of	\N	0	It's great you got that job - you should be proud ________ yourself. \n	Use the correct preposition to fill in the blank.	Prepositions
113	0	about	\N	0	I'm very excited ________ buying a new computer.\n	Use the correct preposition to fill in the blank.	Prepositions
114	0	to	\N	0	That bike is similar ____ yours	Use the correct preposition to fill in the blank.	Prepositions
115	0	in	\N	0	She is interested ______ jazz.	Use the correct preposition to fill in the blank.	Prepositions
116	0	with	\N	0	Are you pleased ____ your new house?	Use the correct preposition to fill in the blank.	Prepositions
117	0	at	\N	0	Lucy is extremely good ______ languages.	Use the correct preposition to fill in the blank.	Prepositions
118	0	to	\N	0	Who is James married ______?	Use the correct preposition to fill in the blank.	Prepositions
119	0	from	\N	0	English cheese is very different ________ French cheese.	Use the correct preposition to fill in the blank.	Prepositions
120	0	of	\N	0	He isn't afraid ______ anything.	Use the correct preposition to fill in the blank.	Prepositions
121	0	about	\N	0	Stop worrying __________ your exam - everything will be fine.	Use the correct preposition to fill in the blank.	Prepositions
122	0	for	\N	0	I've waited __________ Judy for 30 minutes. I’m going home.	Use the correct preposition to fill in the blank.	Prepositions
123	0	on	\N	0	Stop talking and concentrate __________ your work.	Use the correct preposition to fill in the blank.	Prepositions
124	0	for	\N	0	Don't forget to pay _________ the newspaper.	Use the correct preposition to fill in the blank.	Prepositions
125	0	to	\N	0	He explained the computer program __________ me.\n	Use the correct preposition to fill in the blank.	Prepositions
127	0	in	\N	0	She will arrive __________ Beijing at 3 p.m.	Use the correct preposition to fill in the blank.	Prepositions
128	0	to	\N	0	I like to listen __________ the radio when I wake up.	Use the correct preposition to fill in the blank.	Prepositions
129	0	from	\N	0	He borrowed £20 __________ his brother.	Use the correct preposition to fill in the blank.	Prepositions
130	0	to	\N	0	Who does this coat belong __________?	Use the correct preposition to fill in the blank.	Prepositions
131	0	for	\N	0	She left without paying __________ the meal.	Use the correct preposition to fill in the blank.	Prepositions
132	0	on	\N	0	It was so hot, I couldn't concentrate __________ my book.	Use the correct preposition to fill in the blank.	Prepositions
133	0	about	\N	0	Mothers always worry __________ their children.	Use the correct preposition to fill in the blank.	Prepositions
134	0	to	\N	0	Please explain the meaning of this word __________ your classmates.	Use the correct preposition to fill in the blank.	Prepositions
135	0	for	\N	0	I'm fed up with waiting __________ spring.	Use the correct preposition to fill in the blank.	Prepositions
136	0	to	\N	0	That car belongs __________ my father.	Use the correct preposition to fill in the blank.	Prepositions
137	0	to	\N	0	She listens __________ opera on the tube.	Use the correct preposition to fill in the blank.	Prepositions
138	0	on	\N	0	Which university will you go to? B: It depends __________ my exam results.	Use the correct preposition to fill in the blank.	Prepositions
139	0	from	\N	0	A lot of people borrow money __________ the bank.\n	Use the correct preposition to fill in the blank.	Prepositions
140	0	at	\N	0	When she arrived __________ the pub, it was already closed.\n	Use the correct preposition to fill in the blank.	Prepositions
141	0	on	\N	0	It’s so noisy – I can’t concentrate _____ my homework.	Use the correct preposition to fill in the blank.	Prepositions
142	0	for	\N	0	Don’t worry – I’ll pay _____ the tickets.	Use the correct preposition to fill in the blank.	Prepositions
143	0	to	\N	0	The car belongs _____ my father, so I don’t think we can use it.	Use the correct preposition to fill in the blank.	Prepositions
144	0	from	\N	0	I borrowed a pen _____ my classmate.	Use the correct preposition to fill in the blank.	Prepositions
145	0	for	\N	0	I’ve been waiting _____ the bus for more than twenty minutes! Julie: “What time shall we eat dinner?”\n	Use the correct preposition to fill in the blank.	Prepositions
146	0	on	\N	0	Gill: “It depends _____ John – we’ll eat when he gets home”.	Use the correct preposition to fill in the blank.	Prepositions
147	0	at	\N	0	When we arrived _____ the cinema, the film had already started.	Use the correct preposition to fill in the blank.	Prepositions
148	0	to	\N	0	Please explain this problem _____ us.	Use the correct preposition to fill in the blank.	Prepositions
149	0	to	\N	0	She was listening _____ the radio when the doorbell rang.	Use the correct preposition to fill in the blank.	Prepositions
150	0	about	\N	0	John worries _____ his exam results all the time.	Use the correct preposition to fill in the blank.	Prepositions
151	0	to	\N	0	My flatmate listens _____ a lot of jazz.	Use the correct preposition to fill in the blank.	Prepositions
152	0	for	\N	0	David paid _____ the drinks.	Use the correct preposition to fill in the blank.	Prepositions
153	0	to	\N	0	Who does that house belong _____?	Use the correct preposition to fill in the blank.	Prepositions
154	0	about	\N	0	Don’t worry _____ Gemma, she’ll be fine.	Use the correct preposition to fill in the blank.	Prepositions
155	0	from	\N	0	She borrowed a jumper _____ Julie.	Use the correct preposition to fill in the blank.	Prepositions
156	0	on	\N	0	Please be quiet – I need to concentrate _____ this book.	Use the correct preposition to fill in the blank.	Prepositions
157	0	on	\N	0	I want to go to the beach tomorrow but it depends _____ the weather.	Use the correct preposition to fill in the blank.	Prepositions
158	0	for	\N	0	Who are you waiting _____?	Use the correct preposition to fill in the blank.	Prepositions
159	0	in	\N	0	When will we arrive _____ Beijing?	Use the correct preposition to fill in the blank.	Prepositions
160	0	to	\N	0	The policeman explained _____ the children why they should never run across a road.\n	Use the correct preposition to fill in the blank.	Prepositions
161	0	amused	\N	0	My nephew was (amusing / amused) by the clown.	Choose between present and past participles.	Participles
162	0	frustrating	\N	0	It’s so (frustrating / frustrated)! No matter how much I study I can’t seem to remember this vocabulary.	Choose between present and past participles.	Participles
163	0	boring	\N	0	This lesson is so (boring / bored)!	Choose between present and past participles.	Participles
164	0	depressed	\N	0	I’m feeling (depressed / depressing), so I’m going to go home, eat some chocolate, and go to bed early with a good book.	Choose between present and past participles.	Participles
165	0	fascinating	\N	0	I thought her new idea was absolutely (fascinated / fascinating).\n	Choose between present and past participles.	Participles
166	0	confusing	\N	0	This maths problem is so (confusing / confused). Can you help me?	Choose between present and past participles.	Participles
167	0	amused	\N	0	The teacher was really (amusing / amused) so the lesson passed quickly.\n	Choose between present and past participles.	Participles
168	0	exhausting	\N	0	The journey was (exhausting / exhausted)! Twelve hours by bus.	Choose between present and past participles.	Participles
169	0	alarming	\N	0	The plane began to move in a rather (alarming / alarmed) way.	Choose between present and past participles.	Participles
170	0	frightened	\N	0	He was (frightening / frightened) when he saw the spider.	Choose between present and past participles.	Participles
171	0	embarrassed	\N	0	I was really (embarrassing / embarrassed) when I fell over in the street.	Choose between present and past participles.	Participles
172	0	depressing	\N	0	That film was so (depressing / depressed)! There was no happy ending for any of the characters.	Choose between present and past participles.	Participles
173	0	exhausted	\N	0	I’m sorry, I can’t come tonight. I’m completely (exhausting / exhausted).	Choose between present and past participles.	Participles
174	0	exciting	\N	0	We are going in a helicopter? How (exciting / excited)!	Choose between present and past participles.	Participles
175	0	embarrassing	\N	0	Don’t show my baby photos to people, Mum! It’s so (embarrassing /embarrassed)!	Choose between present and past participles.	Participles
176	0	alarmed	\N	0	It’s okay, it’s only me. Don’t be (alarming / alarmed).	Choose between present and past participles.	Participles
177	0	excited	\N	0	My sister is so (exciting / excited) because she is going on holiday tomorrow.	Choose between present and past participles.	Participles
178	0	bored	\N	0	I hate long flights, I’m always really (boring / bored).	Choose between present and past participles.	Participles
179	0	confused	\N	0	She looked very (confusing / confused) when I told her we had to change the plan.	Choose between present and past participles.	Participles
180	0	fascinated	\N	0	John was (fascinated / fascinating) by Mandarin when he first started learning languages. He decided to study more and now he can speak it fluently.	Choose between present and past participles.	Participles
181	0	relaxed	\N	0	I am so (relaxing / relaxed) I don’t want to move.	Choose between present and past participles.	Participles
182	0	frightening	\N	0	I find horror films really (frightening / frightened) and not at all fun to watch.	Choose between present and past participles.	Participles
183	0	frustrated	\N	0	Sometimes I get really (frustrating / frustrated) when I can’t express myself well in English.\n	Choose between present and past participles.	Participles
184	0	terrifying	\N	0	We were stopped by a man with a knife who took our money. It was (terrifying / terrified).\n	Choose between present and past participles.	Participles
185	0	interesting	\N	0	The program was really (interesting / interested).\n	Choose between present and past participles.	Participles
186	0	overwhelmed	\N	0	She was (overwhelming / overwhelmed) when everyone cheered and we gave her presents.\n	Choose between present and past participles.	Participles
187	0	relaxing	\N	0	If I feel stressed, I find taking a bath is often (relaxing / relaxed).\n	Choose between present and past participles.	Participles
188	0	tired	\N	0	I am really (tiring / tired); I think I’ll go to bed.	Choose between present and past participles.	Participles
189	0	interested	\N	0	He’s very (interesting / interested) in history.\n	Choose between present and past participles.	Participles
190	0	overwhelming	\N	0	The trip was (overwhelming / overwhelmed), with so many things to do and it was all so new.	Choose between present and past participles.	Participles
191	0	satisfied	\N	0	She is never (satisfying / satisfied) with her work.	Choose between present and past participles.	Participles
192	0	tiring	\N	0	Cleaning is so (tiring / tired)! I think I’ll have a rest!\n	Choose between present and past participles.	Participles
193	0	thrilling	\N	0	She thought the ride on the rollercoaster was (thrilled / thrilling).\n	Choose between present and past participles.	Participles
194	0	surprised	\N	0	I was really (surprising / surprised) when I saw you. I had thought you were on holiday.\n	Choose between present and past participles.	Participles
195	0	shocked	\N	0	My grandmother was (shocking / shocked) by the man’s bad language.\n	Choose between present and past participles.	Participles
196	0	terrified	\N	0	My niece is (terrifying / terrified) of dogs.	Choose between present and past participles.	Participles
197	0	thrilled	\N	0	Thank you so much for the prize! I’m (thrilled / thrilling)!\n	Choose between present and past participles.	Participles
198	0	satisfying	\N	0	My job is very (satisfying / satisfied), I love helping people.\n	Choose between present and past participles.	Participles
199	0	shocking	\N	0	The news was so (shocking / shocked) that she burst into tears.\n	Choose between present and past participles.	Participles
200	0	surprising	\N	0	My exam results were great! It’s really (surprising / surprised) but good, of course	Choose between present and past participles.	Participles
201	0	going	\N	0	I don’t fancy ______________ (go) out tonight. \n	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
202	0	telling	\N	0	She avoided ______________ (tell) him about her plans.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
203	0	to come	\N	0	I would like ______________ (come) to the party with you.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
204	0	having	\N	0	He enjoys ______________ (have) a bath in the evening.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
205	0	talking	\N	0	She kept ______________ (talk) during the film.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
206	0	to speak	\N	0	I am learning ____________ (speak) English. 	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
207	0	giving	\N	0	Do you mind __________ (give) me a hand?	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
208	0	carrying	\N	0	She helped me __________ (carry) my suitcases.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
209	0	cooking	\N	0	I’ve finished ________ (cook). Come and eat!	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
210	0	to study	\N	0	He decided ________ (study) Biology.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
211	0	waiting	\N	0	I dislike _________ (wait).	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
212	0	\N	\N	0	\N	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
213	0	to come	\N	0	He asked _________ (come) with us.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
214	0	to help	\N	0	I promise _________ (help) you tomorrow.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
215	0	to go	\N	0	We discussed __________ (go) to the cinema, but in the end we stayed at home. 	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
216	0	to bring	\N	0	She agreed _________ (bring) the pudding.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
217	0	to take	\N	0	I don’t recommend ______ (take) the bus, it takes forever!	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
218	0	to visit	\N	0	We hope ________ (visit) Amsterdam next month.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
219	0	to go	\N	0	She suggested ________ (go) to the museum.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
220	0	to start	\N	0	They plan __ _______ (start) college in the autumn. 	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
221	0	to leave	\N	0	I don’t want _________ (leave) yet.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
222	0	getting	\N	0	She delayed _________ (get) out of bed. 	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
223	0	to speak	\N	0	He demanded _________ (speak) to the manager. \n	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
224	0	to help	\N	0	I offered _________ (help). 	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
225	0	to go	\N	0	I miss __________ (go) to the beach. 	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
226	0	to do	\N	0	We postponed _________ (do) our homework.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
227	0	arriving	\N	0	I’d hate ______ (arrive) too late.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
228	0	to stealing	\N	0	She admitted _________ (steal) the money.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
229	0	to work	\N	0	I chose _______to work_______ (work) here.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
230	0	to buy	\N	0	She waited _________ (buy) a drink.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
231	0	to be	\N	0	I really appreciate _______ (be) on holiday.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
232	0	laughing	\N	0	I couldn’t help ________ (laugh).	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
233	0	being	\N	0	It seems _______ (be) raining.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
234	0	to move	\N	0	I considered _______ (move) to Spain.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
235	0	to speak	\N	0	They practiced __________ (speak).	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
236	0	to finish	\N	0	Finally I managed ________ (finish) the work.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
237	0	waiting	\N	0	I really can’t stand ________ (wait) for the bus.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
238	0	to buy	\N	0	Unfortunately, we can’t afford _______ (buy) a new car this year. 	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
239	0	being	\N	0	She risked _________ (be) late.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
240	0	to come	\N	0	I’d love _______ (come) with you. 	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
241	0	to go	\N	0	I prepared _________ (go) on holiday.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
242	0	to be	\N	0	It appears _________ (be) raining.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
243	0	to go	\N	0	We intend _________ (go) to the countryside this weekend.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
244	0	to be 	\N	0	I pretended _________ (be) sick so I didn’t have to go to work.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
245	0	living	\N	0	Can you imagine___________ (live) without TV?	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
246	0	smoking	\N	0	They tolerate__________ (smoke) but they prefer people not to. 	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
247	0	to arrive	\N	0	I anticipate __________ (arrive) on Tuesday.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
248	0	negotiating	\N	0	A wedding involves __________ (negotiate) with everyone in the  family.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
249	0	to steal	\N	0	He denies _________ (steal) the money.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
250	0	to be	\N	0	He claims __________ (be) a millionaire but I don’t believe him.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
251	0	to be 	\N	0	I expect ____________ (be) there about seven.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
252	0	seeing	\N	0	Julia reported __________ (see) the boys to the police.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
253	0	to rain	\N	0	It tends ___________ (rain) a lot in Scotland.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
254	0	meeting	\N	0	Do you recall ____________ (meet) her at the party last week? 	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
255	0	to go	\N	0	She mentioned ___________ (go) to the cinema, but I don’t know what she decided to do in the end. 	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
256	0	to go	\N	0	The teenager refused __________ (go) on holiday with his parents.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
257	0	being	\N	0	I understand __________ (be) late once or twice, but every day is too much! 	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
258	0	to come	\N	0	I would prefer you ___________ (come) early if you can.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
259	0	to get	\N	0	That criminal deserves __________ (get) a long sentence. 	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
260	0	to paint	\N	0	She completed _______to paint__________ (paint) her flat.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
261	0	to meet	\N	0	We arranged ________ (meet) at four but at four thirty she still hadn’t arrived.	change the given words into gerunds or infinitives and fill in the blanks\n	Gerunds or Infinitives
\.


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (id, dob, email, name, gender, profile_image_type, open_id, we_chat_nick_name, grade, customer_id) FROM stdin;
6	\N	\N	Lawrence	male	false	\N	\N	\N	\N
7	\N	\N	慧卿	female	false	\N	\N	\N	\N
8	\N	\N	Laura	female	false	\N	\N	\N	\N
9	\N	\N	Nova	female	false	\N	\N	\N	\N
10	\N	\N	李获	male	false	\N	\N	\N	\N
11	\N	\N	冠宇	male	false	\N	\N	\N	\N
12	\N	\N	Joy	female	false	\N	\N	\N	\N
13	\N	\N	孺亦	male	false	\N	\N	\N	\N
14	\N	\N	Lucy	female	\N	\N	\N	\N	\N
15	\N	\N	纬濠	male	false	\N	\N	\N	\N
16	\N	\N	Queenie	female	\N	\N	\N	\N	\N
17	\N	\N	李拓	male	\N	\N	\N	\N	\N
5	\N	\N	Tico	female	false	\N	\N	\N	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, password, privilege, true_name, username, type) FROM stdin;
1	XMS531yr	0	叶锐	yehruei	打工仔
2	123456	0	小溪	xiaoxi6490	助教
3	123456	3	小铁	xiaotie0253	英语组
4	123456	3	多比	duobi0800	英语组
5	123456	3	小鸥	xiaoou1855	数学组
6	123456	3	小鹿	xiaolu0593	英语组
7	123456	3	牧牧	mumu3581	英语组
8	123456	3	龙猫	longmao5548	英语组
9	123456	3	小艾	xiaoai8778	数学组
10	123456	3	小萨	xiaosa3593	CEO
11	123456	0	小佳	xiaojia7329	助教
12	123456	0	小石	xiaoshi7001	客服
13	123456	3	Summer	summer3350	数学组
14	123456	3	小佳助教	xiaojia3471	助教
\.


--
-- Name: course_page_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.course_page_sequence', 1, false);


--
-- Name: course_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.course_sequence', 1, false);


--
-- Name: customer_activity_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_activity_sequence', 2, true);


--
-- Name: customer_relationship_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_relationship_sequence', 7, true);


--
-- Name: customers_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_sequence', 1469, true);


--
-- Name: event_response_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.event_response_sequence', 1482, true);


--
-- Name: event_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.event_sequence', 1070, true);


--
-- Name: question_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.question_sequence', 1, false);


--
-- Name: questionbank_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questionbank_sequence', 1, false);


--
-- Name: student_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_sequence', 17, true);


--
-- Name: users_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_sequence', 1, false);


--
-- Name: course course_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (id);


--
-- Name: customer_activity customer_activity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_activity
    ADD CONSTRAINT customer_activity_pkey PRIMARY KEY (id);


--
-- Name: customer_connection customer_connection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_connection
    ADD CONSTRAINT customer_connection_pkey PRIMARY KEY (id);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- Name: event event_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (id);


--
-- Name: event_response event_response_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_response
    ADD CONSTRAINT event_response_pkey PRIMARY KEY (id);


--
-- Name: event_student_envolved event_student_envolved_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_student_envolved
    ADD CONSTRAINT event_student_envolved_pkey PRIMARY KEY (event_envolved_id, student_envolved_id);


--
-- Name: question_bank question_bank_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question_bank
    ADD CONSTRAINT question_bank_pkey PRIMARY KEY (id);


--
-- Name: question question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (id);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: customer_connection fk26ekg6ts4annw35ylxmmo9ujb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_connection
    ADD CONSTRAINT fk26ekg6ts4annw35ylxmmo9ujb FOREIGN KEY (connect_by_id) REFERENCES public.customer(id);


--
-- Name: event_response fk476v2g0ttrsnpdh764ofc4r83; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_response
    ADD CONSTRAINT fk476v2g0ttrsnpdh764ofc4r83 FOREIGN KEY (event_id) REFERENCES public.event(id);


--
-- Name: event_student_envolved fkfvblwwupvo2lcuf6bhl595cv6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_student_envolved
    ADD CONSTRAINT fkfvblwwupvo2lcuf6bhl595cv6 FOREIGN KEY (event_envolved_id) REFERENCES public.event(id);


--
-- Name: event_student_envolved fkhvu1jugn7yaepknf466wthcik; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_student_envolved
    ADD CONSTRAINT fkhvu1jugn7yaepknf466wthcik FOREIGN KEY (student_envolved_id) REFERENCES public.student(id);


--
-- Name: customer_connection fkjko0l3jbjg8w0uj458hwx350y; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_connection
    ADD CONSTRAINT fkjko0l3jbjg8w0uj458hwx350y FOREIGN KEY (self_id) REFERENCES public.customer(id);


--
-- Name: student fkm44t4smj0reey6kau75yxm9k2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT fkm44t4smj0reey6kau75yxm9k2 FOREIGN KEY (customer_id) REFERENCES public.customer(id);


--
-- Name: customer_activity fkt1n3saltjf4u8fj9l0slds21; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_activity
    ADD CONSTRAINT fkt1n3saltjf4u8fj9l0slds21 FOREIGN KEY (customer_id) REFERENCES public.customer(id);


--
-- Name: SCHEMA scholarhillsdb; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA scholarhillsdb TO root;


--
-- PostgreSQL database dump complete
--

