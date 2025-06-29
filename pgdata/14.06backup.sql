--
-- PostgreSQL database cluster dump
--

-- Started on 2024-06-14 14:58:35

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.3

-- Started on 2024-06-14 14:58:35

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

-- Completed on 2024-06-14 14:58:37

--
-- PostgreSQL database dump complete
--

--
-- Database "B2HMaterials" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.3

-- Started on 2024-06-14 14:58:37

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
-- TOC entry 3476 (class 1262 OID 16384)
-- Name: B2HMaterials; Type: DATABASE; Schema: -; Owner: b2h
--

CREATE DATABASE "B2HMaterials" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE "B2HMaterials" OWNER TO b2h;

\connect "B2HMaterials"

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
-- TOC entry 3453 (class 0 OID 16570)
-- Dependencies: 216
-- Data for Name: B2HRoles; Type: TABLE DATA; Schema: public; Owner: b2h
--

COPY public."B2HRoles" ("Id", "Name", "NormalizedName", "ConcurrencyStamp") FROM stdin;
\.


--
-- TOC entry 3461 (class 0 OID 16616)
-- Dependencies: 224
-- Data for Name: B2HRoleClaims; Type: TABLE DATA; Schema: public; Owner: b2h
--

COPY public."B2HRoleClaims" ("Id", "RoleId", "ClaimType", "ClaimValue") FROM stdin;
\.


--
-- TOC entry 3454 (class 0 OID 16577)
-- Dependencies: 217
-- Data for Name: B2HUsers; Type: TABLE DATA; Schema: public; Owner: b2h
--

COPY public."B2HUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount") FROM stdin;
\.


--
-- TOC entry 3463 (class 0 OID 16629)
-- Dependencies: 226
-- Data for Name: B2HUserClaims; Type: TABLE DATA; Schema: public; Owner: b2h
--

COPY public."B2HUserClaims" ("Id", "UserId", "ClaimType", "ClaimValue") FROM stdin;
\.


--
-- TOC entry 3464 (class 0 OID 16641)
-- Dependencies: 227
-- Data for Name: B2HUserLogins; Type: TABLE DATA; Schema: public; Owner: b2h
--

COPY public."B2HUserLogins" ("LoginProvider", "ProviderKey", "ProviderDisplayName", "UserId") FROM stdin;
\.


--
-- TOC entry 3465 (class 0 OID 16653)
-- Dependencies: 228
-- Data for Name: B2HUserRoles; Type: TABLE DATA; Schema: public; Owner: b2h
--

COPY public."B2HUserRoles" ("UserId", "RoleId") FROM stdin;
\.


--
-- TOC entry 3466 (class 0 OID 16670)
-- Dependencies: 229
-- Data for Name: B2HUserTokens; Type: TABLE DATA; Schema: public; Owner: b2h
--

COPY public."B2HUserTokens" ("UserId", "LoginProvider", "Name", "Value") FROM stdin;
\.


--
-- TOC entry 3455 (class 0 OID 16584)
-- Dependencies: 218
-- Data for Name: CategoriesMaterial; Type: TABLE DATA; Schema: public; Owner: b2h
--

COPY public."CategoriesMaterial" ("CategoryId", "Name", "ParentId") FROM stdin;
7c20c387-a301-4e2b-6f85-08dc45e23f9f	Категории АБИ	\N
2a31abf0-cc58-46c8-afdd-08dc45e26a4c	Общестроительные материалы (АР+КР+КМ+ГП)	7c20c387-a301-4e2b-6f85-08dc45e23f9f
c4a8b16e-6454-41a4-b11f-08dc45e26a4c	Материалы, не включенные в группы 	7c20c387-a301-4e2b-6f85-08dc45e23f9f
fcb4042c-e08f-46e1-b076-08dc45e26a4c	Инженерные сети (ЭОМ, ЭС, ЭН, ВК, НВК, ОВ, СС, ИТП и т.д)	7c20c387-a301-4e2b-6f85-08dc45e23f9f
041ff01f-6745-486e-b12b-08dc45e26a4c	Крепежи строительные	c4a8b16e-6454-41a4-b11f-08dc45e26a4c
09209002-4f16-4c37-b02e-08dc45e26a4c	Интерьер	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
0ebf8c2c-b19c-4729-afe2-08dc45e26a4c	Сухие строительные смеси, цемент, извсесть	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
14a3db06-96a7-4d04-b067-08dc45e26a4c	Окна, двери, витражи, люки	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
169ea0d6-4f85-44ca-b0ba-08dc45e26a4c	Санитарно-техническое оборудование и комплектующие	fcb4042c-e08f-46e1-b076-08dc45e26a4c
176c7c26-76fb-41ed-afde-08dc45e26a4c	Щебень, гравий, песок, глины, грунты	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
18f965a7-3ae9-4ccd-b0d3-08dc45e26a4c	Установки вентиляционные	fcb4042c-e08f-46e1-b076-08dc45e26a4c
1e4ef696-c57f-4c50-b007-08dc45e26a4c	Сортовой прокат	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
1e7ae76e-f9a5-44f8-b05f-08dc45e26a4c	Малые архитектурные формы	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
1fe51d67-57a7-4186-b121-08dc45e26a4c	Трубные изделия	c4a8b16e-6454-41a4-b11f-08dc45e26a4c
2197a736-df52-4079-b013-08dc45e26a4c	Потолочные системы	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
35c37b1d-066f-49a6-b0ef-08dc45e26a4c	Опоры неподвижные, компенсаторы сильфонные	fcb4042c-e08f-46e1-b076-08dc45e26a4c
3647aa86-4ed8-459e-afed-08dc45e26a4c	Смеси бетонные, строительные и асфальтобетонные 	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
3813d5fc-2661-4dba-b11c-08dc45e26a4c	ТВ-оборудование	fcb4042c-e08f-46e1-b076-08dc45e26a4c
3965aa2a-0c9d-4b71-b063-08dc45e26a4c	Фасадные материалы	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
3e856e5c-aac8-47bf-b0b6-08dc45e26a4c	Контрольно-измерительные приборы 	fcb4042c-e08f-46e1-b076-08dc45e26a4c
3eeed534-3096-4889-b105-08dc45e26a4c	Системы контроля доступа (СКУД)	fcb4042c-e08f-46e1-b076-08dc45e26a4c
417090a9-a63a-480c-b024-08dc45e26a4c	Обои	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
49beedd0-84ab-4a52-b0a0-08dc45e26a4c	Бытовая техника	fcb4042c-e08f-46e1-b076-08dc45e26a4c
4ea0cb7e-13a4-424e-b093-08dc45e26a4c	Изделия электроустановочные	fcb4042c-e08f-46e1-b076-08dc45e26a4c
4eb71bd9-53c8-49c8-b040-08dc45e26a4c	Изделия из бетона или искусственного камня	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
55057065-8aa9-458d-b0e8-08dc45e26a4c	Котлы и расширительные баки	fcb4042c-e08f-46e1-b076-08dc45e26a4c
55c9e107-5c05-4499-b139-08dc45e26a4c	Элементы технического регулирования	c4a8b16e-6454-41a4-b11f-08dc45e26a4c
59a52cbd-21a9-4d77-b0da-08dc45e26a4c	Клапаны вентиляционные	fcb4042c-e08f-46e1-b076-08dc45e26a4c
5a36a454-378d-4c11-b03d-08dc45e26a4c	Битумы и битумная продукция	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
5e3099b1-36b5-4a48-aff9-08dc45e26a4c	Листовой прокат	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
6204595e-47dc-4475-b031-08dc45e26a4c	Материалы для озеленения	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
71c9e989-0a91-40c3-b0a2-08dc45e26a4c	Фитинги и комплектующие	fcb4042c-e08f-46e1-b076-08dc45e26a4c
74a26daa-3b63-43f7-b0e3-08dc45e26a4c	Радиаторы отопления и комплектующие	fcb4042c-e08f-46e1-b076-08dc45e26a4c
753e4ac5-aa3f-459c-b09a-08dc45e26a4c	Спецодежда и СИЗ	fcb4042c-e08f-46e1-b076-08dc45e26a4c
79abaa88-6a08-46f9-b0eb-08dc45e26a4c	Полотенцесушители	fcb4042c-e08f-46e1-b076-08dc45e26a4c
79e31cae-99dc-4764-b0c4-08dc45e26a4c	Установки насосные и аксессуары	fcb4042c-e08f-46e1-b076-08dc45e26a4c
7a5ce8ef-c388-43e9-b020-08dc45e26a4c	Плитка, керамогранит	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
7eac0c64-6489-483b-b111-08dc45e26a4c	Структурированные кабельные системы (СКС)	fcb4042c-e08f-46e1-b076-08dc45e26a4c
7ecc9aea-5478-4fc9-b002-08dc45e26a4c	Фасонный прокат	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
7f5efe5c-1d34-4f80-b00f-08dc45e26a4c	Гидроизоляционные материалы	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
8597c656-0a9c-4a08-b05b-08dc45e26a4c	Древесина профилированная	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
898aba13-3965-4553-b0fd-08dc45e26a4c	Системы оповещения (СОУЭ)	fcb4042c-e08f-46e1-b076-08dc45e26a4c
8a769916-73e5-42dc-b08c-08dc45e26a4c	Светотехнические изделия	fcb4042c-e08f-46e1-b076-08dc45e26a4c
8d7b4e8e-ba8c-49b6-b0de-08dc45e26a4c	Воздуховоды и комплектующие	fcb4042c-e08f-46e1-b076-08dc45e26a4c
912fbfff-874a-45df-b018-08dc45e26a4c	Материалы лакокрасочные, антикоррозийные, защитные и аналогичные покрытия, клеи	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
9134012a-4337-4119-b0cb-08dc45e26a4c	Изделия металлические для ВК и ОВ	fcb4042c-e08f-46e1-b076-08dc45e26a4c
9138f71f-3b35-48a0-b10e-08dc45e26a4c	Шлагбаумы и автоматика для ворот	fcb4042c-e08f-46e1-b076-08dc45e26a4c
914bbb4a-6934-40d6-b0f2-08dc45e26a4c	Оборудование ИТП	fcb4042c-e08f-46e1-b076-08dc45e26a4c
98730101-f740-42d3-b0c8-08dc45e26a4c	Колодцы и комплектующие	fcb4042c-e08f-46e1-b076-08dc45e26a4c
af829ace-b812-4605-b0a9-08dc45e26a4c	Арматура запорная и регулирующая	fcb4042c-e08f-46e1-b076-08dc45e26a4c
b5446a0f-aaa7-4d8e-b037-08dc45e26a4c	Материалы и изделия геосинтетические и из природного волокна\n	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
b5c8e8e3-3f7d-4c03-b077-08dc45e26a4c	Кабельно-проводниковая продукция	fcb4042c-e08f-46e1-b076-08dc45e26a4c
c1cc6f10-52f8-4c8b-b102-08dc45e26a4c	Системы видеонаблюдения (CCTV)	fcb4042c-e08f-46e1-b076-08dc45e26a4c
c591e79a-a201-4ec3-b00e-08dc45e26a4c	Готовые металлоизделия (закладные)	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
c73bf9b9-c85f-4c6f-b00b-08dc45e26a4c	Арматура	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
d0851306-efa4-4310-b083-08dc45e26a4c	Комплектные низковольтные устройства (НКУ)	fcb4042c-e08f-46e1-b076-08dc45e26a4c
d313ed95-b3b1-43bc-b028-08dc45e26a4c	Отделочные покрытия для пола	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
dd895679-2838-4f31-b0f9-08dc45e26a4c	Система автоматической пожарной сигнализации	fcb4042c-e08f-46e1-b076-08dc45e26a4c
e902707c-a944-460a-b0b2-08dc45e26a4c	Пожарное оборудование	fcb4042c-e08f-46e1-b076-08dc45e26a4c
f4c5c4b4-8b89-41e7-b0af-08dc45e26a4c	Лотки водооводные и комплектующие	fcb4042c-e08f-46e1-b076-08dc45e26a4c
f57d26b9-c73b-4284-aff1-08dc45e26a4c	Листовые материалы	2a31abf0-cc58-46c8-afdd-08dc45e26a4c
fa9acefc-5831-42cb-b13e-08dc45e26a4c	Теплоизоляция и шумоизоляция	c4a8b16e-6454-41a4-b11f-08dc45e26a4c
fbd91859-1563-4e5c-b10c-08dc45e26a4c	Домофоны и переговорные устройства	fcb4042c-e08f-46e1-b076-08dc45e26a4c
00977c67-4a88-4156-b138-08dc45e26a4c	Химический анкер	041ff01f-6745-486e-b12b-08dc45e26a4c
023a2783-9a7e-4be7-affd-08dc45e26a4c	Лист перфорированный	5e3099b1-36b5-4a48-aff9-08dc45e26a4c
026822d3-6070-46c8-b08a-08dc45e26a4c	Щиты управления	d0851306-efa4-4310-b083-08dc45e26a4c
06f399db-b159-4407-b07f-08dc45e26a4c	Кабели радиочастотные (коаксиальные)	b5c8e8e3-3f7d-4c03-b077-08dc45e26a4c
07715fc1-24d4-4cbc-b104-08dc45e26a4c	Видеорегистраторы и видеосерверы	c1cc6f10-52f8-4c8b-b102-08dc45e26a4c
07ca01cd-7a3c-4b50-b114-08dc45e26a4c	Патч-корды, соединительные шнуры	7eac0c64-6489-483b-b111-08dc45e26a4c
089db14d-4bdb-4d8a-b054-08dc45e26a4c	Элементы лестниц	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
099fe60b-c3fa-4b59-b0e6-08dc45e26a4c	Конвекторы отопления	74a26daa-3b63-43f7-b0e3-08dc45e26a4c
0aca8169-3117-467b-aff6-08dc45e26a4c	Асбестовый лист	f57d26b9-c73b-4284-aff1-08dc45e26a4c
0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	Вентили, задвижки, затворы	af829ace-b812-4605-b0a9-08dc45e26a4c
0b7c0f78-c0f8-4478-b099-08dc45e26a4c	Удлинители, сетевые фильтры, переходники, штепсельные вилки	4ea0cb7e-13a4-424e-b093-08dc45e26a4c
0bbb02e8-6f66-42f7-b0c5-08dc45e26a4c	Насосные установки с одним насососм	79e31cae-99dc-4764-b0c4-08dc45e26a4c
0ca31077-2521-424b-b050-08dc45e26a4c	Изделия лифтовых шахт	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
0cc27efa-6f20-4b03-afe6-08dc45e26a4c	Наливной пол	0ebf8c2c-b19c-4729-afe2-08dc45e26a4c
0f1d7a1c-fc11-423c-b0cd-08dc45e26a4c	Вентиляционные диффузоры	9134012a-4337-4119-b0cb-08dc45e26a4c
0fdaaa02-e2a2-41a5-afe4-08dc45e26a4c	Шпатлевки	0ebf8c2c-b19c-4729-afe2-08dc45e26a4c
10944fd8-8d1a-4f19-affc-08dc45e26a4c	Лист горячекатаный стальной 	5e3099b1-36b5-4a48-aff9-08dc45e26a4c
12a2ad7a-9533-489e-b0c6-08dc45e26a4c	Насосные установки с двумя насососм	79e31cae-99dc-4764-b0c4-08dc45e26a4c
12ab54b9-b102-4b2e-b016-08dc45e26a4c	Реечный потолок	2197a736-df52-4079-b013-08dc45e26a4c
1418309b-06c7-4602-b10f-08dc45e26a4c	Шлагбаумы	9138f71f-3b35-48a0-b10e-08dc45e26a4c
14479d07-528b-4323-b061-08dc45e26a4c	Игровое оборудование	1e7ae76e-f9a5-44f8-b05f-08dc45e26a4c
14515bc4-c4bb-42f6-b04d-08dc45e26a4c	Балки (КПД)	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
150d0c7f-dd85-4110-b12d-08dc45e26a4c	Дюбели	041ff01f-6745-486e-b12b-08dc45e26a4c
15e0ab53-c330-4839-b01c-08dc45e26a4c	Эмали	912fbfff-874a-45df-b018-08dc45e26a4c
1888d571-7603-4798-b0a4-08dc45e26a4c	Фитинги для полиэтиленовых труб	71c9e989-0a91-40c3-b0a2-08dc45e26a4c
18ec31d2-cf2a-43f5-b13f-08dc45e26a4c	Теплоизоляция	fa9acefc-5831-42cb-b13e-08dc45e26a4c
197c359d-ad6f-4bcf-b0fb-08dc45e26a4c	Приборы приёмно-контрольные для АПС	dd895679-2838-4f31-b0f9-08dc45e26a4c
1c1a86d3-f9b3-4174-b000-08dc45e26a4c	Полоса	5e3099b1-36b5-4a48-aff9-08dc45e26a4c
1c2b9801-766c-4e95-b12c-08dc45e26a4c	Саморезы	041ff01f-6745-486e-b12b-08dc45e26a4c
1c97b81f-3856-413d-b0a8-08dc45e26a4c	Фитинги для труб в ППУ изоляции	71c9e989-0a91-40c3-b0a2-08dc45e26a4c
1d0cb7c9-eba9-4070-b02b-08dc45e26a4c	Ламинат	d313ed95-b3b1-43bc-b028-08dc45e26a4c
1d5dff63-1024-4e3c-b08e-08dc45e26a4c	Традиционные светильники	8a769916-73e5-42dc-b08c-08dc45e26a4c
1ea490de-5b25-414e-b117-08dc45e26a4c	Активное сетевое оборудование	7eac0c64-6489-483b-b111-08dc45e26a4c
1ff236d1-2e5b-4c50-b0bf-08dc45e26a4c	Писсуары	169ea0d6-4f85-44ca-b0ba-08dc45e26a4c
227a32ee-bb1f-4137-b057-08dc45e26a4c	Арматурные каркасы	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
22967abd-4dda-4306-b049-08dc45e26a4c	Плиты канальные	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
23621aa7-29f0-43e1-b0f6-08dc45e26a4c	Датчики АОВ	914bbb4a-6934-40d6-b0f2-08dc45e26a4c
23be5956-a173-4ec9-b0d7-08dc45e26a4c	Вентиляторы бытовые	18f965a7-3ae9-4ccd-b0d3-08dc45e26a4c
23d464f7-aa2c-4133-b0a1-08dc45e26a4c	Плита электрическая	49beedd0-84ab-4a52-b0a0-08dc45e26a4c
243b8f7a-94da-4483-b125-08dc45e26a4c	Трубы из сшитого полиэтилена	1fe51d67-57a7-4186-b121-08dc45e26a4c
24aeb398-862e-45c5-b012-08dc45e26a4c	Мембраны	7f5efe5c-1d34-4f80-b00f-08dc45e26a4c
25c9379c-c1c0-4d33-afff-08dc45e26a4c	Лист просечно-вытяжной	5e3099b1-36b5-4a48-aff9-08dc45e26a4c
2873fac7-5f31-4f49-b023-08dc45e26a4c	Керамическая плитка	7a5ce8ef-c388-43e9-b020-08dc45e26a4c
28ae17cb-a14e-4782-afeb-08dc45e26a4c	Известь	0ebf8c2c-b19c-4729-afe2-08dc45e26a4c
28e468d3-4431-441b-b135-08dc45e26a4c	Крепеж для вентиляции	041ff01f-6745-486e-b12b-08dc45e26a4c
2997f178-9527-4306-b00c-08dc45e26a4c	Изделия из арматуры (сетки)	c73bf9b9-c85f-4c6f-b00b-08dc45e26a4c
2bef5b76-c02f-45b0-b01a-08dc45e26a4c	Краски для наружных работ	912fbfff-874a-45df-b018-08dc45e26a4c
2cdc5139-b9a9-4d2b-b032-08dc45e26a4c	Газоны	6204595e-47dc-4475-b031-08dc45e26a4c
2d659db7-f30d-446d-b097-08dc45e26a4c	Коробки установочные	4ea0cb7e-13a4-424e-b093-08dc45e26a4c
2e3dfc1b-b921-4f73-b12e-08dc45e26a4c	Дюбель-гвозди	041ff01f-6745-486e-b12b-08dc45e26a4c
2efe1b50-a9aa-41b8-aff4-08dc45e26a4c	Профиль для гипсокартона и аксессуары для монтажа	f57d26b9-c73b-4284-aff1-08dc45e26a4c
2f60e3d9-40d5-44b3-b0df-08dc45e26a4c	Воздуховоды оцинкованные	8d7b4e8e-ba8c-49b6-b0de-08dc45e26a4c
31b5ec0e-522e-4612-b011-08dc45e26a4c	Пароизоляция	7f5efe5c-1d34-4f80-b00f-08dc45e26a4c
31ddd018-65ae-46dc-b0e9-08dc45e26a4c	Баки расширительные	55057065-8aa9-458d-b0e8-08dc45e26a4c
31f4fa68-acc4-4b51-b122-08dc45e26a4c	Трубы стальные	1fe51d67-57a7-4186-b121-08dc45e26a4c
33d6926a-3175-482c-b06d-08dc45e26a4c	Двери деревянные	14a3db06-96a7-4d04-b067-08dc45e26a4c
364632ff-03ba-490e-b088-08dc45e26a4c	Щиты освещения	d0851306-efa4-4310-b083-08dc45e26a4c
368f79bb-710b-4879-b070-08dc45e26a4c	Двери алюминиевые	14a3db06-96a7-4d04-b067-08dc45e26a4c
386aac2e-13a0-4be0-aff5-08dc45e26a4c	Сетки штукатурные	f57d26b9-c73b-4284-aff1-08dc45e26a4c
39137cde-acd7-4384-b0cf-08dc45e26a4c	Воздухонагреватели	9134012a-4337-4119-b0cb-08dc45e26a4c
39f76b64-967f-4ef1-afe0-08dc45e26a4c	Галька, гравий, щебень, смеси	176c7c26-76fb-41ed-afde-08dc45e26a4c
3ad558a3-21fa-41c1-b01d-08dc45e26a4c	Покрытия для дерева	912fbfff-874a-45df-b018-08dc45e26a4c
3b871c75-d2c3-449d-b13a-08dc45e26a4c	Средства организации дорожного движения	55c9e107-5c05-4499-b139-08dc45e26a4c
3bd20420-5465-4b53-afe5-08dc45e26a4c	Штукатурные профили	0ebf8c2c-b19c-4729-afe2-08dc45e26a4c
3be6347a-acad-401a-b01e-08dc45e26a4c	Грунтовки	912fbfff-874a-45df-b018-08dc45e26a4c
3c82da1a-db06-4876-b09e-08dc45e26a4c	Средства защиты рук	753e4ac5-aa3f-459c-b09a-08dc45e26a4c
3ca9dafc-5339-4775-afef-08dc45e26a4c	Смеси асфальтобетонные	3647aa86-4ed8-459e-afed-08dc45e26a4c
3d03985a-26da-4fda-b144-08dc45e26a4c	Изоляция базальтовая	fa9acefc-5831-42cb-b13e-08dc45e26a4c
3d0db1dd-9b1f-4a49-b115-08dc45e26a4c	Плинты и кроссы	7eac0c64-6489-483b-b111-08dc45e26a4c
3e067e9f-8a18-4fc4-b0bb-08dc45e26a4c	Ванны	169ea0d6-4f85-44ca-b0ba-08dc45e26a4c
3e1f6e1c-d1f9-48a3-b0d2-08dc45e26a4c	Наружние водосточные системы	9134012a-4337-4119-b0cb-08dc45e26a4c
41220ef4-a634-4723-b019-08dc45e26a4c	Краски для внутренних работ	912fbfff-874a-45df-b018-08dc45e26a4c
41a363f4-4751-486d-b015-08dc45e26a4c	Растровый потолок Грильято	2197a736-df52-4079-b013-08dc45e26a4c
42e75951-9bd0-466a-b129-08dc45e26a4c	Трубы оцинкованные 	1fe51d67-57a7-4186-b121-08dc45e26a4c
433a8261-5cb6-4ba8-afe3-08dc45e26a4c	Штукатурки	0ebf8c2c-b19c-4729-afe2-08dc45e26a4c
433b4ad4-4ed6-4418-b108-08dc45e26a4c	Контроллеры систем доступа	3eeed534-3096-4889-b105-08dc45e26a4c
438dbdc2-bd05-4f6e-b02d-08dc45e26a4c	Кварцвинил	d313ed95-b3b1-43bc-b028-08dc45e26a4c
43c00e8c-7302-4e9e-b134-08dc45e26a4c	Хомуты	041ff01f-6745-486e-b12b-08dc45e26a4c
4422f14a-bf6c-483c-b128-08dc45e26a4c	Трубы в ППУ изоляции	1fe51d67-57a7-4186-b121-08dc45e26a4c
448a4e3c-f3df-47f6-aff8-08dc45e26a4c	Фанера 	f57d26b9-c73b-4284-aff1-08dc45e26a4c
44d60047-9d2f-4355-b04e-08dc45e26a4c	Стеновые панели (КПД)	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
44fdffbf-742e-4e9f-b0c2-08dc45e26a4c	Смесители	169ea0d6-4f85-44ca-b0ba-08dc45e26a4c
45815fa3-b793-4114-b07b-08dc45e26a4c	Кабельная арматура	b5c8e8e3-3f7d-4c03-b077-08dc45e26a4c
46b6b368-4e8a-49fc-b064-08dc45e26a4c	Облицовочные фасадные материалы	3965aa2a-0c9d-4b71-b063-08dc45e26a4c
46bdfe5d-e960-4b2d-b127-08dc45e26a4c	Трубы полиэтиленовые	1fe51d67-57a7-4186-b121-08dc45e26a4c
48fb21f4-770b-4c94-b058-08dc45e26a4c	Фундаментальные подушки	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
49b52a17-08a2-4ca6-b0dc-08dc45e26a4c	Клапаны обратные, дроссель	59a52cbd-21a9-4d77-b0da-08dc45e26a4c
4a45ee8b-88b7-4abb-b06a-08dc45e26a4c	Окна деревянные	14a3db06-96a7-4d04-b067-08dc45e26a4c
4ae7cbd2-ed44-41e5-b09d-08dc45e26a4c	Средства защиты органов зрения и лица	753e4ac5-aa3f-459c-b09a-08dc45e26a4c
4b6daa36-e856-43a0-b029-08dc45e26a4c	Линолеумы	d313ed95-b3b1-43bc-b028-08dc45e26a4c
4c3a9121-3a31-47c9-b0b1-08dc45e26a4c	Лотки бетонные	f4c5c4b4-8b89-41e7-b0af-08dc45e26a4c
4dc75800-844b-4eda-b00d-08dc45e26a4c	Арматура композитная	c73bf9b9-c85f-4c6f-b00b-08dc45e26a4c
4dd064bf-5b04-43df-afea-08dc45e26a4c	Цемент	0ebf8c2c-b19c-4729-afe2-08dc45e26a4c
4f5a7866-e59c-4102-b01b-08dc45e26a4c	Краски для дорожной разметки	912fbfff-874a-45df-b018-08dc45e26a4c
501b1a17-e4af-4601-b0bd-08dc45e26a4c	Мойки	169ea0d6-4f85-44ca-b0ba-08dc45e26a4c
50c2111d-47bd-4ff0-b0b5-08dc45e26a4c	Сплинклеры	e902707c-a944-460a-b0b2-08dc45e26a4c
519d69c9-e184-4769-b0e2-08dc45e26a4c	Покрытие теплоогнезащитное и аксессуары	8d7b4e8e-ba8c-49b6-b0de-08dc45e26a4c
523dee49-e8ce-49f9-b0d6-08dc45e26a4c	Вентиляторы радиальные	18f965a7-3ae9-4ccd-b0d3-08dc45e26a4c
53544ad0-dd3c-44a0-b090-08dc45e26a4c	Комплектующие и аксессуары для светильников	8a769916-73e5-42dc-b08c-08dc45e26a4c
53ffa55e-0ea3-4668-b01f-08dc45e26a4c	Клеи	912fbfff-874a-45df-b018-08dc45e26a4c
5517d607-8e5e-4249-b0b9-08dc45e26a4c	Счетчики	3e856e5c-aac8-47bf-b0b6-08dc45e26a4c
55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	Клапаны	af829ace-b812-4605-b0a9-08dc45e26a4c
55f062d7-d948-4487-b136-08dc45e26a4c	Элементы крепления для инженерных систем	041ff01f-6745-486e-b12b-08dc45e26a4c
56e303d6-a6cf-473f-b123-08dc45e26a4c	Трубы полипропиленовые	1fe51d67-57a7-4186-b121-08dc45e26a4c
579bc48a-82e6-4b2a-b118-08dc45e26a4c	Коммутаторы, уличные станции и коммутационные узлы	7eac0c64-6489-483b-b111-08dc45e26a4c
59651b32-96bc-4fd9-b12a-08dc45e26a4c	Трубы стальные профильные	1fe51d67-57a7-4186-b121-08dc45e26a4c
59876868-1257-45ac-b069-08dc45e26a4c	Окна алюминиевые	14a3db06-96a7-4d04-b067-08dc45e26a4c
5a59190f-3529-4e10-affe-08dc45e26a4c	Лист рифленый 	5e3099b1-36b5-4a48-aff9-08dc45e26a4c
5b74fcf5-628c-4755-b08b-08dc45e26a4c	Оборудование низковольтное	d0851306-efa4-4310-b083-08dc45e26a4c
5b791af2-fc53-42a7-b0ea-08dc45e26a4c	Водонагревательное оборудование	55057065-8aa9-458d-b0e8-08dc45e26a4c
5c28ddff-ca76-4690-b11e-08dc45e26a4c	ТВ Антенны	3813d5fc-2661-4dba-b11c-08dc45e26a4c
5c413c9a-f7b3-4f0f-b130-08dc45e26a4c	Винты	041ff01f-6745-486e-b12b-08dc45e26a4c
5c5837c4-5e97-4236-b0f0-08dc45e26a4c	Опоры неподвижные	35c37b1d-066f-49a6-b0ef-08dc45e26a4c
5c6ead95-f253-469f-b0e7-08dc45e26a4c	Крепление для радиаторов 	74a26daa-3b63-43f7-b0e3-08dc45e26a4c
5d01cdbf-33bf-4cfc-b021-08dc45e26a4c	Напольная плитка	7a5ce8ef-c388-43e9-b020-08dc45e26a4c
5d14f410-8ec6-4a26-b0fa-08dc45e26a4c	Шкафы автоматики	dd895679-2838-4f31-b0f9-08dc45e26a4c
5db0cc0e-374b-47f1-b10d-08dc45e26a4c	Переговорные устройства и аксессуары к ним	fbd91859-1563-4e5c-b10c-08dc45e26a4c
5dd227e4-8282-41c1-b07d-08dc45e26a4c	Силовые разъемы	b5c8e8e3-3f7d-4c03-b077-08dc45e26a4c
5dfb7128-e9fc-4a38-b0b0-08dc45e26a4c	Лотки пластиковые	f4c5c4b4-8b89-41e7-b0af-08dc45e26a4c
5e67bd10-c6a3-4f86-b078-08dc45e26a4c	Кабели	b5c8e8e3-3f7d-4c03-b077-08dc45e26a4c
5fed5707-d758-4cfb-b017-08dc45e26a4c	Натяжные потолки	2197a736-df52-4079-b013-08dc45e26a4c
608483b5-895c-452a-b038-08dc45e26a4c	Георешетки	b5446a0f-aaa7-4d8e-b037-08dc45e26a4c
61b5c510-5cb7-485b-b081-08dc45e26a4c	Кабель витая пара	b5c8e8e3-3f7d-4c03-b077-08dc45e26a4c
635e7684-1c88-4bc3-b0e5-08dc45e26a4c	Радиаторы биметаллические	74a26daa-3b63-43f7-b0e3-08dc45e26a4c
63e850ad-dd12-4bf7-b140-08dc45e26a4c	Виброизоляция	fa9acefc-5831-42cb-b13e-08dc45e26a4c
67d365f3-0319-452d-b025-08dc45e26a4c	Обои бумажные	417090a9-a63a-480c-b024-08dc45e26a4c
68be9bef-8aa8-46e7-b133-08dc45e26a4c	Заглушки	041ff01f-6745-486e-b12b-08dc45e26a4c
6b38668e-2287-43c9-b008-08dc45e26a4c	Круг	1e4ef696-c57f-4c50-b007-08dc45e26a4c
6bfb0492-5c4c-4b0d-b036-08dc45e26a4c	Материалы посадочные и аксессуары	6204595e-47dc-4475-b031-08dc45e26a4c
6c77e047-efd8-4dec-b04a-08dc45e26a4c	Сборные приямки (КПД)	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
6d3b9459-256b-4e69-b027-08dc45e26a4c	Обои акриловые	417090a9-a63a-480c-b024-08dc45e26a4c
704ec625-dfda-40a5-b13d-08dc45e26a4c	Указатели	55c9e107-5c05-4499-b139-08dc45e26a4c
70ba3504-c464-40ea-b0d1-08dc45e26a4c	Кровельные водосточные воронки и аэраторы	9134012a-4337-4119-b0cb-08dc45e26a4c
712baa53-02e3-4cdf-b103-08dc45e26a4c	Видеокамеры	c1cc6f10-52f8-4c8b-b102-08dc45e26a4c
71c3e4a9-2067-4bd5-b0c0-08dc45e26a4c	Гигиенический душ	169ea0d6-4f85-44ca-b0ba-08dc45e26a4c
71cd9eb4-db65-4eab-b091-08dc45e26a4c	Металлоконструкции для уличного освещения	8a769916-73e5-42dc-b08c-08dc45e26a4c
72d83129-8d3f-4ae2-aff0-08dc45e26a4c	Растворы строительные	3647aa86-4ed8-459e-afed-08dc45e26a4c
73160bb9-5526-4799-b065-08dc45e26a4c	Материалы навесной фасадной системы с воздушным зазором	3965aa2a-0c9d-4b71-b063-08dc45e26a4c
74ac15dd-861e-4038-b11b-08dc45e26a4c	Инжекторы и сплиттеры PoE	7eac0c64-6489-483b-b111-08dc45e26a4c
75563e1f-aa34-4258-b116-08dc45e26a4c	Телекоммуникационные шкафы и стойки	7eac0c64-6489-483b-b111-08dc45e26a4c
75d55e1a-004a-4471-b092-08dc45e26a4c	Системы управления освещением	8a769916-73e5-42dc-b08c-08dc45e26a4c
7725783a-c8a8-4f40-aff3-08dc45e26a4c	Листы гипсоволокнистые	f57d26b9-c73b-4284-aff1-08dc45e26a4c
788d4a45-c647-48ea-b0bc-08dc45e26a4c	Раковины	169ea0d6-4f85-44ca-b0ba-08dc45e26a4c
7932f288-6ebe-471c-b059-08dc45e26a4c	Опорные плиты 	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
7982d8ea-f728-4c67-b142-08dc45e26a4c	Изоляция из вспененного полиэтилена	fa9acefc-5831-42cb-b13e-08dc45e26a4c
79975c09-8617-47c9-b0e0-08dc45e26a4c	Воздуховоды гибкие	8d7b4e8e-ba8c-49b6-b0de-08dc45e26a4c
79f20683-1f04-47eb-b044-08dc45e26a4c	Сваи	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
7c993429-f88e-4dd9-b02c-08dc45e26a4c	Напольные плинтусы, пороги, подложка и аксессуары	d313ed95-b3b1-43bc-b028-08dc45e26a4c
7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	Краны шаровые	af829ace-b812-4605-b0a9-08dc45e26a4c
7d6385a9-e16a-46e6-b039-08dc45e26a4c	Геоматы	b5446a0f-aaa7-4d8e-b037-08dc45e26a4c
7d7ba3ff-518b-4e32-b0ff-08dc45e26a4c	Оповещатели аварийные	898aba13-3965-4553-b0fd-08dc45e26a4c
7edfab7a-8f18-4b1a-b06f-08dc45e26a4c	Двери противопожарные	14a3db06-96a7-4d04-b067-08dc45e26a4c
7f450e40-c4d5-4419-b0ec-08dc45e26a4c	Полотенцесушители водяные	79abaa88-6a08-46f9-b0eb-08dc45e26a4c
7f95998e-5b23-407f-b03f-08dc45e26a4c	Продукция битумная	5a36a454-378d-4c11-b03d-08dc45e26a4c
81441981-776a-4d18-b095-08dc45e26a4c	Изделия скрытого монтажа	4ea0cb7e-13a4-424e-b093-08dc45e26a4c
82849fc6-2e39-4344-b0dd-08dc45e26a4c	Клапаны воздушные	59a52cbd-21a9-4d77-b0da-08dc45e26a4c
82e1c8fd-e80a-4319-b045-08dc45e26a4c	Плиты перекрытий (КПД)	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
83a517fa-b78c-458d-b08f-08dc45e26a4c	Источники света (лампы)	8a769916-73e5-42dc-b08c-08dc45e26a4c
83e611b3-cec5-4510-b126-08dc45e26a4c	Трубы гофрированные	1fe51d67-57a7-4186-b121-08dc45e26a4c
84c5c08e-8ce4-48d5-b00a-08dc45e26a4c	Квадрат	1e4ef696-c57f-4c50-b007-08dc45e26a4c
85689c27-f2a9-4310-b06b-08dc45e26a4c	Подоконные плиты	14a3db06-96a7-4d04-b067-08dc45e26a4c
863eabc4-1dc4-4fe3-b109-08dc45e26a4c	Замки и защелки	3eeed534-3096-4889-b105-08dc45e26a4c
871a4612-1fa6-4a82-b003-08dc45e26a4c	Уголок	7ecc9aea-5478-4fc9-b002-08dc45e26a4c
876d4620-d80c-4f22-b10a-08dc45e26a4c	Кнопки выхода	3eeed534-3096-4889-b105-08dc45e26a4c
88e4074c-52d5-495e-b04f-08dc45e26a4c	Диафрагма жесткости (КПД)	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
892eb7d7-03c5-410a-b0c1-08dc45e26a4c	Умывальники	169ea0d6-4f85-44ca-b0ba-08dc45e26a4c
8ad086e4-64c4-456f-b047-08dc45e26a4c	Парапеты (КПД)	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
8b0ac952-1b5a-46e3-b075-08dc45e26a4c	Комплектующие для окон, дверей, витражей	14a3db06-96a7-4d04-b067-08dc45e26a4c
8c8e15d2-84bc-474f-b004-08dc45e26a4c	Швеллер	7ecc9aea-5478-4fc9-b002-08dc45e26a4c
8cd105b8-af98-4202-b06e-08dc45e26a4c	Двери стальные	14a3db06-96a7-4d04-b067-08dc45e26a4c
8dc1c28a-ec89-4c21-b03b-08dc45e26a4c	Материалы геосотовые (геоячейки)	b5446a0f-aaa7-4d8e-b037-08dc45e26a4c
8ecaa294-7e93-42b8-b087-08dc45e26a4c	Щиты автоматического ввода резерва	d0851306-efa4-4310-b083-08dc45e26a4c
8f3d0c11-4b33-43b9-b001-08dc45e26a4c	Стеклопластик рулонный	5e3099b1-36b5-4a48-aff9-08dc45e26a4c
8f64a101-7e01-491f-b11d-08dc45e26a4c	Кронштейны для ТВ	3813d5fc-2661-4dba-b11c-08dc45e26a4c
935c9f3e-7fe6-4462-b060-08dc45e26a4c	Спортивное оборудование	1e7ae76e-f9a5-44f8-b05f-08dc45e26a4c
936740b3-9372-4dfe-b0c3-08dc45e26a4c	Подводка и шланги	169ea0d6-4f85-44ca-b0ba-08dc45e26a4c
95d8e924-9f3e-4b34-b010-08dc45e26a4c	Гидроизоляция	7f5efe5c-1d34-4f80-b00f-08dc45e26a4c
9610c338-aea2-4c72-b0b8-08dc45e26a4c	Термометры и термоманометры	3e856e5c-aac8-47bf-b0b6-08dc45e26a4c
96bf7800-cf62-4981-b068-08dc45e26a4c	Окна, блоки оконные, двери балконные ПВХ	14a3db06-96a7-4d04-b067-08dc45e26a4c
971ef9a7-fa5d-4265-b051-08dc45e26a4c	Изделия вентиляционных шахт	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
9762c3a8-5695-4f44-aff7-08dc45e26a4c	Лист ЦСП	f57d26b9-c73b-4284-aff1-08dc45e26a4c
979d1a13-d47a-42d3-b05a-08dc45e26a4c	Кольца, крышки колец, днища	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
97a1b671-444b-43cc-b141-08dc45e26a4c	Шумоизоляция	fa9acefc-5831-42cb-b13e-08dc45e26a4c
9bdb4af7-7ef6-4b13-b106-08dc45e26a4c	Идентификаторы	3eeed534-3096-4889-b105-08dc45e26a4c
9bf83a3b-ad3f-463b-b0f7-08dc45e26a4c	Электроприводы	914bbb4a-6934-40d6-b0f2-08dc45e26a4c
9d8e191d-aa63-4bc9-b066-08dc45e26a4c	Бетонные фасадные плитки	3965aa2a-0c9d-4b71-b063-08dc45e26a4c
9f18a939-2f32-4798-b0a5-08dc45e26a4c	Фитинги для стальных труб	71c9e989-0a91-40c3-b0a2-08dc45e26a4c
9f582239-c2b3-4587-b13c-08dc45e26a4c	Навигация	55c9e107-5c05-4499-b139-08dc45e26a4c
9f94a861-2371-45b2-b0c9-08dc45e26a4c	Люки чугунные	98730101-f740-42d3-b0c8-08dc45e26a4c
a00435db-5de4-486f-b085-08dc45e26a4c	Шкаф вводно-распределительный	d0851306-efa4-4310-b083-08dc45e26a4c
a0998d0b-20a5-4b1d-b053-08dc45e26a4c	Ступени лестниц	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
a0ae6856-57f8-4dde-b048-08dc45e26a4c	Лотки канальные	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
a0b08d3b-0525-4cce-b05c-08dc45e26a4c	Терассная доска	8597c656-0a9c-4a08-b05b-08dc45e26a4c
a15088f7-a1b9-4c50-aff2-08dc45e26a4c	Листы гипсокартонные	f57d26b9-c73b-4284-aff1-08dc45e26a4c
a16ff470-035a-47c2-b07a-08dc45e26a4c	Кабеленесущие системы	b5c8e8e3-3f7d-4c03-b077-08dc45e26a4c
a204c36e-8fe5-4d5e-b0ae-08dc45e26a4c	Коллекторы и комплектующие	af829ace-b812-4605-b0a9-08dc45e26a4c
a2335687-02b8-4313-b043-08dc45e26a4c	Кирпич строительный	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
a3798b12-702e-40fa-afe1-08dc45e26a4c	Песок	176c7c26-76fb-41ed-afde-08dc45e26a4c
a3e7b79e-131a-4759-b035-08dc45e26a4c	Мульчирование почвы	6204595e-47dc-4475-b031-08dc45e26a4c
a59a2250-3e22-4be7-b041-08dc45e26a4c	Плитки тротуарные	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
a6da0d8a-c182-4a7c-b009-08dc45e26a4c	Проволока	1e4ef696-c57f-4c50-b007-08dc45e26a4c
a729e0ac-4545-457f-b0f1-08dc45e26a4c	Компенсаторы сильфонные	35c37b1d-066f-49a6-b0ef-08dc45e26a4c
a762c779-90c4-4dd5-b0fc-08dc45e26a4c	Извещатели АПС	dd895679-2838-4f31-b0f9-08dc45e26a4c
a919ccad-e635-439b-b074-08dc45e26a4c	Люки	14a3db06-96a7-4d04-b067-08dc45e26a4c
a955d7ea-01de-455a-b0a6-08dc45e26a4c	Фитинги для труб из сшитого полиэтилена	71c9e989-0a91-40c3-b0a2-08dc45e26a4c
a97fcd07-f8ec-4b45-b13b-08dc45e26a4c	Плакаты электробезопасности	55c9e107-5c05-4499-b139-08dc45e26a4c
a9c32535-0ec3-4e2a-b132-08dc45e26a4c	Заклепки	041ff01f-6745-486e-b12b-08dc45e26a4c
aaf21552-f82e-4d7f-b0db-08dc45e26a4c	Клапаны противопожарные	59a52cbd-21a9-4d77-b0da-08dc45e26a4c
ab378c1b-d811-40f2-b03c-08dc45e26a4c	Геополотна 	b5446a0f-aaa7-4d8e-b037-08dc45e26a4c
ab91d760-7bef-4ca6-b072-08dc45e26a4c	Ворота	14a3db06-96a7-4d04-b067-08dc45e26a4c
abe6fac1-287f-4eae-b0ad-08dc45e26a4c	Фильтры	af829ace-b812-4605-b0a9-08dc45e26a4c
ac531355-64fc-4569-b046-08dc45e26a4c	Плиты дорожные железобетонные (для стройплощадок)	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
ac6d47a6-7d82-466f-b112-08dc45e26a4c	Патч-панели	7eac0c64-6489-483b-b111-08dc45e26a4c
ad27c4c9-2769-45c7-b055-08dc45e26a4c	Фундаментные блоки (ФБС)	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
ade03b95-245a-4704-b06c-08dc45e26a4c	Витражи алюминиевые	14a3db06-96a7-4d04-b067-08dc45e26a4c
aded3bde-f78b-40cb-b05e-08dc45e26a4c	Доска обрезная	8597c656-0a9c-4a08-b05b-08dc45e26a4c
af161dca-8b5d-4aa5-b0ed-08dc45e26a4c	Полотенцесушители электрические	79abaa88-6a08-46f9-b0eb-08dc45e26a4c
af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	Фитинги полипропиленовые для труб	71c9e989-0a91-40c3-b0a2-08dc45e26a4c
afc3d87b-efa0-4e04-b0b4-08dc45e26a4c	Комплектующие для пожарного оборудования	e902707c-a944-460a-b0b2-08dc45e26a4c
b0cf7778-e381-4bf8-b079-08dc45e26a4c	Провода и шнуры	b5c8e8e3-3f7d-4c03-b077-08dc45e26a4c
b242282b-7497-4e9c-b03a-08dc45e26a4c	Маты дренажные	b5446a0f-aaa7-4d8e-b037-08dc45e26a4c
b343e1dd-a633-4165-b107-08dc45e26a4c	Считыватели	3eeed534-3096-4889-b105-08dc45e26a4c
b4cf3ce1-0183-42ee-b0f5-08dc45e26a4c	Шкафы управления вентилятором	914bbb4a-6934-40d6-b0f2-08dc45e26a4c
b59131bc-ed75-4fca-afee-08dc45e26a4c	Смеси бетонные готовые к использованию	3647aa86-4ed8-459e-afed-08dc45e26a4c
b66f2c7a-d2aa-4931-afec-08dc45e26a4c	Затирка для швов плитки	0ebf8c2c-b19c-4729-afe2-08dc45e26a4c
b76b8ff2-4dd2-4686-b101-08dc45e26a4c	Усилители мощности для систем оповещения	898aba13-3965-4553-b0fd-08dc45e26a4c
b9ec1643-362c-482e-b07e-08dc45e26a4c	Кабели для систем охранно-пожарной сигнализации и контроля доступа	b5c8e8e3-3f7d-4c03-b077-08dc45e26a4c
bb78f323-6494-41da-b094-08dc45e26a4c	Изделия открытого монтажа	4ea0cb7e-13a4-424e-b093-08dc45e26a4c
bbaea4c3-93a4-4e42-b098-08dc45e26a4c	Звонки (электроустановочные изделия)	4ea0cb7e-13a4-424e-b093-08dc45e26a4c
bc31dd9b-c6b0-47f3-b022-08dc45e26a4c	Керамогранит	7a5ce8ef-c388-43e9-b020-08dc45e26a4c
bca10743-1e06-49cd-b096-08dc45e26a4c	Аксессуары для электроустановочных изделий	4ea0cb7e-13a4-424e-b093-08dc45e26a4c
bcbf3286-9ff5-4bb6-b0fe-08dc45e26a4c	Табло эвакуационное	898aba13-3965-4553-b0fd-08dc45e26a4c
bcd273a0-a301-4962-b02f-08dc45e26a4c	Мебель	09209002-4f16-4c37-b02e-08dc45e26a4c
bcf6bc15-0c3f-4344-b07c-08dc45e26a4c	Коробки распределительные	b5c8e8e3-3f7d-4c03-b077-08dc45e26a4c
bd4cf0df-e76e-4814-b034-08dc45e26a4c	Семена трав	6204595e-47dc-4475-b031-08dc45e26a4c
bde3e6dd-a793-4829-b089-08dc45e26a4c	Ящики с понижающим трансформатором	d0851306-efa4-4310-b083-08dc45e26a4c
bee2ddb0-c48e-47c2-b11a-08dc45e26a4c	Оборудование для передачи сигналов	7eac0c64-6489-483b-b111-08dc45e26a4c
c2786989-eba1-45f9-b0cc-08dc45e26a4c	Решетки вентиляционные	9134012a-4337-4119-b0cb-08dc45e26a4c
c2a537eb-afa5-4d21-b042-08dc45e26a4c	Камни бортовые	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
c319ac53-86b1-459a-b0c7-08dc45e26a4c	Насосные установки с тремя насососм	79e31cae-99dc-4764-b0c4-08dc45e26a4c
c5cf751e-4fa4-4168-b0ce-08dc45e26a4c	Шумоглушители	9134012a-4337-4119-b0cb-08dc45e26a4c
c6b372ed-3711-466f-b09c-08dc45e26a4c	Средства защиты органов дыхания	753e4ac5-aa3f-459c-b09a-08dc45e26a4c
c6e412ca-00ad-4c85-b0f8-08dc45e26a4c	Регуляторы скорости	914bbb4a-6934-40d6-b0f2-08dc45e26a4c
c82b3f20-06c1-4b95-b084-08dc45e26a4c	Щиты распределительные	d0851306-efa4-4310-b083-08dc45e26a4c
c83a021e-0845-47c5-b04c-08dc45e26a4c	Сборные ригеля (КПД)	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
c8bb5f68-6d61-417f-b0ca-08dc45e26a4c	Люки полимерно-песчаные	98730101-f740-42d3-b0c8-08dc45e26a4c
cd52e951-856f-42bc-b0a7-08dc45e26a4c	Фитинги для канализации	71c9e989-0a91-40c3-b0a2-08dc45e26a4c
ce0efe7e-8760-4dcb-b052-08dc45e26a4c	Перемычки железобетонные	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
ce3a1719-e51d-4cec-b0f4-08dc45e26a4c	Арматура и автоматика ИТП	914bbb4a-6934-40d6-b0f2-08dc45e26a4c
cee74bd7-8f0a-48d9-b100-08dc45e26a4c	Громкоговорители	898aba13-3965-4553-b0fd-08dc45e26a4c
cf2df3bf-9020-4d2e-b0b7-08dc45e26a4c	Манометры	3e856e5c-aac8-47bf-b0b6-08dc45e26a4c
cf4193bf-3040-4ee1-b0ee-08dc45e26a4c	Комплектующие для полотенцесушителей	79abaa88-6a08-46f9-b0eb-08dc45e26a4c
d1d8ef93-00c1-4f74-b124-08dc45e26a4c	Трубы металлопластиковые	1fe51d67-57a7-4186-b121-08dc45e26a4c
d251f293-f347-4620-b0d9-08dc45e26a4c	Комплектующие для вентиляции	18f965a7-3ae9-4ccd-b0d3-08dc45e26a4c
d2cfd871-eef4-4618-affa-08dc45e26a4c	Листы оцинкованные	5e3099b1-36b5-4a48-aff9-08dc45e26a4c
d3c47604-cc5e-4c91-b137-08dc45e26a4c	Монтажные ленты	041ff01f-6745-486e-b12b-08dc45e26a4c
d3dcfc01-22ee-431b-b0e4-08dc45e26a4c	Радиаторы стальные	74a26daa-3b63-43f7-b0e3-08dc45e26a4c
d6422f1a-8830-42eb-b12f-08dc45e26a4c	Анкера	041ff01f-6745-486e-b12b-08dc45e26a4c
d82604bb-ff2f-4a83-b082-08dc45e26a4c	Кабель оптический	b5c8e8e3-3f7d-4c03-b077-08dc45e26a4c
d9387349-02aa-4529-b03e-08dc45e26a4c	Битумы	5a36a454-378d-4c11-b03d-08dc45e26a4c
d9fca3e7-b61f-496f-b033-08dc45e26a4c	Саженцы деревьев и кустарников	6204595e-47dc-4475-b031-08dc45e26a4c
db6359c0-bcc2-45d6-b030-08dc45e26a4c	Оформление интерьера	09209002-4f16-4c37-b02e-08dc45e26a4c
dbbb9c35-7d40-48f0-b0b3-08dc45e26a4c	Шкафы пожарные 	e902707c-a944-460a-b0b2-08dc45e26a4c
dbd7bdda-37eb-4296-b071-08dc45e26a4c	Двери алюминиевые противопожарные	14a3db06-96a7-4d04-b067-08dc45e26a4c
dd239843-5848-4f8f-b143-08dc45e26a4c	Изоляция из вспененного каучука	fa9acefc-5831-42cb-b13e-08dc45e26a4c
de4da99b-1ce6-4154-b014-08dc45e26a4c	Подвесной потолок	2197a736-df52-4079-b013-08dc45e26a4c
de9d5969-7053-4c86-b110-08dc45e26a4c	Автоматика для ворот	9138f71f-3b35-48a0-b10e-08dc45e26a4c
df1b1ea7-11c4-4b8c-b0d5-08dc45e26a4c	Вентиляторы канальные	18f965a7-3ae9-4ccd-b0d3-08dc45e26a4c
df9f098d-f553-4c64-b062-08dc45e26a4c	Качели	1e7ae76e-f9a5-44f8-b05f-08dc45e26a4c
e1e2b7aa-5572-43df-b056-08dc45e26a4c	Стаканы	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
e28ff662-148c-4072-b120-08dc45e26a4c	Делители и разъемы для ТВ	3813d5fc-2661-4dba-b11c-08dc45e26a4c
e3e35fb9-2c4d-467d-b0d8-08dc45e26a4c	Приточно-вытяжные установки	18f965a7-3ae9-4ccd-b0d3-08dc45e26a4c
e40ca38e-f1d1-43e9-b0be-08dc45e26a4c	Унитазы	169ea0d6-4f85-44ca-b0ba-08dc45e26a4c
e4f7be47-5b12-43fa-b086-08dc45e26a4c	Щиты этажные	d0851306-efa4-4310-b083-08dc45e26a4c
e682864a-bbab-4676-b10b-08dc45e26a4c	Пульты и приборы управления СКУД	3eeed534-3096-4889-b105-08dc45e26a4c
e731976e-b9b8-4b69-b113-08dc45e26a4c	Розетки, адаптеры, модули, разъемы СКС	7eac0c64-6489-483b-b111-08dc45e26a4c
e893803d-d93e-4ab2-b09b-08dc45e26a4c	Спецобувь	753e4ac5-aa3f-459c-b09a-08dc45e26a4c
ea50d3df-97fe-419d-b02a-08dc45e26a4c	Доски паркетные	d313ed95-b3b1-43bc-b028-08dc45e26a4c
eb097290-d86a-431e-afe7-08dc45e26a4c	Цементно-песчаные смеси	0ebf8c2c-b19c-4729-afe2-08dc45e26a4c
eb5ce80f-7fd4-4346-b080-08dc45e26a4c	Кабели интерфейсные	b5c8e8e3-3f7d-4c03-b077-08dc45e26a4c
ef13516d-1b52-438d-b09f-08dc45e26a4c	Средства защиты от поражения током	753e4ac5-aa3f-459c-b09a-08dc45e26a4c
f03580ab-1132-4afb-b05d-08dc45e26a4c	Брус обрезной	8597c656-0a9c-4a08-b05b-08dc45e26a4c
f0579436-0935-420c-b073-08dc45e26a4c	Шторы протипорожарные	14a3db06-96a7-4d04-b067-08dc45e26a4c
f0617938-2df2-47b8-b131-08dc45e26a4c	Болты	041ff01f-6745-486e-b12b-08dc45e26a4c
f22a50c6-0374-4935-affb-08dc45e26a4c	Лист холоднокатаный	5e3099b1-36b5-4a48-aff9-08dc45e26a4c
f23f8ca2-eb27-4ef9-b0d0-08dc45e26a4c	Решетки водоотводные	9134012a-4337-4119-b0cb-08dc45e26a4c
f406a8c0-0868-404c-afe9-08dc45e26a4c	Ремонтные составы	0ebf8c2c-b19c-4729-afe2-08dc45e26a4c
f4bef6ab-4df6-4204-b08d-08dc45e26a4c	Светильники светодиодные (LED)	8a769916-73e5-42dc-b08c-08dc45e26a4c
f62f8cd5-d09d-411b-afdf-08dc45e26a4c	Глины, грунты, смеси грунтосодержащие	176c7c26-76fb-41ed-afde-08dc45e26a4c
f7e864ef-723c-438a-b0e1-08dc45e26a4c	Изделия фасонные	8d7b4e8e-ba8c-49b6-b0de-08dc45e26a4c
f8ae8e32-7d4f-45f7-b005-08dc45e26a4c	Швеллер гнутый	7ecc9aea-5478-4fc9-b002-08dc45e26a4c
f8e32707-4c2c-469b-b006-08dc45e26a4c	Двутавр	7ecc9aea-5478-4fc9-b002-08dc45e26a4c
f8e34c63-e4e2-4a7a-b026-08dc45e26a4c	Обои флизелиновые	417090a9-a63a-480c-b024-08dc45e26a4c
fac08785-5b41-4c97-b0d4-08dc45e26a4c	Вентиляторы осевые	18f965a7-3ae9-4ccd-b0d3-08dc45e26a4c
fb247a45-0dfa-427b-afe8-08dc45e26a4c	Клеи для плитки, камня и изоляции	0ebf8c2c-b19c-4729-afe2-08dc45e26a4c
fb5e1ad2-40b4-4ffe-b0f3-08dc45e26a4c	Оборудование тепловычеслительное	914bbb4a-6934-40d6-b0f2-08dc45e26a4c
fd4ea71f-cf7c-47a6-b119-08dc45e26a4c	Конвертеры, переходники, модули SFP	7eac0c64-6489-483b-b111-08dc45e26a4c
ffdb6acc-d31d-461d-b04b-08dc45e26a4c	Колонны	4eb71bd9-53c8-49c8-b040-08dc45e26a4c
\.


--
-- TOC entry 3457 (class 0 OID 16597)
-- Dependencies: 220
-- Data for Name: Filebase; Type: TABLE DATA; Schema: public; Owner: b2h
--

COPY public."Filebase" ("FileId", "Name", "Path", "CreatedAt", "UpdatedAt", "Type") FROM stdin;
2	Тест раз.rvt	Source/Materials/Files/	2024-03-14 13:25:04.663711+00	2024-03-14 13:25:04.663758+00	application/octet-stream
1002	Перемычки.rfa	Source/Materials/Files/	2024-03-18 08:59:09.692078+00	2024-03-18 08:59:09.692103+00	
1003	Сваи.rfa	Source/Materials/Files/	2024-03-18 09:07:57.304963+00	2024-03-18 09:07:57.304965+00	
1004	Смеситель для умывальника.rfa	Source/Materials/Files/	2024-03-18 09:10:47.955806+00	2024-03-18 09:10:47.955808+00	
1005	Смеситель для раковины.rfa	Source/Materials/Files/	2024-03-18 09:12:10.045324+00	2024-03-18 09:12:10.045326+00	
1006	Смеситель для душа.rfa	Source/Materials/Files/	2024-03-18 09:12:20.218035+00	2024-03-18 09:12:20.218037+00	
1007	Смеситель для мойки.rfa	Source/Materials/Files/	2024-03-18 09:12:27.382748+00	2024-03-18 09:12:27.382749+00	
1008	Клапан - дроссель ДК.rfa	Source/Materials/Files/	2024-03-18 09:23:19.832001+00	2024-03-18 09:23:19.832003+00	
1009	Клапан - дроссель ДК-100.rfa	Source/Materials/Files/	2024-03-18 09:27:05.05477+00	2024-03-18 09:27:05.054773+00	
1010	Клапан обратный вентиляционный.rfa	Source/Materials/Files/	2024-03-18 09:36:34.345261+00	2024-03-18 09:36:34.345264+00	
1011	Клапан_обратный_вентиляционный_Ду.rfa	Source/Materials/Files/	2024-03-18 09:36:50.014961+00	2024-03-18 09:36:50.014962+00	
1012	Клапан - дроссель ДК-100.rfa	Source/Materials/Files/	2024-03-18 09:37:01.795107+00	2024-03-18 09:37:01.795108+00	
1013	Клапан воздушный регулирующий прямоугольный.rfa	Source/Materials/Files/	2024-03-18 09:46:59.345947+00	2024-03-18 09:46:59.345948+00	
1014	Клапан избыточного давления воздуха.rfa	Source/Materials/Files/	2024-03-18 09:46:59.511723+00	2024-03-18 09:46:59.511724+00	
1015	Клапан_воздушный_регулирующий_прямоугольный.rfa	Source/Materials/Files/	2024-03-18 09:51:04.476257+00	2024-03-18 09:51:04.476258+00	
1016	Клапан_избыточного_давления_воздуха.rfa	Source/Materials/Files/	2024-03-18 09:51:07.718063+00	2024-03-18 09:51:07.718064+00	
1017	Клапан_воздушный_регулирующий_прямоугольный.rfa	Source/Materials/Files/	2024-03-18 09:58:41.852241+00	2024-03-18 09:58:41.852242+00	
1018	Клапан_избыточного_давления_воздуха.rfa	Source/Materials/Files/	2024-03-18 09:58:42.114351+00	2024-03-18 09:58:42.114352+00	
1019	Муфта комбинированная разъемная с нар резьбой.rfa	Source/Materials/Files/	2024-03-18 10:11:49.254629+00	2024-03-18 10:11:49.254631+00	
1020	Муфта комбинированная с наружной резьбой.rfa	Source/Materials/Files/	2024-03-18 10:11:49.382087+00	2024-03-18 10:11:49.382088+00	
1021	Втулка под фланец ПЭ.rfa	Source/Materials/Files/	2024-03-18 10:12:36.459091+00	2024-03-18 10:12:36.459092+00	
1022	Заглушка ПЭ.rfa	Source/Materials/Files/	2024-03-18 10:13:39.897992+00	2024-03-18 10:13:39.897992+00	
1023	Заглушка полипропиленовая.rfa	Source/Materials/Files/	2024-03-18 10:23:21.435319+00	2024-03-18 10:23:21.43532+00	
1024	Заглушка канализационная.rfa	Source/Materials/Files/	2024-03-18 10:23:21.594342+00	2024-03-18 10:23:21.594343+00	
1025	Отвод полипропиленовый.rfa	Source/Materials/Files/	2024-03-18 10:23:21.688467+00	2024-03-18 10:23:21.688468+00	
1026	Переход полипропиленовый.rfa	Source/Materials/Files/	2024-03-18 10:23:21.793549+00	2024-03-18 10:23:21.79355+00	
1027	Тройник полипропиленовый.rfa	Source/Materials/Files/	2024-03-18 10:23:21.912612+00	2024-03-18 10:23:21.912613+00	
1028	Скамейка.rfa	Source/Materials/Files/	2024-03-18 10:28:22.741585+00	2024-03-18 10:28:22.741586+00	
1029	Зеркало со скрытой подсветкой сверху и снизу.rfa	Source/Materials/Files/	2024-03-18 10:28:22.85664+00	2024-03-18 10:28:22.856641+00	
1030	Диван.rfa	Source/Materials/Files/	2024-03-18 10:28:22.983537+00	2024-03-18 10:28:22.983538+00	
1031	Кресло.rfa	Source/Materials/Files/	2024-03-18 10:28:23.119612+00	2024-03-18 10:28:23.119613+00	
1032	Стол.rfa	Source/Materials/Files/	2024-03-18 10:28:23.201054+00	2024-03-18 10:28:23.201055+00	
1033	Кашпо.rfa	Source/Materials/Files/	2024-03-18 10:28:23.287245+00	2024-03-18 10:28:23.287246+00	
1034	Велосипедная парковка.rfa	Source/Materials/Files/	2024-03-18 10:28:23.575008+00	2024-03-18 10:28:23.575009+00	
1035	Урна.rfa	Source/Materials/Files/	2024-03-18 10:28:23.707097+00	2024-03-18 10:28:23.707098+00	
1036	Журнальные столики.rfa	Source/Materials/Files/	2024-03-18 10:28:23.873142+00	2024-03-18 10:28:23.873142+00	
1037	Часы.rfa	Source/Materials/Files/	2024-03-18 10:28:23.974501+00	2024-03-18 10:28:23.974501+00	
1038	Ступени лестниц ЛС11.rfa	Source/Materials/Files/	2024-03-18 10:35:24.663308+00	2024-03-18 10:35:24.663309+00	
1039	Ступени лестниц ЛС12.rfa	Source/Materials/Files/	2024-03-18 10:35:24.776441+00	2024-03-18 10:35:24.776442+00	
1040	Опорные плиты ОП.rfa	Source/Materials/Files/	2024-03-18 10:37:46.907732+00	2024-03-18 10:37:46.907733+00	
1041	Щит этажный ЩЭ.rfa	Source/Materials/Files/	2024-03-18 10:58:51.043443+00	2024-03-18 10:58:51.043444+00	
1042	Ящики с понижающим трансформатором.rfa	Source/Materials/Files/	2024-03-18 10:59:12.16733+00	2024-03-18 10:59:12.167331+00	
1043	Светильник НПБ01-60(ПСХ60).rfa	Source/Materials/Files/	2024-03-18 11:02:22.442818+00	2024-03-18 11:02:22.442819+00	
1044	Светильник ДПА 5040.rfa	Source/Materials/Files/	2024-03-18 11:02:22.668058+00	2024-03-18 11:02:22.668059+00	
1045	Светильник НПП 3006.rfa	Source/Materials/Files/	2024-03-18 11:02:22.895727+00	2024-03-18 11:02:22.895729+00	
1046	Лампа накаливания.rfa	Source/Materials/Files/	2024-03-18 11:02:48.563046+00	2024-03-18 11:02:48.563046+00	
1047	Датчик движения.rfa	Source/Materials/Files/	2024-03-18 11:03:38.5707+00	2024-03-18 11:03:38.570701+00	
1048	Ревизия полипропиленовая канализационная 110мм.rfa	Source/Materials/Files/	2024-03-18 11:05:04.556184+00	2024-03-18 11:05:04.556185+00	
1049	Задвижка клиновая фланцевая чугунная PN16.rfa	Source/Materials/Files/	2024-03-18 11:07:12.556792+00	2024-03-18 11:07:12.556792+00	
1050	Клапан запорно-измерительный в комплекте с импульсной трубкой.rfa	Source/Materials/Files/	2024-03-18 11:09:02.490265+00	2024-03-18 11:09:02.490266+00	
1051	Клапан запорный радиаторный, прямой, латунный, Ду15, РN10.rfa	Source/Materials/Files/	2024-03-18 11:09:02.615182+00	2024-03-18 11:09:02.615183+00	
1052	Клапан обратный латунный межфланцевый.rfa	Source/Materials/Files/	2024-03-18 11:09:02.718823+00	2024-03-18 11:09:02.718824+00	
1053	Клапан обратный латунный пружинный муфтовый.rfa	Source/Materials/Files/	2024-03-18 11:09:02.805234+00	2024-03-18 11:09:02.805235+00	
1054	Клапан термостатический прямой Ду=15мм.rfa	Source/Materials/Files/	2024-03-18 11:09:02.928088+00	2024-03-18 11:09:02.928089+00	
1055	Коллектор_проходной,_латунный_на_7_контуров.rfa	Source/Materials/Files/	2024-03-18 11:10:53.074592+00	2024-03-18 11:10:53.074592+00	
1056	Лоток водоотводный пластиковый.rfa	Source/Materials/Files/	2024-03-18 11:14:01.022915+00	2024-03-18 11:14:01.022916+00	
1057	Лоток водоотводной бетонный.rfa	Source/Materials/Files/	2024-03-18 11:14:34.829372+00	2024-03-18 11:14:34.829373+00	
1058	Шкаф пожарный ШПК-310НЗ.rfa	Source/Materials/Files/	2024-03-18 11:19:21.741127+00	2024-03-18 11:19:21.741128+00	
1059	Ороситель спринклерный.rfa	Source/Materials/Files/	2024-03-18 11:20:27.37424+00	2024-03-18 11:20:27.37424+00	
1060	Манометр.rfa	Source/Materials/Files/	2024-03-18 11:21:25.762483+00	2024-03-18 11:21:25.762483+00	
1061	Термометр.rfa	Source/Materials/Files/	2024-03-18 11:21:41.942342+00	2024-03-18 11:21:41.942343+00	
1062	Счетчик воды универсальный с импульсным выходом.rfa	Source/Materials/Files/	2024-03-18 11:22:41.92074+00	2024-03-18 11:22:41.920741+00	
1063	Теплосчетчик ультразвуковой.rfa	Source/Materials/Files/	2024-03-18 11:22:42.029263+00	2024-03-18 11:22:42.029263+00	
1064	Ванна сталь.rfa	Source/Materials/Files/	2024-03-18 11:23:24.994925+00	2024-03-18 11:23:24.994926+00	
1065	Раковина, фарфор.rfa	Source/Materials/Files/	2024-03-18 11:23:46.264124+00	2024-03-18 11:23:46.264125+00	
1066	Мойка эмалированная в комплекте с сифоном.rfa	Source/Materials/Files/	2024-03-18 11:24:28.729852+00	2024-03-18 11:24:28.729853+00	
1067	Унитаз керамический с низко расположенным бачком и косым выпуском УнТ.rfa	Source/Materials/Files/	2024-03-18 11:25:01.71028+00	2024-03-18 11:25:01.710281+00	
1068	Душ гигиенический со смесителем СМ-Н.rfa	Source/Materials/Files/	2024-03-18 11:25:36.807117+00	2024-03-18 11:25:36.807118+00	
1069	Умывальник керамический в комплекте со смесителем и сифоном.rfa	Source/Materials/Files/	2024-03-18 11:27:45.828173+00	2024-03-18 11:27:45.828173+00	
1070	Диффузор вытяжной.rfa	Source/Materials/Files/	2024-03-18 11:28:42.078463+00	2024-03-18 11:28:42.078464+00	
1071	Воронка кровельная ТП-01.100.Э.rfa	Source/Materials/Files/	2024-03-18 11:29:41.098338+00	2024-03-18 11:29:41.098339+00	
1072	Воронка водосточная.rfa	Source/Materials/Files/	2024-03-18 11:30:06.83949+00	2024-03-18 11:30:06.839491+00	
1073	Вентилятор осевой.rfa	Source/Materials/Files/	2024-03-18 11:31:45.54666+00	2024-03-18 11:31:45.546661+00	
1074	Вентилятор канальный.rfa	Source/Materials/Files/	2024-03-18 11:32:32.075131+00	2024-03-18 11:32:32.075132+00	
1075	Вентилятор радиальный.rfa	Source/Materials/Files/	2024-03-18 11:32:54.72981+00	2024-03-18 11:32:54.729811+00	
1076	Вентилятор бытовой.rfa	Source/Materials/Files/	2024-03-18 11:33:05.388929+00	2024-03-18 11:33:05.38893+00	
1077	Установка панельно-каркасная.rfa	Source/Materials/Files/	2024-03-18 11:33:29.609137+00	2024-03-18 11:33:29.609138+00	
1078	Клапан огнезадерживающий, канального типа  О-К.rfa	Source/Materials/Files/	2024-03-18 11:35:58.028632+00	2024-03-18 11:35:58.028633+00	
1079	Радиатор биметаллический секционный с боковым подключением 15 секции.rfa	Source/Materials/Files/	2024-03-18 11:38:17.406022+00	2024-03-18 11:38:17.406023+00	
1080	Конвектор электрический настенный.rfa	Source/Materials/Files/	2024-03-18 11:38:51.660424+00	2024-03-18 11:38:51.660425+00	
1081	Электроконвектор напольный.rfa	Source/Materials/Files/	2024-03-18 11:38:51.749663+00	2024-03-18 11:38:51.749664+00	
1082	Кронштейн крепления радиатора.rfa	Source/Materials/Files/	2024-03-18 11:39:35.482328+00	2024-03-18 11:39:35.482329+00	
1083	Бак мембранный.rfa	Source/Materials/Files/	2024-03-18 11:41:03.800313+00	2024-03-18 11:41:03.800314+00	
1084	Водонагреватель электрический проточный.rfa	Source/Materials/Files/	2024-03-18 11:41:22.128617+00	2024-03-18 11:41:22.128618+00	
1085	Полотенцесушитель хромированный М-образный.rfa	Source/Materials/Files/	2024-03-18 11:42:08.810867+00	2024-03-18 11:42:08.810868+00	
1086	Полотенцесушитель из оцинкованной стальной трубы М-образный.rfa	Source/Materials/Files/	2024-03-18 11:42:22.195852+00	2024-03-18 11:42:22.195853+00	
1087	Неподвижная опора для труб.rfa	Source/Materials/Files/	2024-03-18 11:43:04.491199+00	2024-03-18 11:43:04.4912+00	
1088	Компенсатор сильфонный осевой с внутренней гильзой и кожухом.rfa	Source/Materials/Files/	2024-03-18 11:43:44.334356+00	2024-03-18 11:43:44.334357+00	
1089	Компенсатор ПП петлеобразный.rfa	Source/Materials/Files/	2024-03-18 11:43:54.866955+00	2024-03-18 11:43:54.866956+00	
1090	Теплообменник  НН-14A.rfa	Source/Materials/Files/	2024-03-18 11:44:58.485166+00	2024-03-18 11:44:58.485167+00	
1091	Датчики АОВ.rfa	Source/Materials/Files/	2024-03-18 11:46:03.512316+00	2024-03-18 11:46:03.512317+00	
1092	Прибор приемно-контрольный и управления охранно-пожарный адресный Рубеж-МК1.rfa	Source/Materials/Files/	2024-03-18 11:46:58.289803+00	2024-03-18 11:46:58.289804+00	
1093	Прибор приемно-контрольный и управления охранно-пожарный адресный РУБЕЖ-2ОП.rfa	Source/Materials/Files/	2024-03-18 11:46:58.377434+00	2024-03-18 11:46:58.377434+00	
1094	Извещатель пожарный ручной адресный.rfa	Source/Materials/Files/	2024-03-18 11:48:19.476514+00	2024-03-18 11:48:19.476515+00	
1095	Видеорегистраторы и видеосерверы.rfa	Source/Materials/Files/	2024-03-18 11:54:09.82645+00	2024-03-18 11:54:09.826451+00	
1096	Бесконтактный считыватель SIP домофона.rfa	Source/Materials/Files/	2024-03-18 11:55:30.239021+00	2024-03-18 11:55:30.239022+00	
1097	Считыватель Mifare.rfa	Source/Materials/Files/	2024-03-18 11:55:30.3438+00	2024-03-18 11:55:30.3438+00	
1098	Автономный контроллер точек доступа в монтажной коробке.rfa	Source/Materials/Files/	2024-03-18 11:56:36.427096+00	2024-03-18 11:56:36.427097+00	
1099	Контроллер доступа со встроенным считывателем.rfa	Source/Materials/Files/	2024-03-18 11:56:36.558536+00	2024-03-18 11:56:36.558537+00	
1100	Контроллер SimpleLock системы мобильного доступа SmartAirkey (Mifare).rfa	Source/Materials/Files/	2024-03-18 11:56:36.639992+00	2024-03-18 11:56:36.639993+00	
1101	Замок электромагнитный.rfa	Source/Materials/Files/	2024-03-18 11:57:24.011562+00	2024-03-18 11:57:24.011563+00	
1102	Замок электромагнитный врезной нормально-открытый.rfa	Source/Materials/Files/	2024-03-18 11:57:24.108909+00	2024-03-18 11:57:24.10891+00	
1103	Замок электромеханический.rfa	Source/Materials/Files/	2024-03-18 11:57:24.193621+00	2024-03-18 11:57:24.193622+00	
1104	Антивандальная кнопка отрытия замка с подсветкой.rfa	Source/Materials/Files/	2024-03-18 11:57:46.17305+00	2024-03-18 11:57:46.173051+00	
1105	Трубка переговорная квартирная.rfa	Source/Materials/Files/	2024-03-19 06:17:51.675999+00	2024-03-19 06:17:51.676024+00	
1106	Комплект шлагбаума Came Gard 6000( с прямоугольной стрелой 6,85м).rfa	Source/Materials/Files/	2024-03-19 06:21:24.434569+00	2024-03-19 06:21:24.434571+00	
1107	Комплект шлагбаума, стрела 3м BR-PRO-RPD3000KIT.rfa	Source/Materials/Files/	2024-03-19 06:21:24.553597+00	2024-03-19 06:21:24.553599+00	
1108	Шлагбаум.rfa	Source/Materials/Files/	2024-03-19 06:21:24.779709+00	2024-03-19 06:21:24.779711+00	
1109	Тумба шлагбаума.rfa	Source/Materials/Files/	2024-03-19 06:21:24.926767+00	2024-03-19 06:21:24.926769+00	
1110	Патч-панель 24 порта.rfa	Source/Materials/Files/	2024-03-19 06:23:13.668518+00	2024-03-19 06:23:13.668521+00	
1111	Патч-панель 48 портов.rfa	Source/Materials/Files/	2024-03-19 06:23:13.799138+00	2024-03-19 06:23:13.799141+00	
1112	Розетка_компьютерная.rfa	Source/Materials/Files/	2024-03-19 06:24:03.525737+00	2024-03-19 06:24:03.525743+00	
1113	Розетка на DIN-рейку.rfa	Source/Materials/Files/	2024-03-19 06:24:03.691554+00	2024-03-19 06:24:03.691556+00	
1114	Шкаф телекоммуникационный.rfa	Source/Materials/Files/	2024-03-19 06:25:24.32567+00	2024-03-19 06:25:24.325671+00	
1115	Маршрутизатор.rfa	Source/Materials/Files/	2024-03-19 06:26:15.989253+00	2024-03-19 06:26:15.989254+00	
1116	Маршрутизатор Mikrotik.rfa	Source/Materials/Files/	2024-03-19 06:26:16.1171+00	2024-03-19 06:26:16.117101+00	
1117	Роутер Wi-Fi.rfa	Source/Materials/Files/	2024-03-19 06:26:16.22932+00	2024-03-19 06:26:16.229321+00	
1118	Коммутатор KKM100.rfa	Source/Materials/Files/	2024-03-19 06:33:27.608046+00	2024-03-19 06:33:27.608046+00	
1119	Коммутатор агрегации 48 портов.rfa	Source/Materials/Files/	2024-03-19 06:33:27.689298+00	2024-03-19 06:33:27.689299+00	
1120	Коммутатор.rfa	Source/Materials/Files/	2024-03-19 06:33:51.376444+00	2024-03-19 06:33:51.376444+00	
1121	Тумба для сумок.rfa	Source/Materials/Files/	2024-03-19 07:28:31.109361+00	2024-03-19 07:28:31.109362+00	
1122	Велосипедная парковка.rfa	Source/Materials/Files/	2024-03-19 07:28:31.487539+00	2024-03-19 07:28:31.48754+00	
1123	Металлическая двухуровневая полка.rfa	Source/Materials/Files/	2024-03-19 07:28:31.634702+00	2024-03-19 07:28:31.634702+00	
1124	Колесоотбойник металлический.rvt	Source/Materials/Files/	2024-03-19 07:28:31.755522+00	2024-03-19 07:28:31.755523+00	
1125	Воронка парапетная 100х100.rfa	Source/Materials/Files/	2024-03-19 08:42:50.373692+00	2024-03-19 08:42:50.373693+00	
1126	Воронка_желоба_металлическая_D_=_100.rfa	Source/Materials/Files/	2024-03-19 08:42:50.496672+00	2024-03-19 08:42:50.496673+00	
1127	Отвод стальной сварной.rfa	Source/Materials/Files/	2024-03-19 09:11:45.306842+00	2024-03-19 09:11:45.306886+00	
1128	Переход стальной сварной.rfa	Source/Materials/Files/	2024-03-19 09:11:45.662456+00	2024-03-19 09:11:45.662458+00	
1129	Тройник стальной сварной.rfa	Source/Materials/Files/	2024-03-19 09:11:45.818718+00	2024-03-19 09:11:45.818719+00	
1130	Кронштейн_для_желоба_металлический_D_=_100.rfa	Source/Materials/Files/	2024-03-19 09:13:23.951748+00	2024-03-19 09:13:23.95175+00	
1131	Тройник стальной сварной.rfa	Source/Materials/Files/	2024-03-19 09:30:19.298497+00	2024-03-19 09:30:19.298521+00	
1132	Переход стальной сварной.rfa	Source/Materials/Files/	2024-03-19 09:30:19.608468+00	2024-03-19 09:30:19.60847+00	
1133	Отвод стальной сварной.rfa	Source/Materials/Files/	2024-03-19 09:30:19.728199+00	2024-03-19 09:30:19.728201+00	
1134	Утка из тонколистовой оцинкованной стали.rfa	Source/Materials/Files/	2024-03-19 09:30:41.955374+00	2024-03-19 09:30:41.955376+00	
1135	Желоб водосточный металлический.rfa	Source/Materials/Files/	2024-03-19 09:36:53.110649+00	2024-03-19 09:36:53.110651+00	
1136	Колено верхнее трубы Ø100.rfa	Source/Materials/Files/	2024-03-19 09:56:59.936516+00	2024-03-19 09:56:59.936518+00	
1137	Колено нижнее трубы Ø100.rfa	Source/Materials/Files/	2024-03-19 09:57:00.05066+00	2024-03-19 09:57:00.050663+00	
1138	Труба_водосточная_металлическая_D_=_100.rfa	Source/Materials/Files/	2024-03-19 10:11:24.702348+00	2024-03-19 10:11:24.70235+00	
1139	Расходомер-счетчик электромагнитный.rfa	Source/Materials/Files/	2024-03-19 10:23:22.936747+00	2024-03-19 10:23:22.936749+00	
1140	Расходомер фланцевый.rfa	Source/Materials/Files/	2024-03-19 10:37:57.889239+00	2024-03-19 10:37:57.889241+00	
1141	Клапан противодымный_канальный_ прямоугольный.rfa	Source/Materials/Files/	2024-03-19 11:02:12.684558+00	2024-03-19 11:02:12.684586+00	
1142	Клапан_противодымный_стеновой_прямоугольный.rfa	Source/Materials/Files/	2024-03-19 11:02:13.185871+00	2024-03-19 11:02:13.185873+00	
1143	Клапан_огнездерживающий_канальный_круглый.rfa	Source/Materials/Files/	2024-03-19 11:02:13.39158+00	2024-03-19 11:02:13.391582+00	
1144	Клапан противодымный_канальный_ круглый.rfa	Source/Materials/Files/	2024-03-19 11:02:13.631393+00	2024-03-19 11:02:13.631395+00	
1145	Клапан противодымный_стеновой_круглый .rfa	Source/Materials/Files/	2024-03-19 11:02:13.752922+00	2024-03-19 11:02:13.752924+00	
1146	Желоб водосточный металлический.rfa	Source/Materials/Files/	2024-03-19 15:01:18.340348+00	2024-03-19 15:01:18.340372+00	
1147	Заглушка желоба.rfa	Source/Materials/Files/	2024-03-19 15:01:43.58388+00	2024-03-19 15:01:43.583882+00	
1148	Кронштейн для желоба металлический D = 100.rfa	Source/Materials/Files/	2024-03-19 15:01:58.536646+00	2024-03-19 15:01:58.536648+00	
1149	Сливная труба 100мм.rfa	Source/Materials/Files/	2024-03-19 15:07:57.613618+00	2024-03-19 15:07:57.61362+00	
1150	Кронштейн водосточной трубы.rfa	Source/Materials/Files/	2024-03-19 15:07:57.769033+00	2024-03-19 15:07:57.769035+00	
1151	Коробка распределительная.rfa	Source/Materials/Files/	2024-03-19 15:11:28.239917+00	2024-03-19 15:11:28.239919+00	
1152	Розетка силовая открытой установки.zip	Source/Materials/Files/	2024-03-19 15:15:55.148169+00	2024-03-19 15:15:55.14817+00	
1153	Розетка силовая скрытой установки.zip	Source/Materials/Files/	2024-03-19 15:15:55.40294+00	2024-03-19 15:15:55.402942+00	
1154	Щит распределительный навесной 600x600x400.rfa	Source/Materials/Files/	2024-03-19 15:20:10.562699+00	2024-03-19 15:20:10.562701+00	
1155	Щит распределительный квартирный ЩРВ-П-12.rfa	Source/Materials/Files/	2024-03-19 15:20:11.021971+00	2024-03-19 15:20:11.021972+00	
1156	ВРУ.zip	Source/Materials/Files/	2024-03-19 15:21:49.214793+00	2024-03-19 15:21:49.214795+00	
1157	Щит этажный ЩЭ.rfa	Source/Materials/Files/	2024-03-19 15:22:45.222388+00	2024-03-19 15:22:45.22239+00	
1158	Щит автоматического ввода резерва АВР-200-АВ-II.rfa	Source/Materials/Files/	2024-03-19 15:23:33.028587+00	2024-03-19 15:23:33.028589+00	
1159	Корпус ЩО.7z	Source/Materials/Files/	2024-03-19 15:24:58.770689+00	2024-03-19 15:24:58.770689+00	
1160	Корпус ЩНО.7z	Source/Materials/Files/	2024-03-19 15:24:59.03897+00	2024-03-19 15:24:59.038971+00	
1161	Щит управления обогревом воронок.rfa	Source/Materials/Files/	2024-03-19 15:25:33.847269+00	2024-03-19 15:25:33.847269+00	
1162	Автоматические выключатели.7z	Source/Materials/Files/	2024-03-19 15:33:36.828448+00	2024-03-19 15:33:36.828449+00	
1163	Светильник светодиодный круглый, настенный.rfa	Source/Materials/Files/	2024-03-19 15:35:37.540149+00	2024-03-19 15:35:37.540151+00	
1164	Светильник светодиодный квадратный, встраиваеый.rfa	Source/Materials/Files/	2024-03-19 15:37:40.210789+00	2024-03-19 15:37:40.21079+00	
1165	Светильник ВСР382.7z	Source/Materials/Files/	2024-03-20 07:43:52.133756+00	2024-03-20 07:43:52.133757+00	
1166	Уголок стальной неравнополочный.rfa	Source/Materials/Files/	2024-03-20 09:57:58.986772+00	2024-03-20 09:57:58.986773+00	
1167	Уголок стальной равнополочный.rfa	Source/Materials/Files/	2024-03-20 09:57:59.117921+00	2024-03-20 09:57:59.117923+00	
1168	Швеллер тип П.rfa	Source/Materials/Files/	2024-03-20 10:01:58.864226+00	2024-03-20 10:01:58.864227+00	
1169	Швеллер тип У.rfa	Source/Materials/Files/	2024-03-20 10:01:59.02307+00	2024-03-20 10:01:59.023071+00	
1170	Швеллер_Гнутый.rfa	Source/Materials/Files/	2024-03-20 10:02:23.461732+00	2024-03-20 10:02:23.461733+00	
1171	Двутавры стальные горячекатаные с параллельными гранями полок ГОСТ Р 57837-2017.7z	Source/Materials/Files/	2024-03-20 10:03:17.696569+00	2024-03-20 10:03:17.69657+00	
1172	Люки чугунные легкие тип Л (А15) В.rfa	Source/Materials/Files/	2024-03-20 10:07:26.349441+00	2024-03-20 10:07:26.349442+00	
1173	Люки чугунные легкие тип Л (А15) К.rfa	Source/Materials/Files/	2024-03-20 10:07:26.526131+00	2024-03-20 10:07:26.526132+00	
1174	Люки чугунные легкие тип Л (А15) ТС.rfa	Source/Materials/Files/	2024-03-20 10:07:26.691909+00	2024-03-20 10:07:26.69191+00	
1175	Люки чугунные тяжелые тип Т (С250) В.rfa	Source/Materials/Files/	2024-03-20 10:07:26.792118+00	2024-03-20 10:07:26.792119+00	
1176	Люки чугунные тяжелые тип Т (С250) К.rfa	Source/Materials/Files/	2024-03-20 10:07:26.883698+00	2024-03-20 10:07:26.883698+00	
1177	Люки чугунные тяжелые тип Т (С250) ТС.rfa	Source/Materials/Files/	2024-03-20 10:07:27.020199+00	2024-03-20 10:07:27.0202+00	
1178	Люки чугунные средние тип С (В120).rfa	Source/Materials/Files/	2024-03-20 10:07:27.128093+00	2024-03-20 10:07:27.128094+00	
1179	Люки чугунные средние тип С (В125).rfa	Source/Materials/Files/	2024-03-20 10:07:27.243619+00	2024-03-20 10:07:27.24362+00	
1180	Плинтус пластиковый ПВХ напольный 48х19мм.rfa	Source/Materials/Files/	2024-03-20 10:07:39.097641+00	2024-03-20 10:07:39.097642+00	
1181	Порог одноуровневый 30х900 мм .rfa	Source/Materials/Files/	2024-03-20 10:07:39.310664+00	2024-03-20 10:07:39.310665+00	
1182	Порог Т-образный.rfa	Source/Materials/Files/	2024-03-20 10:07:39.489458+00	2024-03-20 10:07:39.489459+00	
1183	Люк полимерный.rfa	Source/Materials/Files/	2024-03-20 10:07:52.561008+00	2024-03-20 10:07:52.561009+00	
1184	ФБС.7z	Source/Materials/Files/	2024-03-20 10:13:26.437939+00	2024-03-20 10:13:26.437939+00	
1185	спортивное обоорудование.7z	Source/Materials/Files/	2024-03-20 10:17:06.057525+00	2024-03-20 10:17:06.057526+00	
1186	Спортивный комплекс.rfa	Source/Materials/Files/	2024-03-20 10:17:06.421677+00	2024-03-20 10:17:06.421678+00	
1187	Игровой комплекс.rfa	Source/Materials/Files/	2024-03-20 10:17:36.340412+00	2024-03-20 10:17:36.340413+00	
1188	Карусель.rfa	Source/Materials/Files/	2024-03-20 10:18:04.061362+00	2024-03-20 10:18:04.061363+00	
1189	Качели.rfa	Source/Materials/Files/	2024-03-20 10:18:04.314266+00	2024-03-20 10:18:04.314267+00	
1190	Ворота_металлические.7z	Source/Materials/Files/	2024-03-20 10:22:08.511173+00	2024-03-20 10:22:08.511174+00	
1191	Ворота_Металлические противопожарные.7z	Source/Materials/Files/	2024-03-20 10:22:09.172174+00	2024-03-20 10:22:09.172175+00	
1192	Клапан запорный радиаторный, прямой, латунный, Ду20, РN10.rfa	Source/Materials/Files/	2024-03-20 11:23:00.987447+00	2024-03-20 11:23:00.987448+00	
1193	Клапан запорный радиаторный, угловой, латунный.rfa	Source/Materials/Files/	2024-03-20 11:23:01.121966+00	2024-03-20 11:23:01.121967+00	
1194	Люк_металический.rfa	Source/Materials/Files/	2024-03-20 11:38:41.414421+00	2024-03-20 11:38:41.414422+00	
1195	Люк_противопожарный ЛП.rfa	Source/Materials/Files/	2024-03-20 11:38:41.57279+00	2024-03-20 11:38:41.572791+00	
1196	звонок.7z	Source/Materials/Files/	2024-03-20 11:47:16.927956+00	2024-03-20 11:47:16.927958+00	
1197	Клапан регулирующий седельный двухходовой.rfa	Source/Materials/Files/	2024-03-20 11:53:43.293862+00	2024-03-20 11:53:43.293863+00	
1198	Клапан термостатический прямой Ду=20мм.rfa	Source/Materials/Files/	2024-03-20 12:03:33.778761+00	2024-03-20 12:03:33.778786+00	
1199	Клапан термостатический прямой Ду=20мм.rfa	Source/Materials/Files/	2024-03-20 12:03:34.195354+00	2024-03-20 12:03:34.195355+00	
1200	Клапан термостатический угловой.rfa	Source/Materials/Files/	2024-03-20 12:05:29.661337+00	2024-03-20 12:05:29.661339+00	
1201	Коробки установочные.7z	Source/Materials/Files/	2024-03-20 12:22:19.222647+00	2024-03-20 12:22:19.222671+00	
1202	Клапан балансировочный автоматический.rfa	Source/Materials/Files/	2024-03-20 12:34:09.477228+00	2024-03-20 12:34:09.47723+00	
1203	Клапан обратный полипропиленовый канализационный.rfa	Source/Materials/Files/	2024-03-20 12:40:41.835846+00	2024-03-20 12:40:41.835848+00	
1204	Люки чугунные тяжелые с квадаратным корпусом.rfa	Source/Materials/Files/	2024-03-20 14:30:45.191356+00	2024-03-20 14:30:45.191388+00	
1205	Задвижка клиновая фланцевая чугунная PN10.rfa	Source/Materials/Files/	2024-03-20 14:44:20.383271+00	2024-03-20 14:44:20.383273+00	
1206	Задвижка клиновая фланцевая чугунная PN16 с электроприводом.rfa	Source/Materials/Files/	2024-03-20 14:44:21.184851+00	2024-03-20 14:44:21.184893+00	
1207	Задвижка клиновая фланцевая чугунная PN16.rfa	Source/Materials/Files/	2024-03-20 14:44:21.457094+00	2024-03-20 14:44:21.457095+00	
1208	Задвижка клиновая фланцевая чугунная PN25.rfa	Source/Materials/Files/	2024-03-20 14:44:21.680765+00	2024-03-20 14:44:21.680767+00	
1209	Затвор дисковый поворотный чугунный.rfa	Source/Materials/Files/	2024-03-20 14:44:21.858355+00	2024-03-20 14:44:21.858357+00	
1210	Розетка открытой установки 1 местная 220В, 16А, IP20.rfa	Source/Materials/Files/	2024-03-20 14:46:25.783943+00	2024-03-20 14:46:25.783944+00	
1211	Розетка открытой установки 1 местная со шторкой 220В, 16А, IP44.rfa	Source/Materials/Files/	2024-03-20 14:46:26.012826+00	2024-03-20 14:46:26.012828+00	
1212	Розетка скрытой установки 1 местная с защитной крышкой 220В, 16А, IP20.rfa	Source/Materials/Files/	2024-03-20 14:47:19.249168+00	2024-03-20 14:47:19.24917+00	
1213	Розетка_двухместная_с заземляющим контактом_с защитными шторками и крышкой.rfa	Source/Materials/Files/	2024-03-20 14:47:19.601913+00	2024-03-20 14:47:19.601915+00	
1214	Рамка 1 местная для розеток.rfa	Source/Materials/Files/	2024-03-20 14:47:42.620158+00	2024-03-20 14:47:42.620161+00	
1215	Комплект автоматики для распашных ворот AM-5000KIT.rfa	Source/Materials/Files/	2024-03-21 08:33:23.320697+00	2024-03-21 08:33:23.320698+00	
1216	Автоматический привод для откатных ворот.rfa	Source/Materials/Files/	2024-03-21 08:33:23.442953+00	2024-03-21 08:33:23.442954+00	
1217	Клапан балансировочный ручной.rfa	Source/Materials/Files/	2024-03-21 08:34:50.029758+00	2024-03-21 08:34:50.029759+00	
1218	Модуль оптический.rfa	Source/Materials/Files/	2024-03-21 08:36:52.138888+00	2024-03-21 08:36:52.138889+00	
1219	Модуль оптический Osnovo.rfa	Source/Materials/Files/	2024-03-21 08:36:52.270206+00	2024-03-21 08:36:52.270207+00	
1220	Телевизор.7z	Source/Materials/Files/	2024-03-21 08:38:17.876199+00	2024-03-21 08:38:17.8762+00	
1221	Клапан запорный радиаторный нижнего подключения, прямой, латунный.rfa	Source/Materials/Files/	2024-03-21 08:45:56.932105+00	2024-03-21 08:45:56.932106+00	
1222	Камера цилиндрическая уличная.rfa	Source/Materials/Files/	2024-03-21 08:46:11.062975+00	2024-03-21 08:46:11.062976+00	
1223	камера_видеонаблюдения_внутренняя_купольная.rfa	Source/Materials/Files/	2024-03-21 08:46:11.539456+00	2024-03-21 08:46:11.539457+00	
1224	камера_видеонаблюдения_купольная.rfa	Source/Materials/Files/	2024-03-21 08:46:12.026427+00	2024-03-21 08:46:12.026428+00	
1225	Датчик давления DS-205B.rfa	Source/Materials/Files/	2024-03-21 09:06:32.621895+00	2024-03-21 09:06:32.621896+00	
1226	Камера цилиндрическая уличная.rfa	Source/Materials/Files/	2024-03-21 09:08:05.324846+00	2024-03-21 09:08:05.324847+00	
1227	Громкоговоритель_Настенный_SW.rfa	Source/Materials/Files/	2024-03-21 09:23:43.195895+00	2024-03-21 09:23:43.195897+00	
1228	Громкоговоритель_Рупорный_SHS.rfa	Source/Materials/Files/	2024-03-21 09:23:43.359797+00	2024-03-21 09:23:43.359798+00	
1229	Громкоговоритель_Настенный_SWS_W.rfa	Source/Materials/Files/	2024-03-21 09:23:43.619764+00	2024-03-21 09:23:43.619765+00	
1230	Громкоговоритель_Настенный_SWP.rfa	Source/Materials/Files/	2024-03-21 09:23:43.759102+00	2024-03-21 09:23:43.759103+00	
1231	Усилитель проводного вещания ROXTON AA-60.rfa	Source/Materials/Files/	2024-03-21 09:25:06.034984+00	2024-03-21 09:25:06.034985+00	
1232	Усилитель_МЕТА_УМ.rfa	Source/Materials/Files/	2024-03-21 09:25:06.298288+00	2024-03-21 09:25:06.298289+00	
1233	Усилитель трансляционный в комплекте с креплением.rfa	Source/Materials/Files/	2024-03-21 09:25:06.443531+00	2024-03-21 09:25:06.443533+00	
1234	Усилитель мощности РТС-2000.rfa	Source/Materials/Files/	2024-03-21 09:25:06.52435+00	2024-03-21 09:25:06.524351+00	
1235	Воздухонагреватель электрический.rfa	Source/Materials/Files/	2024-03-21 09:32:27.965737+00	2024-03-21 09:32:27.965738+00	
1236	Решетка водоприемная щелевая чугунная.rfa	Source/Materials/Files/	2024-03-21 09:46:40.832972+00	2024-03-21 09:46:40.832972+00	
1237	Оповощатель световой универсальный.rfa	Source/Materials/Files/	2024-03-21 10:05:48.428248+00	2024-03-21 10:05:48.42825+00	
1238	Оповощатель световой универсальный.rfa	Source/Materials/Files/	2024-03-21 10:55:17.507212+00	2024-03-21 10:55:17.507214+00	
1239	Оповещатель звуковой ОПОП 2-35.rfa	Source/Materials/Files/	2024-03-21 11:04:50.96502+00	2024-03-21 11:04:50.965021+00	
1240	Оповещатели комбинированные_МАЯК.rfa	Source/Materials/Files/	2024-03-21 11:23:32.427232+00	2024-03-21 11:23:32.427234+00	
1241	Оповещатель звуковой ОПОП 124-7.rfa	Source/Materials/Files/	2024-03-21 11:23:32.561279+00	2024-03-21 11:23:32.561281+00	
1242	Оповещатель звуковой Маяк-12(24)-3М.rfa	Source/Materials/Files/	2024-03-21 11:30:10.462807+00	2024-03-21 11:30:10.462809+00	
1243	Прибор приемно-контрольный ППК РИТМ.rfa	Source/Materials/Files/	2024-03-21 11:31:14.680894+00	2024-03-21 11:31:14.680895+00	
1244	Фильтр_кассетный_круглый.rfa	Source/Materials/Files/	2024-03-21 12:17:55.667129+00	2024-03-21 12:17:55.66713+00	
1245	Фильтр_кассетный_прямоугольный.rfa	Source/Materials/Files/	2024-03-21 12:17:55.878257+00	2024-03-21 12:17:55.878259+00	
1246	Фильтр магнитный фланцевый ФМФ.rfa	Source/Materials/Files/	2024-03-21 12:18:54.344326+00	2024-03-21 12:18:54.344328+00	
1247	Фильтр магнитомеханический муфтовый ФММ.rfa	Source/Materials/Files/	2024-03-21 12:18:54.535448+00	2024-03-21 12:18:54.535449+00	
1248	Фильтр сетчатый с пробкой, латунный, резьбовое соединение.rfa	Source/Materials/Files/	2024-03-21 12:20:24.874739+00	2024-03-21 12:20:24.87474+00	
1249	Фильтр_сетчатый_чугунный_фланцевый.rfa	Source/Materials/Files/	2024-03-21 12:20:25.40013+00	2024-03-21 12:20:25.400132+00	
1250	Писуар настенный.rfa	Source/Materials/Files/	2024-03-21 12:24:16.233772+00	2024-03-21 12:24:16.233773+00	
1251	Опора_неподвижная_стальная_в_пенополиуретановой_изоляции_в_полиэтиленовой.rfa	Source/Materials/Files/	2024-03-21 12:54:33.923583+00	2024-03-21 12:54:33.923584+00	
1252	Элемент неподвижной опоры.rfa	Source/Materials/Files/	2024-03-21 12:54:34.086769+00	2024-03-21 12:54:34.086771+00	
1253	Полотенцесушитель электрический.7z	Source/Materials/Files/	2024-03-21 12:56:32.7585+00	2024-03-21 12:56:32.758501+00	
1254	Тепловычислитель ТВ7-01М.rfa	Source/Materials/Files/	2024-03-21 12:58:22.907719+00	2024-03-21 12:58:22.90772+00	
1255	Реле разности давлений РД-2Р.rfa	Source/Materials/Files/	2024-03-21 13:03:23.806055+00	2024-03-21 13:03:23.806056+00	
1256	Теплосчетчик квартирный, импульсный выход.7z	Source/Materials/Files/	2024-03-21 13:11:49.884181+00	2024-03-21 13:11:49.884182+00	
1257	Грязевик_абонентский_вертикальный_фланцевый.rfa	Source/Materials/Files/	2024-03-21 13:59:23.573563+00	2024-03-21 13:59:23.573565+00	
1258	Шкафы автоматики и управления ШАУ.7z	Source/Materials/Files/	2024-03-21 14:07:14.077124+00	2024-03-21 14:07:14.077125+00	
1259	Извещатель пожарный_ИП 212-64.rfa	Source/Materials/Files/	2024-03-21 14:09:12.39093+00	2024-03-21 14:09:12.390931+00	
1260	Извещатель пожарный автономный ИП 212-50М.rfa	Source/Materials/Files/	2024-03-21 14:10:46.41315+00	2024-03-21 14:10:46.413151+00	
1261	Электропривод воздушной заслонки GQD 321.1A.rfa	Source/Materials/Files/	2024-03-21 14:18:53.046135+00	2024-03-21 14:18:53.046137+00	
1262	Насос дренажный.rfa	Source/Materials/Files/	2024-03-22 06:03:56.683145+00	2024-03-22 06:03:56.683147+00	
1263	Крестовина стальная фланцевая.rfa	Source/Materials/Files/	2024-03-22 06:25:10.759219+00	2024-03-22 06:25:10.75922+00	
1264	Насос циркуляционный.7z	Source/Materials/Files/	2024-03-22 06:28:31.796646+00	2024-03-22 06:28:31.796647+00	
1265	Насос подпиточный.7z	Source/Materials/Files/	2024-03-22 06:28:31.989275+00	2024-03-22 06:28:31.989276+00	
1266	Муфта комбинированная разъемная с нар резьбой.rfa	Source/Materials/Files/	2024-03-22 06:29:45.512538+00	2024-03-22 06:29:45.512538+00	
1267	Муфта комбинированная с внутр.резьбой.rfa	Source/Materials/Files/	2024-03-22 06:29:45.594376+00	2024-03-22 06:29:45.594377+00	
1268	Шкафы автоматики и управления ШАУ.7z	Source/Materials/Files/	2024-03-22 06:44:36.793687+00	2024-03-22 06:44:36.793689+00	
1269	Муфта комбинированная разъемная с внутр.резьбой.rfa	Source/Materials/Files/	2024-03-22 06:47:46.918845+00	2024-03-22 06:47:46.918846+00	
1270	Шумоглушитель_прямоугольный.rfa	Source/Materials/Files/	2024-03-22 09:07:32.216674+00	2024-03-22 09:07:32.216698+00	
1271	Шумоглушитель_прямоугольный.rfa	Source/Materials/Files/	2024-03-25 05:56:52.991251+00	2024-03-25 05:56:52.991278+00	
1272	Шумоглушитель_круглый.rfa	Source/Materials/Files/	2024-03-25 05:57:08.149319+00	2024-03-25 05:57:08.149321+00	
1273	Клапан - решетка с 2-мя приводами.rfa	Source/Materials/Files/	2024-03-25 06:21:32.982214+00	2024-03-25 06:21:32.982217+00	
1274	Клапан - решетка с реверсивным приводом.rfa	Source/Materials/Files/	2024-03-25 06:21:33.277853+00	2024-03-25 06:21:33.277855+00	
1275	решетка металлическая.7z	Source/Materials/Files/	2024-03-25 06:21:33.474107+00	2024-03-25 06:21:33.474109+00	
1276	Решетка вентиляционная ВР.7z	Source/Materials/Files/	2024-03-25 06:21:33.604996+00	2024-03-25 06:21:33.604999+00	
1277	решетка декоративная.7z	Source/Materials/Files/	2024-03-25 06:21:33.778966+00	2024-03-25 06:21:33.778968+00	
1278	Решетка_наружная.7z	Source/Materials/Files/	2024-03-25 06:21:33.916459+00	2024-03-25 06:21:33.916462+00	
1279	Решетка_настенная_алюминиевая_накладная_с регулируемыми жалюзи.rfa	Source/Materials/Files/	2024-03-25 06:21:34.001232+00	2024-03-25 06:21:34.001234+00	
1280	Датчик температуры наружного воздуха.rfa	Source/Materials/Files/	2024-03-25 06:24:23.642411+00	2024-03-25 06:24:23.642412+00	
1281	Датчик температуры погружной.rfa	Source/Materials/Files/	2024-03-25 06:24:23.716032+00	2024-03-25 06:24:23.716033+00	
1282	Датчик температуры накладной ALTF 02 Pt1000.rfa	Source/Materials/Files/	2024-03-25 06:25:20.89583+00	2024-03-25 06:25:20.895831+00	
1283	Датчик температуры 200 мм TF 65 Pt1000.rfa	Source/Materials/Files/	2024-03-25 06:25:20.987263+00	2024-03-25 06:25:20.987264+00	
1284	Тройник комбинированный с вну.резьбой.rfa	Source/Materials/Files/	2024-03-25 06:42:51.546475+00	2024-03-25 06:42:51.546475+00	
1285	Тройник комбинированный с нар.резьбой 32.rfa	Source/Materials/Files/	2024-03-25 06:42:51.67815+00	2024-03-25 06:42:51.678151+00	
1286	Тройник комбинированный с нар.резьбой.rfa	Source/Materials/Files/	2024-03-25 06:58:38.695966+00	2024-03-25 06:58:38.695966+00	
1287	Тройник равнопроходной ПЭ.rfa	Source/Materials/Files/	2024-03-25 07:07:25.232682+00	2024-03-25 07:07:25.232682+00	
1288	Отвод 30-45° ПЭ.rfa	Source/Materials/Files/	2024-03-25 07:12:00.588918+00	2024-03-25 07:12:00.588918+00	
1289	Отвод 90° ПЭ.rfa	Source/Materials/Files/	2024-03-25 07:14:22.422318+00	2024-03-25 07:14:22.422319+00	
1290	Насосная станция пожаротушения, (1 раб, 1 рез).rfa	Source/Materials/Files/	2024-03-25 07:19:12.874448+00	2024-03-25 07:19:12.87445+00	
1291	Насосная станция повышения давления (2 раб., 1 резерв.).rfa	Source/Materials/Files/	2024-03-25 07:19:25.770851+00	2024-03-25 07:19:25.770852+00	
1292	Тройник равнопроходной литой 90°.rfa	Source/Materials/Files/	2024-03-25 07:30:34.417173+00	2024-03-25 07:30:34.417174+00	
1293	Тройник равнопроходной сварной 45°.rfa	Source/Materials/Files/	2024-03-25 07:30:34.478364+00	2024-03-25 07:30:34.478365+00	
1294	Переход ПЭ.rfa	Source/Materials/Files/	2024-03-25 07:56:57.942265+00	2024-03-25 07:56:57.942266+00	
1295	Тройник полиэтиленовый сварной ПЭ.rfa	Source/Materials/Files/	2024-03-25 08:04:11.295574+00	2024-03-25 08:04:11.295575+00	
2204	Тройник напорный переходной 90°.rfa	Source/Materials/Files/	2024-03-25 08:22:53.646616+00	2024-03-25 08:22:53.64664+00	
2205	Тройник напорный равнопроходной 90°.rfa	Source/Materials/Files/	2024-03-25 08:22:53.943083+00	2024-03-25 08:22:53.943085+00	
2206	Отвод полиэтиленовый литой 45°.rfa	Source/Materials/Files/	2024-03-25 08:32:50.777564+00	2024-03-25 08:32:50.777589+00	
2207	Обвод ПВХ.rfa	Source/Materials/Files/	2024-03-25 08:39:45.931859+00	2024-03-25 08:39:45.931884+00	
2208	Обвод ПВХ.rfa	Source/Materials/Files/	2024-03-25 08:42:36.07304+00	2024-03-25 08:42:36.073041+00	
2209	Муфта соединительная ПВХ.rfa	Source/Materials/Files/	2024-03-25 08:44:11.375592+00	2024-03-25 08:44:11.375595+00	
2210	Крестовина сварная ПЭ.rfa	Source/Materials/Files/	2024-03-25 08:49:39.780307+00	2024-03-25 08:49:39.780309+00	
2211	Заглушка ПЭ 100 SDR 17 225мм.rfa	Source/Materials/Files/	2024-03-25 09:05:39.062204+00	2024-03-25 09:05:39.062206+00	
2212	Муфта переходная полипропиленовая.rfa	Source/Materials/Files/	2024-03-25 09:11:41.072063+00	2024-03-25 09:11:41.072087+00	
2213	Муфта прямая полипропиленовая.rfa	Source/Materials/Files/	2024-03-25 09:17:05.217297+00	2024-03-25 09:17:05.217298+00	
2214	Муфта полипропиленовая.rfa	Source/Materials/Files/	2024-03-25 09:17:35.03252+00	2024-03-25 09:17:35.032521+00	
2215	Спускник.rfa	Source/Materials/Files/	2024-03-25 09:20:24.292127+00	2024-03-25 09:20:24.292129+00	
2216	Спускник Dy15.rfa	Source/Materials/Files/	2024-03-25 09:31:01.241057+00	2024-03-25 09:31:01.241059+00	
2217	Муфта с накидной гайкой полипропиленновая.rfa	Source/Materials/Files/	2024-03-25 09:42:07.239012+00	2024-03-25 09:42:07.239014+00	
2218	Блоки оконные ПВХ  Дверь балконная БП.rfa	Source/Materials/Files/	2024-03-25 10:12:55.74355+00	2024-03-25 10:12:55.743551+00	
2219	Тройник в полиэтиленовой оболочке.rfa	Source/Materials/Files/	2024-03-28 11:44:25.342056+00	2024-03-28 11:44:25.342059+00	
2220	Тройник с шаровым краном воздушника в полиэтиленовой оболочке.rfa	Source/Materials/Files/	2024-03-28 11:44:25.437849+00	2024-03-28 11:44:25.43785+00	
2221	Тройниковое ответвление.rfa	Source/Materials/Files/	2024-03-28 11:44:25.517171+00	2024-03-28 11:44:25.517172+00	
2222	Муфта термоусаживающаяся.rfa	Source/Materials/Files/	2024-03-28 11:44:25.596733+00	2024-03-28 11:44:25.596734+00	
2223	Концевая заглушка изоляции.rfa	Source/Materials/Files/	2024-03-28 11:44:25.671381+00	2024-03-28 11:44:25.671382+00	
2224	Металлическая заглушка изоляции.rfa	Source/Materials/Files/	2024-03-28 11:44:25.743293+00	2024-03-28 11:44:25.743293+00	
2225	Металлическая заглушка изоляции с кабелем вывода.rfa	Source/Materials/Files/	2024-03-28 11:44:25.795921+00	2024-03-28 11:44:25.795922+00	
2226	Переход стальной в пенополиуретановой изоляции.rfa	Source/Materials/Files/	2024-03-28 11:44:25.873123+00	2024-03-28 11:44:25.873124+00	
2227	Кран_шаровый_латунный_никелированный_полнопроходной.rfa	Source/Materials/Files/	2024-03-28 19:13:23.862519+00	2024-03-28 19:13:23.86252+00	
2228	Кран шаровый полнопроходной, с рукояткой типа бабочка.rfa	Source/Materials/Files/	2024-03-28 19:13:23.973477+00	2024-03-28 19:13:23.973479+00	
2229	Кран шаровый сливной.rfa	Source/Materials/Files/	2024-03-28 19:13:24.089578+00	2024-03-28 19:13:24.089578+00	
2230	Кран_трехходовой_для_манометра.rfa	Source/Materials/Files/	2024-03-28 19:13:24.254171+00	2024-03-28 19:13:24.254172+00	
2231	Кран_шаровой_с накидной гайкой и ниппелем.rfa	Source/Materials/Files/	2024-03-28 19:13:24.41229+00	2024-03-28 19:13:24.412291+00	
2232	Кран шаровый стальной муфтовый.rfa	Source/Materials/Files/	2024-03-28 19:13:24.484476+00	2024-03-28 19:13:24.484477+00	
2233	Кран шаровый стальной.rfa	Source/Materials/Files/	2024-03-28 19:13:24.582523+00	2024-03-28 19:13:24.582524+00	
2234	Кран шаровой стальной, фланцевый.rfa	Source/Materials/Files/	2024-03-28 19:13:24.652516+00	2024-03-28 19:13:24.652517+00	
2235	Подоконник.rfa	Source/Materials/Files/	2024-03-29 13:13:00.873345+00	2024-03-29 13:13:00.873346+00	
2236	Кран шаровый сварной.rfa	Source/Materials/Files/	2024-03-29 13:24:06.525766+00	2024-03-29 13:24:06.525767+00	
2237	Окна, блоки оконные, двери балконные ПВХ.zip	Source/Materials/Files/	2024-04-01 06:30:03.545742+00	2024-04-01 06:30:03.545789+00	
2238	Окна алюминиевые.zip	Source/Materials/Files/	2024-04-01 06:31:03.881881+00	2024-04-01 06:31:03.881883+00	
2239	Двери деревянные.zip	Source/Materials/Files/	2024-04-01 06:32:40.813356+00	2024-04-01 06:32:40.813357+00	
2240	Двери алюминиевые противопожарные.zip	Source/Materials/Files/	2024-04-01 06:33:58.754894+00	2024-04-01 06:33:58.754897+00	
2241	Двери алюминиевые.zip	Source/Materials/Files/	2024-04-01 06:36:29.130856+00	2024-04-01 06:36:29.130858+00	
2242	Двери стальные.zip	Source/Materials/Files/	2024-04-01 06:40:08.197452+00	2024-04-01 06:40:08.197455+00	
2243	Кран шаровый сварной с металлической заглушкой изоляции.rfa	Source/Materials/Files/	2024-04-01 07:09:18.53252+00	2024-04-01 07:09:18.532522+00	
2244	Кран шаровый с воздушником.rfa	Source/Materials/Files/	2024-04-01 07:30:56.585263+00	2024-04-01 07:30:56.585266+00	
2245	Кран шаровый с удлиненным штоком.rfa	Source/Materials/Files/	2024-04-01 07:36:59.963252+00	2024-04-01 07:36:59.963254+00	
2246	Отвод 90 град.из сшитого полиэтилена.rfa	Source/Materials/Files/	2024-04-01 07:52:20.965097+00	2024-04-01 07:52:20.965098+00	
2247	Тройник из сшитого полиэтилена 110х110х110.rfa	Source/Materials/Files/	2024-04-01 07:52:21.107833+00	2024-04-01 07:52:21.107834+00	
2248	Угольник - переходник аксиальный.rfa	Source/Materials/Files/	2024-04-01 07:52:21.232532+00	2024-04-01 07:52:21.232534+00	
2249	Крестовина полипропиленовая.rfa	Source/Materials/Files/	2024-04-01 07:54:47.12527+00	2024-04-01 07:54:47.125272+00	
2250	Крестовина полипропиленовая 45 град.rfa	Source/Materials/Files/	2024-04-01 07:54:47.220351+00	2024-04-01 07:54:47.220352+00	
2251	Крестовина полипропиленовая 90 град.rfa	Source/Materials/Files/	2024-04-01 07:54:47.312071+00	2024-04-01 07:54:47.312072+00	
2252	Крестовина ПП 2-х плоскостная.rfa	Source/Materials/Files/	2024-04-01 07:54:47.413604+00	2024-04-01 07:54:47.413605+00	
2253	Муфта полипропиленовая канализационная 110мм.rfa	Source/Materials/Files/	2024-04-01 07:54:47.498898+00	2024-04-01 07:54:47.4989+00	
2254	Муфта полипропиленовая канализационная 50мм.rfa	Source/Materials/Files/	2024-04-01 07:54:47.586083+00	2024-04-01 07:54:47.586084+00	
2255	Отвод полипропиленовый канализационный 45°.rfa	Source/Materials/Files/	2024-04-01 07:54:47.696947+00	2024-04-01 07:54:47.696948+00	
2256	Прочистка полипропиленовая канализационная Ду=110мм.rfa	Source/Materials/Files/	2024-04-01 07:54:47.787354+00	2024-04-01 07:54:47.787356+00	
2257	Прочистка полипропиленовая канализационная Ду=50мм.rfa	Source/Materials/Files/	2024-04-01 07:54:47.898523+00	2024-04-01 07:54:47.898524+00	
2258	Ревизия полипропиленовая канализационная 50мм.rfa	Source/Materials/Files/	2024-04-01 07:54:48.042271+00	2024-04-01 07:54:48.042272+00	
2259	Угольник полипропиленовый.rfa	Source/Materials/Files/	2024-04-01 08:06:47.806832+00	2024-04-01 08:06:47.806833+00	
2260	Тройник полипропиленовый канализационный.rfa	Source/Materials/Files/	2024-04-01 08:12:34.31296+00	2024-04-01 08:12:34.312961+00	
2261	Трап полипропиленовый с вертикальным отводом 110мм.rfa	Source/Materials/Files/	2024-04-01 09:03:41.450398+00	2024-04-01 09:03:41.450398+00	
2262	Трап полипропиленовый с вертикальным отводом 50мм.rfa	Source/Materials/Files/	2024-04-01 09:03:41.600696+00	2024-04-01 09:03:41.600697+00	
2263	Трап полипропиленовый с горизонтальным отводом 110мм.rfa	Source/Materials/Files/	2024-04-01 09:03:41.694726+00	2024-04-01 09:03:41.694727+00	
2264	Трап полипропиленовый с горизонтальным отводом 50мм.rfa	Source/Materials/Files/	2024-04-01 09:03:41.802786+00	2024-04-01 09:03:41.802787+00	
\.


--
-- TOC entry 3467 (class 0 OID 16682)
-- Dependencies: 230
-- Data for Name: Materials; Type: TABLE DATA; Schema: public; Owner: b2h
--

COPY public."Materials" ("MaterialId", "Name", "Gost", "CategoryId", "ModeratorId", "Specifications", "UpdateAt", "CreateAt", "FileId", "MaterialImagesIds") FROM stdin;
002f0ba3-a045-4b61-8923-08dc45e26a6f	Лист с ромбическим рифлением толщиной, мм 5 Ст3	ГОСТ 8568-77	5a59190f-3529-4e10-affe-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.855267+00	2024-03-16 20:56:33.855266+00	\N	\N
005db522-b5ff-4320-8917-08dc45e26a6f	Лист горячекатанный толщиной, мм 5 Ст3	ГОСТ 19903-2015	10944fd8-8d1a-4f19-affc-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.796035+00	2024-03-16 20:56:33.796034+00	\N	\N
008d74c9-3e6b-4b9b-8a76-08dc45e26a6f	Перемычки 8ПБ10-1-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.758887+00	2024-03-16 20:56:36.758887+00	1002	\N
00a0be29-c905-47a1-8a57-08dc45e26a6f	Перемычки 3ПБ30-8-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.727376+00	2024-03-16 20:56:36.727376+00	1002	\N
00e9cd69-06f5-492d-8b4d-08dc45e26a6f	Защитная маска	ГОСТ 4997-76	c6b372ed-3711-466f-b09c-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.433746+00	2024-03-16 20:56:40.433745+00	\N	\N
0110d41d-3e7b-4357-8b72-08dc45e26a6f	Втулка под фланец ПЭ 100 SDR 13,6  Ду110	ГОСТ Р 51613-2000	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.859527+00	2024-03-16 20:56:40.859527+00	1021	\N
01132c0d-d773-4431-89ed-08dc45e26a6f	Колесоотбойник металлический	\N	bcd273a0-a301-4962-b02f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.582567+00	2024-03-16 20:56:35.582566+00	1124	\N
012eadb7-f2df-40a8-8caf-08dc45e26a6f	IP видеорегистратор 32 канала	ТУ 4226-063-13282997-05	07715fc1-24d4-4cbc-b104-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.409843+00	2024-03-16 20:56:45.409843+00	1095	\N
01703bf8-8101-4314-8cd1-08dc45e26a6f	Шкаф настенный 19", 15U, 775x600х600 мм	ГОСТ Р 51321.1-2000	75563e1f-aa34-4258-b116-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.974403+00	2024-03-16 20:56:45.974403+00	1114	\N
01cba899-14cb-4957-8b59-08dc45e26a6f	Муфта с накидной гайкой полипропиленновая 20х3/4"	ГОСТ 32415-2013.	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.760756+00	2024-03-16 20:56:40.760756+00	2217	\N
01fdd1ac-424c-43ec-8d8e-08dc45e26a6f	Болт М10 с гайкой и гровером	ГОСТ 24379.1-2012	f0617938-2df2-47b8-b131-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.146876+00	2024-03-16 20:56:47.146875+00	\N	\N
024f6188-4193-4c29-8bb2-08dc45e26a6f	Кран шаровый стальной Ду15/Ру16/Тmax180	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.263728+00	2024-03-16 20:56:41.263728+00	2233	\N
025f5bd7-f052-4523-8963-08dc45e26a6f	Прокат стальной квадратный 12 Ст3	ГОСТ 2591-2006	84c5c08e-8ce4-48d5-b00a-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.28224+00	2024-03-16 20:56:34.282239+00	\N	\N
02618672-b2b0-4750-8d49-08dc45e26a6f	Элемент трубопровода концевой с КВ и МЗИ в полиэтиленовой оболочке Ст 133-4-1-ППУ-ПЭ	ГОСТ 30732-2006	4422f14a-bf6c-483c-b128-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.739854+00	2024-03-16 20:56:46.739853+00	\N	\N
02aecbe5-3402-49ae-8932-08dc45e26a6f	Уголок стальной неравнополочный 180х110х10 	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.041468+00	2024-03-16 20:56:34.041467+00	1166	\N
02e493d8-a687-4cc4-8b17-08dc45e26a6f	Труба металлическая 40мм	ГОСТ Р МЭК 61386.1-2014	a16ff470-035a-47c2-b07a-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.692308+00	2024-03-16 20:56:38.692307+00	\N	\N
02f58110-1292-40ca-8b31-08dc45e26a6f	Щит этажный ЩЭ-5-2-2	\N	e4f7be47-5b12-43fa-b086-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.298967+00	2024-03-16 20:56:39.298966+00	1157	\N
031e7bfe-19fd-4f11-88ed-08dc45e26a6f	Бетон тяжелый B 15 (M200)	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.468753+00	2024-03-16 20:56:33.468753+00	\N	\N
033eddd1-f73a-45b8-8a4b-08dc45e26a6f	Перемычки 3ПБ16-37-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.719945+00	2024-03-16 20:56:36.719945+00	1002	\N
03ae9a0d-d280-4211-8c92-08dc45e26a6f	Извещатель пожарный автономный ИП 212-50М	ГОСТ Р 53325-2012	a762c779-90c4-4dd5-b0fc-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.12979+00	2024-03-16 20:56:45.12979+00	1260	\N
03d0aae2-bd08-4643-8a2c-08dc45e26a6f	Плита канальная П 15/3-8	ГОСТ 13015-2012	22967abd-4dda-4306-b049-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.43736+00	2024-03-16 20:56:36.43736+00	\N	\N
03d8729f-9231-403a-89de-08dc45e26a6f	Линолеум поливинилхлоридный на теплозвукоизолирующей подоснове	ГОСТ 7251-2016	4b6daa36-e856-43a0-b029-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.396632+00	2024-03-16 20:56:35.396632+00	\N	\N
03fa3394-9614-486d-8c60-08dc45e26a6f	Тройник из листовой оцинкованной стали толщ. 0,8мм, класс "В", 400х800/400х800/150х800	ГОСТ 24751-81	f7e864ef-723c-438a-b0e1-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.209884+00	2024-03-16 20:56:44.209883+00	1131	\N
041d1cc1-a221-415c-8a46-08dc45e26a6f	Перемычки 2ПБ30-1	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.71452+00	2024-03-16 20:56:36.714519+00	1002	\N
042e5798-b24a-4a38-8cb3-08dc45e26a6f	Бесконтактный считыватель SIP домофона, CR-01	ТУ 4372-041-88226999-2012	b343e1dd-a633-4165-b107-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.49659+00	2024-03-16 20:56:45.496589+00	1096	\N
044e0581-6161-45b6-8b2c-08dc45e26a6f	Щит распределительный ЩРн-100 600х600х400 	ГОСТ 32396-2021	c82b3f20-06c1-4b95-b084-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.195346+00	2024-03-16 20:56:39.195345+00	1154	\N
04be2a6a-ee50-458c-8ada-08dc45e26a6f	Горизонтальный профиль "Г"	ГОСТ Р 58154-2018	73160bb9-5526-4799-b065-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.727417+00	2024-03-16 20:56:37.727417+00	\N	\N
04cd36f0-0199-43ae-8c35-08dc45e26a6f	Решетка наружная НР 1800х300	ГОСТ 32548-2013	c2786989-eba1-45f9-b0cc-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.025+00	2024-03-16 20:56:43.025+00	1278	\N
052579cf-8306-4881-89bc-08dc45e26a6f	Гидрошпонка "Аквастоп" типа ХВН-80	ТУ-5772-001-58093526-11	95d8e924-9f3e-4b34-b010-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.549773+00	2024-03-16 20:56:34.549772+00	\N	\N
05a1f69b-ef09-4484-8d85-08dc45e26a6f	Анкер распорный M12х90	ГОСТ Р 57787-2017	d6422f1a-8830-42eb-b12f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.063606+00	2024-03-16 20:56:47.063606+00	\N	\N
05dfed17-b04e-418d-8d3c-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 17-160х9,5	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.680672+00	2024-03-16 20:56:46.680672+00	\N	\N
0685688a-f057-4d05-8bac-08dc45e26a6f	Кран шаровый с удлиненным штоком Ду125 Ст 133-1-ППУ-ПЭ L=1100мм H=492мм	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.247364+00	2024-03-16 20:56:41.247364+00	2245	\N
06945dd6-8e45-4eab-8d93-08dc45e26a6f	Заклёпка 4,8х12мм	ГОСТ 10300-80	a9c32535-0ec3-4e2a-b132-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.194696+00	2024-03-16 20:56:47.194696+00	\N	\N
06c06d76-8f44-44f5-8bb8-08dc45e26a6f	Задвижка клиновая фланцевая чугунная PN10,  DN100	ГОСТ 5762-2002	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.320883+00	2024-03-16 20:56:41.320883+00	1205	\N
077628f8-11c3-470e-8992-08dc45e26a6f	ИМС-14	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.435925+00	2024-03-16 20:56:34.435924+00	\N	\N
07a17298-60d9-4704-8914-08dc45e26a6f	Лист холоднокатаный толщиной, мм 10 Ст3	ГОСТ 19904-90	f22a50c6-0374-4935-affb-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.765388+00	2024-03-16 20:56:33.765387+00	\N	\N
07f40cca-78a0-4505-8c42-08dc45e26a6f	Колено верхнее трубы Ø100	\N	3e1f6e1c-d1f9-48a3-b0d2-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.357138+00	2024-03-16 20:56:43.357138+00	1136	\N
0834f276-b615-4a33-895a-08dc45e26a6f	Двутавр 25Б1	ГОСТ 57837-2017	f8e32707-4c2c-469b-b006-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.182438+00	2024-03-16 20:56:34.182437+00	1171	\N
084e3d79-4b86-4dc4-8b0c-08dc45e26a6f	Провод ПуВ нг(А)LS 1х25	ГОСТ 16442-80	b0cf7778-e381-4bf8-b079-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.610224+00	2024-03-16 20:56:38.610224+00	\N	\N
089fa8ea-953b-4a87-8c30-08dc45e26a6f	Клапан - решетка с 2-мя приводами 220В с возвратной пружиной внутри клапана, 1000х800	ГОСТ Р 53301-2013; ГОСТ 32548-2013	c2786989-eba1-45f9-b0cc-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.020764+00	2024-03-16 20:56:43.020763+00	1273	\N
08d25e20-e1e7-401e-8c90-08dc45e26a6f	Извещатель пожарный дымовой ИП 212-64 прот.R3	ГОСТ Р 53325-2012	a762c779-90c4-4dd5-b0fc-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.126622+00	2024-03-16 20:56:45.126621+00	1259	\N
0905d9f2-2186-4d7e-8908-08dc45e26a6f	Лист оцинкованный ОЦ-0,7	ГОСТ 14918-2020	d2cfd871-eef4-4618-affa-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.729467+00	2024-03-16 20:56:33.729466+00	\N	\N
09408e33-75a6-4ae0-8b53-08dc45e26a6f	Заглушка полипропиленовая канализационная 110мм	ГОСТ 32414-2013	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.755102+00	2024-03-16 20:56:40.755102+00	1024	\N
09681ca9-c6a2-4bb1-8c37-08dc45e26a6f	Диффузор вытяжной, ф100	ГОСТ 32548-2013	0f1d7a1c-fc11-423c-b0cd-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.07437+00	2024-03-16 20:56:43.074369+00	1070	\N
0975b434-efc1-413e-8a81-08dc45e26a6f	Перемычки 9ПБ16-37	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.773546+00	2024-03-16 20:56:36.773546+00	1002	\N
097e8b5a-3797-4ae8-8a39-08dc45e26a6f	Перемычки 10ПБ25-27-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.693776+00	2024-03-16 20:56:36.693776+00	1002	\N
09865265-31ec-4305-8aec-08dc45e26a6f	Дверь металлическая  ДСВх, В, Дп, Л, Прг, Н, П2лс, М3, О, 2100х910	 ГОСТ 31173-2016 	7edfab7a-8f18-4b1a-b06f-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.157938+00	2024-03-16 20:56:38.157937+00	2242	\N
09cc02c9-2d57-4e64-8c57-08dc45e26a6f	Клапан - дроссель ДК-100	ГОСТ 24751-81	49b52a17-08a2-4ca6-b0dc-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.849791+00	2024-03-16 20:56:43.84979+00	1012	\N
0a1168bd-462c-412a-8aa0-08dc45e26a6f	Блоки фундаментные ФБС 24.6.6-Т	ГОСТ 13579-78	ad27c4c9-2769-45c7-b055-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.990044+00	2024-03-16 20:56:36.990043+00	1184	\N
0a5c86a3-e3bf-4b48-8ba6-08dc45e26a6f	Кран шаровый полнопроходной, с рукояткой типа "бабочка", резьба ВР, Ду25	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.23985+00	2024-03-16 20:56:41.239849+00	2228	\N
0a69df1c-6423-428c-896f-08dc45e26a6f	Сетка легкая 4С (3Вр1-50)/(3Вр1-50)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.334784+00	2024-03-16 20:56:34.334784+00	\N	\N
0ac86fc9-4911-4993-8b1b-08dc45e26a6f	Муфта кабельная 1ПКВтнг-LS-1-120	ГОСТ 7386-80	45815fa3-b793-4114-b07b-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.745081+00	2024-03-16 20:56:38.74508+00	\N	\N
0b099cce-bb4a-4949-89e6-08dc45e26a6f	Диван	\N	bcd273a0-a301-4962-b02f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.567281+00	2024-03-16 20:56:35.567281+00	1030	\N
0b4b0e9a-2910-4a89-8ab7-08dc45e26a6f	Плита перекрытия 1ПП 10-2	ГОСТ 8020-2016	979d1a13-d47a-42d3-b05a-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.219556+00	2024-03-16 20:56:37.219556+00	\N	\N
0b5c173d-5e5f-4267-8cf7-08dc45e26a6f	Ответвитель сигнала на 6 отводов для коаксиальных сетей затухания 20 dB TAH-620	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.331324+00	2024-03-16 20:56:46.331323+00	\N	\N
0b67860a-be18-431f-8abc-08dc45e26a6f	Брус 100х100мм	ГОСТ 10950-78	f03580ab-1132-4afb-b05d-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.335432+00	2024-03-16 20:56:37.335431+00	\N	\N
0bc2d891-769d-4e58-8a5d-08dc45e26a6f	Перемычки 3ПБ39-8-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.73899+00	2024-03-16 20:56:36.738989+00	1002	\N
0bed2c8a-be3d-49fd-8909-08dc45e26a6f	Лист оцинкованный ОЦ-0,8	ГОСТ 14918-2020	d2cfd871-eef4-4618-affa-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.731971+00	2024-03-16 20:56:33.73197+00	\N	\N
0c18e02a-de78-4941-8db1-08dc45e26a6f	Крепления для крепления металлопластиковых трубопроводов (клипсы) для Дн25	ГОСТ 32415-2013	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.37978+00	2024-03-16 20:56:47.37978+00	\N	\N
0c3acdb5-fe89-459d-8a50-08dc45e26a6f	Перемычки 3ПБ21-8	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.722724+00	2024-03-16 20:56:36.722723+00	1002	\N
0c51b174-24e3-445e-8948-08dc45e26a6f	Уголок стальной равнополочный 63х6	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.066938+00	2024-03-16 20:56:34.066937+00	1167	\N
0c6891bc-ea7c-4cdc-88ee-08dc45e26a6f	Раствор готовый кладочный цементно-известковый М 100	ГОСТ 28013-98	72d83129-8d3f-4ae2-aff0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.510345+00	2024-03-16 20:56:33.510343+00	\N	\N
0ca264d1-f6c9-4c79-892c-08dc45e26a6f	Стеклопластик рулонный РСТ-120	ТУ 2296-001-51822206-2004	8f3d0c11-4b33-43b9-b001-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.98673+00	2024-03-16 20:56:33.986728+00	\N	\N
0ccdeb96-f563-451f-8ca9-08dc45e26a6f	Видеокамера IP уличная	ГОСТ IEC 60065-2013	712baa53-02e3-4cdf-b103-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.363789+00	2024-03-16 20:56:45.363788+00	1226	\N
0cf86296-9a59-4015-8da1-08dc45e26a6f	Фиксирующая опора MFP-BP 20 набор	\N	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.359002+00	2024-03-16 20:56:47.359001+00	\N	\N
0d3ef937-5ba5-45aa-8985-08dc45e26a6f	Арматура стеклопластиковая 5,5-350-2	ТУ 2296-001-20994511-98	4dc75800-844b-4eda-b00d-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.396221+00	2024-03-16 20:56:34.396221+00	\N	\N
0d747c4c-422e-4f76-8bba-08dc45e26a6f	Задвижка клиновая фланцевая чугунная PN10,  DN200	ГОСТ 5762-2002	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.322755+00	2024-03-16 20:56:41.322755+00	1205	\N
0d756753-19cb-43de-8cf1-08dc45e26a6f	Ответвитель сигнала на 4 отвода для коаксиальных сетей затухания 12 dB TAH-412	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.318125+00	2024-03-16 20:56:46.318125+00	\N	\N
0d95d258-ff53-41c0-88de-08dc45e26a6f	Бетон В15	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.455887+00	2024-03-16 20:56:33.455886+00	\N	\N
0e01a449-43e2-48b1-8c05-08dc45e26a6f	Коллектор проходной, НР-ВР, 1 1/4", латунный на 7 контуров	ГОСТ 15763-2005	a204c36e-8fe5-4d5e-b0ae-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.600503+00	2024-03-16 20:56:41.600502+00	1055	\N
0e1123c8-4622-437e-89b9-08dc45e26a6f	Гидрошпонка "Аквастоп" типа Х0-320-6/25	ТУ-5772-001-58093526-11	95d8e924-9f3e-4b34-b010-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.547963+00	2024-03-16 20:56:34.547963+00	\N	\N
0e2235a4-b301-4870-8da7-08dc45e26a6f	Компенсатор резиновый фланцевый Ду100	\N	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.365722+00	2024-03-16 20:56:47.365722+00	\N	\N
0e315faa-953d-4308-8ae7-08dc45e26a6f	Дверь металлическая  ДСВх, В, Оп, Л, Прг, Н, П2лс, М3, О, 2100х910	 ГОСТ 31173-2016 	7edfab7a-8f18-4b1a-b06f-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.153497+00	2024-03-16 20:56:38.153496+00	2242	\N
0e51b76a-340d-43c4-8c99-08dc45e26a6f	Оповещатель звуковой Маяк-24-3М	ТУ 4372-001-49518441-99	7d7ba3ff-518b-4e32-b0ff-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.22117+00	2024-03-16 20:56:45.22117+00	1242	\N
0e609448-6403-49c0-8d0b-08dc45e26a6f	Трубы полипропиленовые РРRC 25 PN25	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.446902+00	2024-03-16 20:56:46.446902+00	\N	\N
0ee152a7-7494-4d04-8bc2-08dc45e26a6f	Задвижка клиновая фланцевая чугунная PN25,  DN200	ГОСТ 5762-2002	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.330383+00	2024-03-16 20:56:41.330383+00	1208	\N
101a16ac-1be5-48f3-8942-08dc45e26a6f	Уголок стальной равнополочный 50х3	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.060667+00	2024-03-16 20:56:34.060667+00	1167	\N
107610cf-1f2d-4dba-8dbc-08dc45e26a6f	Виброизолирующий подвес Виброфлекс 4/15 М8	ГОСТ 30434-96	63e850ad-dd12-4bf7-b140-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.649549+00	2024-03-16 20:56:47.649548+00	\N	\N
1082b263-820f-4d6a-8b1e-08dc45e26a6f	Коробки ответвительные 85х85х40мм	 ГОСТ 32126.1-2013	bcf6bc15-0c3f-4344-b07c-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.814762+00	2024-03-16 20:56:38.814761+00	1151	\N
108bc795-2311-4a17-8db0-08dc45e26a6f	Крепления для крепления металлопластиковых трубопроводов (клипсы) для Дн24	ГОСТ 32415-2013	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.379072+00	2024-03-16 20:56:47.379071+00	\N	\N
10e29939-b405-4860-88cd-08dc45e26a6f	Щебень из природного камня для строительных работ марка 600 фракция 5-40	ГОСТ 8267-93	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.14533+00	2024-03-16 20:56:33.14533+00	\N	\N
110f1aed-8e39-4ccd-8a28-08dc45e26a6f	Плита канальная П 5/2-8	ГОСТ 13015-2012	22967abd-4dda-4306-b049-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.432668+00	2024-03-16 20:56:36.432667+00	\N	\N
114a05a6-e3f1-4aa1-8968-08dc45e26a6f	Сетка легкая 4С (3ВрI-200)/(3ВрI-200)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.33013+00	2024-03-16 20:56:34.330129+00	\N	\N
11826390-eff5-4856-8bd4-08dc45e26a6f	Клапан балансировочный ручной Ду 40мм, PN16	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.39667+00	2024-03-16 20:56:41.39667+00	1217	\N
11c57500-d752-4916-8bf7-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy125/Py16/Tmax200	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.530986+00	2024-03-16 20:56:41.530986+00	1249	\N
11d05779-2685-40ca-8d37-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 13,6, 160х11,8	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.668841+00	2024-03-16 20:56:46.668841+00	\N	\N
11f00860-abc1-47b9-8c98-08dc45e26a6f	Оповещатель звуковой Маяк-12-3М	ТУ 4372-001-49518441-99	7d7ba3ff-518b-4e32-b0ff-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.218958+00	2024-03-16 20:56:45.218957+00	1242	\N
1227d0ab-efab-4c52-8a8f-08dc45e26a6f	Перемычки 9ПБ26-4	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.789698+00	2024-03-16 20:56:36.789698+00	1002	\N
1269041d-8f09-4a80-8cf5-08dc45e26a6f	Ответвитель сигнала на 6 отводов для коаксиальных сетей затухания 12 dB TAH-612	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.328869+00	2024-03-16 20:56:46.328868+00	\N	\N
128cc406-b214-43b6-8972-08dc45e26a6f	Сетка легкая 4С (3Вр1-150)/(3Вр1-150)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.336647+00	2024-03-16 20:56:34.336646+00	\N	\N
12a996d8-3fdf-4443-8956-08dc45e26a6f	Швеллер 14У	ГОСТ 8240-97	8c8e15d2-84bc-474f-b004-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.123582+00	2024-03-16 20:56:34.123582+00	1169	\N
12bd0660-780d-499c-8cc6-08dc45e26a6f	Комплект автоматики для распашных ворот AM-5000KIT	ГОСТ 31174-2003	de9d5969-7053-4c86-b110-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.763908+00	2024-03-16 20:56:45.763907+00	1215	\N
12bda777-84b4-456a-8b47-08dc45e26a6f	Розетка скрытой установки 2 местная 220В, 16А, IP20	ГОСТ 30988.1-2020	81441981-776a-4d18-b095-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.102786+00	2024-03-16 20:56:40.102786+00	1213	\N
12f218c6-80bc-4bf5-8978-08dc45e26a6f	Сетка легкая 4С (5В500-200)/(5В500-200)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.346926+00	2024-03-16 20:56:34.346926+00	\N	\N
131f47a6-35fb-49cc-8a6b-08dc45e26a6f	Перемычки 5ПБ30-27-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.752237+00	2024-03-16 20:56:36.752237+00	1002	\N
1335eabd-dc6d-4bba-8ae3-08dc45e26a6f	Алюминиевые конструкции витражей  1375-3950	ГОСТ 21519-2003	ade03b95-245a-4704-b06c-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.018644+00	2024-03-16 20:56:38.018643+00	\N	\N
1368dfcb-316d-47b8-89ab-08dc45e26a6f	ИМС-37	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.457642+00	2024-03-16 20:56:34.457642+00	\N	\N
1382b4ed-41b0-4cbd-8a49-08dc45e26a6f	Перемычки 3ПБ13-37-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.718881+00	2024-03-16 20:56:36.71888+00	1002	\N
13831773-fa74-4ee7-8b82-08dc45e26a6f	Тройник комбинированный с нар. резьбой 25х3/4"х25	ГОСТ 32415-2013.	9f18a939-2f32-4798-b0a5-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.923167+00	2024-03-16 20:56:40.923167+00	1019	\N
13de38be-0433-47f7-8ca2-08dc45e26a6f	Громкоговоритель трансляционный настенный SWS-106W	ГОСТ 26342-84	cee74bd7-8f0a-48d9-b100-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.274382+00	2024-03-16 20:56:45.274381+00	1229	\N
13eb412c-cb0d-41bd-8c01-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy65/Py16/Tmax120	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.545694+00	2024-03-16 20:56:41.545694+00	1249	\N
142f72cb-baa9-41ac-8941-08dc45e26a6f	Уголок стальной равнополочный 125х9	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.05736+00	2024-03-16 20:56:34.057358+00	1167	\N
14456d24-671a-43c7-8900-08dc45e26a6f	Фанера березовая влагостойкая ФСФ 16мм	ГОСТ 3916.1-2018	448a4e3c-f3df-47f6-aff8-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.683223+00	2024-03-16 20:56:33.683222+00	\N	\N
144f1209-5306-4f81-8b84-08dc45e26a6f	Тройник комбинированный с нар. резьбой 3/4х1/2"	ГОСТ 32415-2013.	9f18a939-2f32-4798-b0a5-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.924916+00	2024-03-16 20:56:40.924915+00	1286	\N
14613149-d8b3-4328-8b96-08dc45e26a6f	Ревизия полипропиленовая канализационная 110мм	ГОСТ 32414-2013	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.065197+00	2024-03-16 20:56:41.065197+00	1048	\N
14b8a7ca-affe-41f2-8a02-08dc45e26a6f	Плитка тротуарная 1П1.70	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.0591+00	2024-03-16 20:56:36.0591+00	\N	\N
15053d4c-bf67-4d0a-8bf8-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy150/Py16/Tmax180	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.531686+00	2024-03-16 20:56:41.531685+00	1249	\N
150c147a-9927-49e9-8c4b-08dc45e26a6f	Вентилятор бытовой,  L=50м3/ч, Р=80Па	ГОСТ 34662-2020	23be5956-a173-4ec9-b0d7-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.569053+00	2024-03-16 20:56:43.569052+00	1076	\N
15248d55-6598-4bd6-89f3-08dc45e26a6f	Геотекстиль	ГОСТ Р 53225-2008	ab378c1b-d811-40f2-b03c-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.890561+00	2024-03-16 20:56:35.89056+00	\N	\N
15a98cc4-5f04-43e7-8db8-08dc45e26a6f	Утеплитель минераловатный t=100мм	ГОСТ 32314-2012	18ec31d2-cf2a-43f5-b13f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.610866+00	2024-03-16 20:56:47.610866+00	\N	\N
15b094d9-e728-466e-8c53-08dc45e26a6f	Клапан противодымной вентиляции, "канального" типа П-К-д100-EI60-МВЕ(220)	ГОСТ Р 53301-2013	aaf21552-f82e-4d7f-b0db-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.783351+00	2024-03-16 20:56:43.783351+00	1144	\N
15e599ca-e114-4852-8c77-08dc45e26a6f	Расходомер Dy32/Фланцевый/Qmax 15/Tmax150/PN16	ГОСТ 28723-90	fb5e1ad2-40b4-4ffe-b0f3-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.807415+00	2024-03-16 20:56:44.807415+00	1140	\N
1619d1e6-7fd5-4357-8c0f-08dc45e26a6f	Манометр  (0-1.6МПа), 100мм, G1/2.1,5/Tmax150	ГОСТ 2405-88	cf2df3bf-9020-4d2e-b0b7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.971755+00	2024-03-16 20:56:41.971755+00	1060	\N
16e1406b-b55d-487a-8c62-08dc45e26a6f	Материал базальтовый огнезащитный рулонный фольгированный 13мм 1Ф EI60	ГОСТ 21880-2011	519d69c9-e184-4769-b0e2-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.268443+00	2024-03-16 20:56:44.268442+00	\N	\N
173312f4-eee2-46e9-8a19-08dc45e26a6f	Камни бортовые БР 100.20.8	ГОСТ 6665-91	c2a537eb-afa5-4d21-b042-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.160232+00	2024-03-16 20:56:36.160232+00	\N	\N
174c013e-11e2-4268-8c29-08dc45e26a6f	Люки чугунные тяжелые тип Т (С250) В	\N	9f94a861-2371-45b2-b0c9-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.863076+00	2024-03-16 20:56:42.863076+00	1175	\N
176e336f-e65b-4725-8af8-08dc45e26a6f	Люк металический 1000х600	ГОСТ 31173-2016	a919ccad-e635-439b-b074-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.395329+00	2024-03-16 20:56:38.395328+00	1194	\N
17cf8e16-40e3-42f0-8a45-08dc45e26a6f	Перемычки 2ПБ29-4-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.709529+00	2024-03-16 20:56:36.709528+00	1002	\N
180494a9-2a77-4704-8a6c-08dc45e26a6f	Перемычки 5ПБ30-37	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.752786+00	2024-03-16 20:56:36.752786+00	1002	\N
18753449-a09d-447b-8d7e-08dc45e26a6f	Дюбель-гвоздь ДГ 8х100	ГОСТ Р ИСО 4759-1-2015	2e3dfc1b-b921-4f73-b12e-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.016763+00	2024-03-16 20:56:47.016763+00	\N	\N
18afe0a8-460a-4d7c-8b94-08dc45e26a6f	Прочистка полипропиленовая канализационная Ду=110мм	ГОСТ 32414-2013	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.063598+00	2024-03-16 20:56:41.063598+00	2256	\N
18b3e2f9-1d33-4b18-8d42-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 17-450х26,7	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.691734+00	2024-03-16 20:56:46.691733+00	\N	\N
18fde4bf-543f-4360-8b3b-08dc45e26a6f	Светильник светодиодный круглый, настенный 77Вт 12526Лм IP65	ГОСТ 16703-2022	f4bef6ab-4df6-4204-b08d-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.654684+00	2024-03-16 20:56:39.654683+00	1163	\N
1937aedb-651b-4cd8-8da3-08dc45e26a6f	Держатель трубы Ду=16мм	ТУ 2248-007-57-45-3845-2009	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.363001+00	2024-03-16 20:56:47.363001+00	\N	\N
195f6674-44db-48e9-8cc7-08dc45e26a6f	Автоматический привод для откатных ворот CAME 001 ВХ-246	ГОСТ 31174-2003	de9d5969-7053-4c86-b110-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.76495+00	2024-03-16 20:56:45.76495+00	1216	\N
1965cf3f-f0d5-472f-8cd6-08dc45e26a6f	Роутер Wi-Fi	ГОСТ Р МЭК 61056-1-2012	1ea490de-5b25-414e-b117-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.011361+00	2024-03-16 20:56:46.011361+00	1117	\N
19a3f62f-be29-4ae9-8910-08dc45e26a6f	Лист холоднокатаный толщиной, мм 6 Ст3	ГОСТ 19904-90	f22a50c6-0374-4935-affb-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.762845+00	2024-03-16 20:56:33.762845+00	\N	\N
1a61f111-c55e-4d45-89c2-08dc45e26a6f	Мембрана ветро-влагозащитная негорючая 	ГОСТ 32805-2014	24aeb398-862e-45c5-b012-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.649944+00	2024-03-16 20:56:34.649943+00	\N	\N
1ac8d223-b2ee-4f4d-8da0-08dc45e26a6f	Фиксирующая опора MFP-BP 16 набор	\N	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.353727+00	2024-03-16 20:56:47.353727+00	\N	\N
1ad304d9-91de-466f-8a22-08dc45e26a6f	Лотки канальные Л 4/2-8	ГОСТ 13015-2012	a0ae6856-57f8-4dde-b048-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.383861+00	2024-03-16 20:56:36.38386+00	\N	\N
1b16a553-7274-4edb-8a7e-08dc45e26a6f	Перемычки 8ПБ19-3-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.771311+00	2024-03-16 20:56:36.77131+00	1002	\N
1b54f8a4-4ac1-4f23-8cfb-08dc45e26a6f	Труба стальная электросварная оцинкованная ф57х3,5	ГОСТ 10704-91	31f4fa68-acc4-4b51-b122-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.391729+00	2024-03-16 20:56:46.391729+00	\N	\N
1b81aad8-d17b-4aee-8d25-08dc45e26a6f	Гофротруба защитная из полиэтилена Ду29, Дн34	ГОСТ 32415-2013	83e611b3-cec5-4510-b126-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.610682+00	2024-03-16 20:56:46.610682+00	\N	\N
1bcdcb7d-c8c3-4fad-8af7-08dc45e26a6f	Ворота металлические ВМ 4860х2450Н EIWS30	 ГОСТ 31174-2017, ГОСТ Р 57327-2016	ab91d760-7bef-4ca6-b072-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.32+00	2024-03-16 20:56:38.319999+00	1191	\N
1bd018e7-64eb-4011-8d04-08dc45e26a6f	Трубы полипропиленовые РРRC 110 PN20	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.432028+00	2024-03-16 20:56:46.432028+00	\N	\N
1be66329-be4b-4d58-8ba7-08dc45e26a6f	Кран шаровый сливной Ду=15 мм	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.241181+00	2024-03-16 20:56:41.241181+00	2229	\N
1c195834-45a9-4cdf-8a52-08dc45e26a6f	Перемычки 3ПБ25-8	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.723775+00	2024-03-16 20:56:36.723775+00	1002	\N
1c479844-0b93-4ad7-8ce4-08dc45e26a6f	Комбинированная ТВ + FM антенна	ГОСТ Р 51989-2002	5c28ddff-ca76-4690-b11e-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.25138+00	2024-03-16 20:56:46.251379+00	\N	\N
1cac8cf6-f60e-418a-8a5a-08dc45e26a6f	Перемычки 3ПБ36-4	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.736159+00	2024-03-16 20:56:36.736159+00	1002	\N
1cb68ac8-0273-4ebe-8bdc-08dc45e26a6f	Клапан запорный радиаторный, угловой, латунный, Ду15, РN10	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.413333+00	2024-03-16 20:56:41.413333+00	1193	\N
1cfe4028-83f6-405b-8903-08dc45e26a6f	Фанера березовая влагостойкая ФСФ 27мм	ГОСТ 3916.1-2018	448a4e3c-f3df-47f6-aff8-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.684841+00	2024-03-16 20:56:33.684841+00	\N	\N
1d025121-2dcb-4aa6-8a17-08dc45e26a6f	Плитка тротуарная Ф.16.6	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.10205+00	2024-03-16 20:56:36.102049+00	\N	\N
1d9eaba6-bbaa-4e5d-8d39-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 13,6, 355х26,1	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.678519+00	2024-03-16 20:56:46.678519+00	\N	\N
1e81e9e6-0b72-45c0-8cd3-08dc45e26a6f	Шкаф напольный 19-дюймовый, 42U, 2055x600х600 мм (ВхШхГ)	ГОСТ Р 51321.1-2000	75563e1f-aa34-4258-b116-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.977307+00	2024-03-16 20:56:45.977307+00	1114	\N
1e93a52c-4091-466a-8c13-08dc45e26a6f	Теплосчетчик квартирный Ду=20, импульсный выход	ГОСТ Р 51649-2014	5517d607-8e5e-4249-b0b9-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.088845+00	2024-03-16 20:56:42.088845+00	1256	\N
1eab0467-19d2-4783-8d87-08dc45e26a6f	Анкер распорный М8х130	ГОСТ Р 57787-2017	d6422f1a-8830-42eb-b12f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.066873+00	2024-03-16 20:56:47.066872+00	\N	\N
1eb92c5a-6f40-460a-8c9b-08dc45e26a6f	Оповещатель охрано-пожарный светозвуковой, 105 дБ, Маяк-12-КПМ1 НИ	ТУ 4372-001-49518441-99	7d7ba3ff-518b-4e32-b0ff-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.227024+00	2024-03-16 20:56:45.227024+00	1240	\N
1f43910e-c0b6-46a8-8d89-08dc45e26a6f	Дюбель-анкер под кронштейн 10х100	ГОСТ Р 57787-2017	d6422f1a-8830-42eb-b12f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.070075+00	2024-03-16 20:56:47.070074+00	\N	\N
20371c58-4fc3-4ceb-8d34-08dc45e26a6f	Труба полиэтиленовая "питьевая" ПЭ 100 SDR 13,6, 40х3,0	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.663944+00	2024-03-16 20:56:46.663943+00	\N	\N
204efc00-c275-4d2d-8d44-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 21, 315х15	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.693848+00	2024-03-16 20:56:46.693847+00	\N	\N
2094b012-351d-4749-8ad4-08dc45e26a6f	Кронштейн 150мм	ГОСТ Р 58154-2018	73160bb9-5526-4799-b065-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.721046+00	2024-03-16 20:56:37.721045+00	\N	\N
20d2f2f6-86f3-4959-8aeb-08dc45e26a6f	Дверь металлическая  ДСВ, В, Дп, Л, Прг, Н, П2лс, М3, О, 2100х910	 ГОСТ 31173-2016 	7edfab7a-8f18-4b1a-b06f-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.157095+00	2024-03-16 20:56:38.157094+00	2242	\N
2149a444-fc1b-4a24-8a47-08dc45e26a6f	Перемычки 2ПБ30-1-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.716973+00	2024-03-16 20:56:36.716973+00	1002	\N
215b090a-d130-403b-8aed-08dc45e26a6f	Дверь металлическая ДСВв В1 Дп Л Брг Н П2лс М3 О, 1850х1100	 ГОСТ 31173-2016 	7edfab7a-8f18-4b1a-b06f-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.158862+00	2024-03-16 20:56:38.158862+00	2242	\N
216ec161-0bc9-4dd6-8a21-08dc45e26a6f	Плиты дорожные 2П30.18-10	ГОСТ 21924.0-84	ac531355-64fc-4569-b046-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.31413+00	2024-03-16 20:56:36.31413+00	\N	\N
2199c32d-87c6-4433-8d0a-08dc45e26a6f	Трубы полипропиленовые РРRC 25 PN20	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.445541+00	2024-03-16 20:56:46.44554+00	\N	\N
22a4f6ba-d105-4d12-8a98-08dc45e26a6f	Ступени лестниц ЛС12	ГОСТ 8717-2016	a0998d0b-20a5-4b1d-b053-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.897411+00	2024-03-16 20:56:36.897411+00	1039	\N
22b2761f-d266-4265-88c7-08dc45e26a6f	Щебень из природного камня для строительных работ марка 800 фракция 40-70	ГОСТ 8267-93	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.143351+00	2024-03-16 20:56:33.14335+00	\N	\N
22cdf59c-9d19-490f-8d60-08dc45e26a6f	Труба квадратной формы профиля ПК-30х30х3,0	ГОСТ 32931-2015	59651b32-96bc-4fd9-b12a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.843054+00	2024-03-16 20:56:46.843053+00	\N	\N
230a73a7-9565-4310-89f1-08dc45e26a6f	Цветок исскуственный	\N	db6359c0-bcc2-45d6-b030-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.646026+00	2024-03-16 20:56:35.646026+00	\N	\N
23144bfd-0f20-432f-8940-08dc45e26a6f	Уголок стальной равнополочный 125х8	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.056569+00	2024-03-16 20:56:34.056569+00	1167	\N
231a0805-7e16-4145-8971-08dc45e26a6f	Сетка легкая 4С (3Вр1-100)/(3Вр1-60)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.335972+00	2024-03-16 20:56:34.335972+00	\N	\N
236769b8-25e4-4e88-8ce7-08dc45e26a6f	Делитель ТВ сигнала на 4 отвода (-8 дБ)	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.306821+00	2024-03-16 20:56:46.30682+00	\N	\N
23e9a549-77d6-474a-8b06-08dc45e26a6f	Кабель силовой ВВГнг(А)-LS 5х25 660В	ГОСТ 16442-80	5e67bd10-c6a3-4f86-b078-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.559079+00	2024-03-16 20:56:38.559079+00	\N	\N
23f93a25-e624-4232-898a-08dc45e26a6f	Арматура стеклопластиковая 5,5-600-2	ТУ 2296-001-20994511-98	4dc75800-844b-4eda-b00d-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.398929+00	2024-03-16 20:56:34.398928+00	\N	\N
2493493a-a234-44db-8d2c-08dc45e26a6f	Труба гофрированная двухслойная профилированная РР SN8 DN/OD 500мм с раструбом и уплотнительным кольцом	ГОСТ Р 54475-2011	83e611b3-cec5-4510-b126-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.615802+00	2024-03-16 20:56:46.615802+00	\N	\N
24c863e4-276b-4641-8ba5-08dc45e26a6f	Кран шаровый полнопроходной, с рукояткой типа "бабочка", резьба ВР, Ду20	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.239073+00	2024-03-16 20:56:41.239073+00	2228	\N
2523fe11-000b-4bc2-8bed-08dc45e26a6f	Фильтр магнитный фланцевый ФМФ-80	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.510453+00	2024-03-16 20:56:41.510453+00	1246	\N
2587231b-b031-4081-88e8-08dc45e26a6f	Бетон тяжелый B 25 (M300)	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.463822+00	2024-03-16 20:56:33.463821+00	\N	\N
25ed4b67-a588-4a90-8cce-08dc45e26a6f	Кросс оптический стоечный, 16 портов, полная комплектация ШКОС-Л -1U/2 -16 -SC ~16 -SC/APC ~16 -SC/APC	ГОСТ Р 9127-94	3d0db1dd-9b1f-4a49-b115-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.940697+00	2024-03-16 20:56:45.940696+00	\N	\N
2611be72-d092-41c9-8a4c-08dc45e26a6f	Перемычки 3ПБ18-37	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.720479+00	2024-03-16 20:56:36.720479+00	1002	\N
263627e9-0e78-45d2-8b1d-08dc45e26a6f	Коробки ответвительные 75х75х35мм	 ГОСТ 32126.1-2013	bcf6bc15-0c3f-4344-b07c-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.813094+00	2024-03-16 20:56:38.813094+00	1151	\N
264deb0b-b4fb-4f16-8c72-08dc45e26a6f	Неподвижная опора для труб Ду32	ГОСТ 30732-2006	5c5837c4-5e97-4236-b0f0-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.725386+00	2024-03-16 20:56:44.725385+00	1087	\N
26cb4b9f-30ff-4625-88df-08dc45e26a6f	Бетон В20	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.456636+00	2024-03-16 20:56:33.456635+00	\N	\N
26d1229b-3209-4aa1-8cee-08dc45e26a6f	Ответвитель сигнала на 1 отвод для коаксиальных сетей затухания 6 dB TAH-106	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.315323+00	2024-03-16 20:56:46.315322+00	\N	\N
275555de-ebca-411d-8ad1-08dc45e26a6f	Плитка облицовочная фасадная из бетонной смеси	ГОСТ 6927-2018	46b6b368-4e8a-49fc-b064-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.67442+00	2024-03-16 20:56:37.67442+00	\N	\N
276ae3a6-cdc9-455d-88ce-08dc45e26a6f	Щебень из природного камня для строительных работ марка 600, фракция 10-40, 40-70	ГОСТ 8267-93	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.145649+00	2024-03-16 20:56:33.145648+00	\N	\N
276ca9af-1633-4389-8d6e-08dc45e26a6f	Дюбель полимерный распорный М 10х150	ГОСТ Р 57787-2017 	150d0c7f-dd85-4110-b12d-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.956778+00	2024-03-16 20:56:46.956777+00	\N	\N
279a6f20-d5b9-465a-8cdd-08dc45e26a6f	PoE удлинитель до 100м без питания	ТУ 4193-007-70239139-03	bee2ddb0-c48e-47c2-b11a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.123312+00	2024-03-16 20:56:46.123311+00	\N	\N
28bd7a80-715d-4db3-8c87-08dc45e26a6f	Электропривод воздушной заслонки GQD 321.1A	ГОСТ Р 52720-2007	9bf83a3b-ad3f-463b-b0f7-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.945643+00	2024-03-16 20:56:44.945642+00	1261	\N
28c7f3e4-6d12-4bba-8966-08dc45e26a6f	Сетка легкая 4С (3ВрI-100)/(3ВрI-60)	ГОСТ 23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.328441+00	2024-03-16 20:56:34.32844+00	\N	\N
28d19317-6e31-4b1e-8a00-08dc45e26a6f	Плитка тротуарная 1.Ф.22.4.5	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.057289+00	2024-03-16 20:56:36.057289+00	\N	\N
28dbf0ab-9526-4c67-89db-08dc45e26a6f	Керамическая плитка АТЕМ Моно W 200х300мм	ГОСТ 57141-2016	2873fac7-5f31-4f49-b023-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.225548+00	2024-03-16 20:56:35.225547+00	\N	\N
297f15a0-e29a-471f-8a80-08dc45e26a6f	Перемычки 9ПБ13-37-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.772914+00	2024-03-16 20:56:36.772914+00	1002	\N
298f9950-7a53-4149-89fb-08dc45e26a6f	Плитка тротуарная 1.Ф.16.8	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.048976+00	2024-03-16 20:56:36.048976+00	\N	\N
29e7bf61-5994-49f2-8c74-08dc45e26a6f	Элемент неподвижной опоры Дн133 Ст 133-340х15-1-ППУ-ПЭ	ГОСТ 30732-2006	5c5837c4-5e97-4236-b0f0-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.727092+00	2024-03-16 20:56:44.727092+00	1252	\N
29ffe4ba-5876-4efd-8a5b-08dc45e26a6f	Перемычки 3ПБ36-4-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.737932+00	2024-03-16 20:56:36.737931+00	1002	\N
2a0c5d67-2164-4d8f-893e-08dc45e26a6f	Уголок стальной равнополочный125х14	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.053875+00	2024-03-16 20:56:34.053874+00	1167	\N
2a794fce-3b14-48f9-8cfd-08dc45e26a6f	Трубы полипропиленовые армированные стекловолокном 25х4,2  PN25	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.425927+00	2024-03-16 20:56:46.425927+00	\N	\N
2acc1d08-c6c1-4142-8ac8-08dc45e26a6f	Доска 50х150	ГОСТ 8486-86	aded3bde-f78b-40cb-b05e-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.390873+00	2024-03-16 20:56:37.390873+00	\N	\N
2aea3b2b-c7e1-45d9-8cb1-08dc45e26a6f	Брелок Mifare	ГОСТ Р 51317.3.3-99	9bdb4af7-7ef6-4b13-b106-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.463424+00	2024-03-16 20:56:45.463423+00	\N	\N
2af563d9-ecae-4f01-8baa-08dc45e26a6f	Кран шаровый латунный с накидной гайкой и ниппелем вн/нар, Ду20, Pn40, Tmax110C	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.243953+00	2024-03-16 20:56:41.243953+00	2231	\N
2b2d72dc-f11a-42d9-8a9c-08dc45e26a6f	Лестничный марш 25.12П	серия АБД 9000	089db14d-4bdb-4d8a-b054-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.957824+00	2024-03-16 20:56:36.957824+00	\N	\N
2b57428a-6c93-4d9a-8c91-08dc45e26a6f	Извещатель пожарный ручной адресный ИПР 513-11 прот. R3	ГОСТ Р 53325-2012	a762c779-90c4-4dd5-b0fc-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.128824+00	2024-03-16 20:56:45.128823+00	1094	\N
2b8386b2-a9ad-430f-8c52-08dc45e26a6f	Клапан огнезадерживающий, "канального типа О-К-ф315(ф)-EI60-МВЕ(220)	ГОСТ Р 53301-2013	aaf21552-f82e-4d7f-b0db-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.780491+00	2024-03-16 20:56:43.780491+00	1143	\N
2b83cb88-096c-4654-8d32-08dc45e26a6f	Труба полиэтиленовая "питьевая" ПЭ 100 SDR 13,6, 315х23,2	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.662506+00	2024-03-16 20:56:46.662506+00	\N	\N
2b8c20ab-44d7-458e-8cfa-08dc45e26a6f	Трубы 76х3,2	ГОСТ 10704-91	31f4fa68-acc4-4b51-b122-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.389867+00	2024-03-16 20:56:46.389866+00	\N	\N
2bcfd2bd-4be1-4851-8b58-08dc45e26a6f	Муфта прямая полипропиленовая 20	ГОСТ 32415-2013	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.759875+00	2024-03-16 20:56:40.759874+00	2213	\N
2be58881-f722-41c4-8993-08dc45e26a6f	ИМС-15	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.436457+00	2024-03-16 20:56:34.436457+00	\N	\N
2c145090-bd9a-4612-8918-08dc45e26a6f	Лист горячекатанный толщиной, мм 6 Ст3	ГОСТ 19903-2015	10944fd8-8d1a-4f19-affc-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.796593+00	2024-03-16 20:56:33.796593+00	\N	\N
2c1fd0e6-3dcf-4ed2-8a7d-08dc45e26a6f	Перемычки 8ПБ19-3	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.770426+00	2024-03-16 20:56:36.770426+00	1002	\N
2c623c12-15ba-4f5e-8a32-08dc45e26a6f	Перемычки 1 ПБ-13-1 П	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.68761+00	2024-03-16 20:56:36.68761+00	1002	\N
2cff3519-97cd-4054-8961-08dc45e26a6f	Прокат стальной квадратный 8 Ст3	ГОСТ 2591-2006	84c5c08e-8ce4-48d5-b00a-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.280986+00	2024-03-16 20:56:34.280985+00	\N	\N
2d640d09-a91a-4437-8db6-08dc45e26a6f	Цилиндры минераловатные теплоизоляционные фольгированные 1НФ б=20 D32	\N	18ec31d2-cf2a-43f5-b13f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.609431+00	2024-03-16 20:56:47.60943+00	\N	\N
2d849ad5-c237-4266-8944-08dc45e26a6f	Уголок стальной равнополочный 50х5	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.062311+00	2024-03-16 20:56:34.062311+00	1167	\N
2debd4f4-ce0f-4786-8c9c-08dc45e26a6f	Оповещатель охрано-пожарный светозвуковой, 105 дБ, Маяк-24-КПМ1 НИ	ТУ 4372-001-49518441-99	7d7ba3ff-518b-4e32-b0ff-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.227927+00	2024-03-16 20:56:45.227926+00	1240	\N
2e345ead-c5e6-4e97-890a-08dc45e26a6f	Лист оцинкованный ОЦ-1,0	ГОСТ 14918-2020	d2cfd871-eef4-4618-affa-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.732505+00	2024-03-16 20:56:33.732504+00	\N	\N
2edbac94-961a-4848-8913-08dc45e26a6f	Лист холоднокатаный толщиной, мм 9 Ст3	ГОСТ 19904-90	f22a50c6-0374-4935-affb-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.764742+00	2024-03-16 20:56:33.764742+00	\N	\N
2ee122fc-5488-4325-88e4-08dc45e26a6f	Бетон тяжелый B 40 (M500)	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.461324+00	2024-03-16 20:56:33.461323+00	\N	\N
2f0cda80-1d78-4de8-88fb-08dc45e26a6f	Сетка штукатурная 20х20х1.0	ГОСТ 2715-75 	386aac2e-13a0-4be0-aff5-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.618375+00	2024-03-16 20:56:33.618375+00	\N	\N
2f1307ce-f1be-4147-8be7-08dc45e26a6f	Фильтр кассетный ф100	ГОСТ Р 51232-98	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.502451+00	2024-03-16 20:56:41.50245+00	1244	\N
2f202330-fa8c-4b9a-8a1f-08dc45e26a6f	Сваи С 120.35.8у	ГОСТ 19804-91	79f20683-1f04-47eb-b044-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.264937+00	2024-03-16 20:56:36.264937+00	1003	\N
2f89d303-5547-489a-89aa-08dc45e26a6f	ИМС-36	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.457015+00	2024-03-16 20:56:34.457015+00	\N	\N
2fa3ccdc-683f-43c7-8cbf-08dc45e26a6f	Трубка переговорная квартирная ТКП-05М	ТУ 6654-001-39141219-95	5db0cc0e-374b-47f1-b10d-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.675762+00	2024-03-16 20:56:45.675762+00	1105	\N
2fe55755-c95a-413a-89b6-08dc45e26a6f	Материал рулонный кровельный гидроизоляционный верхний слой	ГОСТ 32805-2014	95d8e924-9f3e-4b34-b010-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.546051+00	2024-03-16 20:56:34.546051+00	\N	\N
2febc497-47bc-4337-8bef-08dc45e26a6f	Фильтр магнитомеханический муфтовый ФММ-65	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.512811+00	2024-03-16 20:56:41.512811+00	1247	\N
2ff0c371-a7ab-403a-8cef-08dc45e26a6f	Ответвитель сигнала на 1 отвод для коаксиальных сетей затухания 8 dB TAH-108	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.316112+00	2024-03-16 20:56:46.316112+00	\N	\N
2ff4a8d2-97a5-4618-8c45-08dc45e26a6f	Желоб водосточный металлический D=100	\N	3e1f6e1c-d1f9-48a3-b0d2-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.360545+00	2024-03-16 20:56:43.360545+00	1146	\N
3009b5a3-1375-4244-899e-08dc45e26a6f	ИМС-25	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.445011+00	2024-03-16 20:56:34.44501+00	\N	\N
303e3285-342b-4f76-8c07-08dc45e26a6f	Лоток водоотводной бетонный ЛВ-30.38.61-Б	ГОСТ  13015-2012	4c3a9121-3a31-47c9-b0b1-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.739307+00	2024-03-16 20:56:41.739306+00	1057	\N
304c8a30-efad-433f-894a-08dc45e26a6f	Уголок стальной равнополочный 75х12	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.068534+00	2024-03-16 20:56:34.068533+00	1167	\N
305cdc53-dc8b-4056-8bab-08dc45e26a6f	Кран шаровый с воздушником Ду125 Ст 133-1-ППУ-ПЭ L=1100мм H=760мм	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.246613+00	2024-03-16 20:56:41.246613+00	2244	\N
30959459-eab1-4151-88f8-08dc45e26a6f	Раствор готовый кладочный цементный М 75	ГОСТ 28013-98	72d83129-8d3f-4ae2-aff0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.531865+00	2024-03-16 20:56:33.531865+00	\N	\N
30a03ab5-61b4-4792-8938-08dc45e26a6f	Уголок стальной равнополочный 100х8	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.047328+00	2024-03-16 20:56:34.047328+00	1167	\N
30c189dd-8a6f-45f1-8d8c-08dc45e26a6f	Винт с квадратным подголовником M6x10 гальванически оцинкованная сталь	ГОСТ 10621-80	5c413c9a-f7b3-4f0f-b130-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.109755+00	2024-03-16 20:56:47.109755+00	\N	\N
30fa88bd-0234-49e0-8ab2-08dc45e26a6f	Кольца КЦ 15-9	ГОСТ 8020-90	979d1a13-d47a-42d3-b05a-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.209533+00	2024-03-16 20:56:37.209532+00	\N	\N
3109dc0a-cc34-4bda-8c8c-08dc45e26a6f	Шкаф автоматики и управления ШАУ-П-3-RTK-Rack-P-М-1-50	ТУ 4371-001-65494208-2010	5d14f410-8ec6-4a26-b0fa-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.05697+00	2024-03-16 20:56:45.056969+00	1258	\N
3142c076-c6a1-46a7-8c03-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy65/Py16/Tmax200	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.547957+00	2024-03-16 20:56:41.547956+00	1249	\N
3184dd8b-cedb-40a8-8984-08dc45e26a6f	Арматура стеклопластиковая 5,5-300-2	ТУ 2296-001-20994511-98	4dc75800-844b-4eda-b00d-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.395675+00	2024-03-16 20:56:34.395674+00	\N	\N
31b46550-7164-4e35-89c1-08dc45e26a6f	Пленка полиэтиленовая толщина 0,15мм	ГОСТ 10354-82	31b5ec0e-522e-4612-b011-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.60494+00	2024-03-16 20:56:34.604939+00	\N	\N
326c7225-ddee-4ea5-8acb-08dc45e26a6f	Спортивное оборудование	ГОСТ Р 70498-2022	935c9f3e-7fe6-4462-b060-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.490174+00	2024-03-16 20:56:37.490174+00	1185	\N
32b2ba16-a041-4b79-8a48-08dc45e26a6f	Перемычки 3ПБ13-37	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.717794+00	2024-03-16 20:56:36.717794+00	1002	\N
32f9aa76-9717-467a-8aab-08dc45e26a6f	Опорные плиты ОП 4.4	ГОСТ  13015-2012	7932f288-6ebe-471c-b059-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.16914+00	2024-03-16 20:56:37.169139+00	1040	\N
33050892-7133-43e5-8c8f-08dc45e26a6f	Прибор приемно-контрольный ППК РИТМ	ГОСТ Р 53325-2012	197c359d-ad6f-4bcf-b0fb-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.090526+00	2024-03-16 20:56:45.090526+00	1243	\N
330b3b08-357a-43ba-8cea-08dc45e26a6f	Делитель телевизионного сигнала на 2 отвода. затухание на отвод 4 дБ,SAH-204	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.312195+00	2024-03-16 20:56:46.312195+00	\N	\N
33175fc5-2f08-49dd-8aa1-08dc45e26a6f	Блоки фундаментные ФБС 12.4.6-Т	ГОСТ 13579-78	ad27c4c9-2769-45c7-b055-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.990565+00	2024-03-16 20:56:36.990565+00	1184	\N
331e61ca-09c7-4337-8ab8-08dc45e26a6f	Плита перекрытия 1ПП 15-2	ГОСТ 8020-2016	979d1a13-d47a-42d3-b05a-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.220269+00	2024-03-16 20:56:37.220268+00	\N	\N
33b74b0e-ba30-4751-8c9e-08dc45e26a6f	Оповещатель охранно-пожарный комбинированный ОПОП 124-7	ГОСТ 26342-84	7d7ba3ff-518b-4e32-b0ff-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.232437+00	2024-03-16 20:56:45.232436+00	1241	\N
340f2034-140f-4557-8a96-08dc45e26a6f	Перемычки 9ПБ30-4-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.801909+00	2024-03-16 20:56:36.801909+00	1002	\N
341191a5-ecfd-421f-8bf2-08dc45e26a6f	Фильтр сетчатый с пробкой, латунный, резьбовое соединение ВР-ВР 1 1/4", Ду32	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.519576+00	2024-03-16 20:56:41.519576+00	1248	\N
344c5f59-56ae-4783-8acd-08dc45e26a6f	Игровой комплекс	ГОСТ Р 70498-2022	14479d07-528b-4323-b061-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.534978+00	2024-03-16 20:56:37.534978+00	1187	\N
34b5ca62-5250-4cc8-8cb0-08dc45e26a6f	IP видеорегистратор 64 канала	ТУ 4226-063-13282997-05	07715fc1-24d4-4cbc-b104-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.410834+00	2024-03-16 20:56:45.410834+00	1095	\N
34cc7b1f-b449-4ddc-8c38-08dc45e26a6f	Шумоглушитель 1000x1300 L=1000	ГОСТ 22270-2018	c5cf751e-4fa4-4168-b0ce-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.135877+00	2024-03-16 20:56:43.135877+00	1271	\N
34fe4778-94c5-41e6-8ae8-08dc45e26a6f	Дверь металлическая ДСВв В1 Оп Л Брг Н П2лс М3 О, 1850х1100	 ГОСТ 31173-2016 	7edfab7a-8f18-4b1a-b06f-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.154846+00	2024-03-16 20:56:38.154846+00	2242	\N
351a62cd-50a1-4f63-89b8-08dc45e26a6f	Гидрошпонка "Аквастоп" типа ДЗ-160/50-3/35	ТУ-5772-001-58093526-11	95d8e924-9f3e-4b34-b010-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.547337+00	2024-03-16 20:56:34.547337+00	\N	\N
3521df2b-8687-49b8-8be6-08dc45e26a6f	Клапан обратный полипропиленовый канализационный 50мм	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.431171+00	2024-03-16 20:56:41.43117+00	1203	\N
3525ba31-888a-4904-8aa3-08dc45e26a6f	Блоки фундаментные ФБС 12.6.6-Т	ГОСТ 13579-78	ad27c4c9-2769-45c7-b055-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.992345+00	2024-03-16 20:56:36.992344+00	1184	\N
3537d2f0-7787-4474-8957-08dc45e26a6f	Швеллер 16П	ГОСТ 8240-97	8c8e15d2-84bc-474f-b004-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.124234+00	2024-03-16 20:56:34.124234+00	1168	\N
354cac6f-19a5-45dd-8cbd-08dc45e26a6f	Трубка переговорная	ТУ 6654-001-39141219-95	5db0cc0e-374b-47f1-b10d-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.671908+00	2024-03-16 20:56:45.671907+00	1105	\N
359af724-54d3-4b5a-892e-08dc45e26a6f	Стеклопластик рулонный РСТ-250	ТУ 2296-001-51822206-2004	8f3d0c11-4b33-43b9-b001-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.988141+00	2024-03-16 20:56:33.98814+00	\N	\N
35c12295-3309-4e2c-8ae9-08dc45e26a6f	Дверь металлическая ДСН Г Оп Л Прг Н Псп М1 УЗ, 2100х1310	 ГОСТ 31173-2016 	7edfab7a-8f18-4b1a-b06f-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.155559+00	2024-03-16 20:56:38.155559+00	2242	\N
364c45d0-466a-4de2-8b9a-08dc45e26a6f	Трап полипропиленовый с горизонтальным отводом 110мм	ГОСТ 23289-94	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.076971+00	2024-03-16 20:56:41.076971+00	2263	\N
37298120-4391-4cc7-8d54-08dc45e26a6f	Трубы неоцинкованные обыкновенные 20х2,8	ГОСТ 3262-75	42e75951-9bd0-466a-b129-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.791326+00	2024-03-16 20:56:46.791326+00	\N	\N
3793ba5c-dde0-484a-8a9d-08dc45e26a6f	Блоки фундаментные ФБС 24.3.6-Т	ГОСТ 13579-78	ad27c4c9-2769-45c7-b055-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.987882+00	2024-03-16 20:56:36.987881+00	1184	\N
37cb122b-0c4b-4853-8b98-08dc45e26a6f	Трап полипропиленовый с вертикальным отводом 110мм	ГОСТ 23289-94	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.074523+00	2024-03-16 20:56:41.074522+00	2261	\N
37d1062c-b074-43f9-8bea-08dc45e26a6f	Фильтр кассетный, 60х30	ГОСТ Р 51232-98	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.507004+00	2024-03-16 20:56:41.507004+00	1245	\N
3803392d-4176-43b6-8c3c-08dc45e26a6f	Воронка кровельная ТП-01.100.Э	ТУ 5285-001-95431139-2007	70ba3504-c464-40ea-b0d1-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.304205+00	2024-03-16 20:56:43.304204+00	1071	\N
387a4197-9715-4390-88f3-08dc45e26a6f	Раствор готовый кладочный цементный М 200	ГОСТ 28013-98	72d83129-8d3f-4ae2-aff0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.528974+00	2024-03-16 20:56:33.528973+00	\N	\N
388d499d-3bad-4dcf-8c54-08dc45e26a6f	Клапан противодымной вентиляции, "стенового" типа П-С-д1250-EI60-МВЕ(220)	\N	aaf21552-f82e-4d7f-b0db-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.789006+00	2024-03-16 20:56:43.789006+00	1145	\N
39205487-3f96-459d-8c58-08dc45e26a6f	Клапан обратный вентиляционный Ду=100мм	ГОСТ 24751-81	49b52a17-08a2-4ca6-b0dc-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.85051+00	2024-03-16 20:56:43.85051+00	1011	\N
393d04c2-326c-4f57-8a14-08dc45e26a6f	Плитка тротуарная 8.4.П.7	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.092972+00	2024-03-16 20:56:36.092972+00	\N	\N
39473459-5433-4c6a-8cac-08dc45e26a6f	Видеокамера IP 2Мп купольная с подсветкой до 30м, IP67	ГОСТ IEC 60065-2013	712baa53-02e3-4cdf-b103-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.366533+00	2024-03-16 20:56:45.366532+00	1224	\N
394a222b-e8df-4885-8934-08dc45e26a6f	Уголок стальной равнополочный 100х14	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.045084+00	2024-03-16 20:56:34.045083+00	1167	\N
39e586f1-5ce5-4285-8969-08dc45e26a6f	Сетка легкая  4С (5В500-100)/(5В500-100)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.330824+00	2024-03-16 20:56:34.330823+00	\N	\N
39f0afdb-9b5a-48f6-895f-08dc45e26a6f	Проволока 5 Вр-1	ГОСТ 6727-80	a6da0d8a-c182-4a7c-b009-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.251456+00	2024-03-16 20:56:34.251456+00	\N	\N
3a0044a2-4038-496a-8c0c-08dc45e26a6f	Рукав льняной пожарный напорный Q вн=51, L=20м	ГОСТ Р 51049-2019	afc3d87b-efa0-4e04-b0b4-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.839866+00	2024-03-16 20:56:41.839865+00	\N	\N
3a3c73d8-201c-436a-8a41-08dc45e26a6f	Перемычки 2ПБ25-3-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.706527+00	2024-03-16 20:56:36.706526+00	1002	\N
3a3cf8e8-9f16-481d-89df-08dc45e26a6f	Плинтус пластиковый ПВХ напольный 48х19мм	ТУ 113-00-38-151-95	7c993429-f88e-4dd9-b02c-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.467345+00	2024-03-16 20:56:35.467344+00	1180	\N
3a7b1f1a-673b-4bc6-8d2e-08dc45e26a6f	Труба полиэтиленовая "питьевая" ПЭ 100 SDR 13,6, 110х8,1	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.659679+00	2024-03-16 20:56:46.659678+00	\N	\N
3ada73b5-65cb-4acb-894c-08dc45e26a6f	Уголок стальной равнополочный 75х6	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.069583+00	2024-03-16 20:56:34.069583+00	1167	\N
3ae7afe0-bd5c-43f6-8ab6-08dc45e26a6f	Днища КЦД-20	ГОСТ 8020-90	979d1a13-d47a-42d3-b05a-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.21876+00	2024-03-16 20:56:37.21876+00	\N	\N
3b05c813-74e3-4e21-8c27-08dc45e26a6f	Люки чугунные легкие тип Л (А15) К	\N	9f94a861-2371-45b2-b0c9-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.861358+00	2024-03-16 20:56:42.861358+00	1173	\N
3b10f67f-3970-44a0-8cd7-08dc45e26a6f	Коммутатор 8 портов	ГОСТ 51662-2000	579bc48a-82e6-4b2a-b118-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.048993+00	2024-03-16 20:56:46.048992+00	1120	\N
3b748af7-2015-4cd5-8ab0-08dc45e26a6f	Опорные плиты ОП 6.4	ГОСТ  13015-2012	7932f288-6ebe-471c-b059-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.174266+00	2024-03-16 20:56:37.174265+00	1040	\N
3b982f2f-5a0e-4203-8c15-08dc45e26a6f	Ванна сталь 170х70 см с ножками	ГОСТ 23695-94	3e067e9f-8a18-4fc4-b0bb-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.181802+00	2024-03-16 20:56:42.181801+00	1064	\N
3bb988c6-deb2-4cb7-8d76-08dc45e26a6f	Дюбель полимерный распорный М 10х280	ГОСТ Р 57787-2017 	150d0c7f-dd85-4110-b12d-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.965988+00	2024-03-16 20:56:46.965987+00	\N	\N
3bc8e31e-c6e8-4223-8a68-08dc45e26a6f	Перемычки 5ПБ27-37	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.750336+00	2024-03-16 20:56:36.750336+00	1002	\N
3bc94313-07c7-42c9-8b61-08dc45e26a6f	Концевая заглушка изоляции 108-1-ППУ-ПЭ	ГОСТ 30732-2006	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.777019+00	2024-03-16 20:56:40.777019+00	2223	\N
3bed0455-feec-4596-8cec-08dc45e26a6f	Делитель телевизионного сигнала на 4 отвода. затухание на отвод 8 дБ,SAH-408	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.313891+00	2024-03-16 20:56:46.313891+00	\N	\N
3bfca323-0a2f-4eca-8d6c-08dc45e26a6f	Саморез 3,5х65мм	ГОСТ 10618-80	1c2b9801-766c-4e95-b12c-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.910722+00	2024-03-16 20:56:46.910722+00	\N	\N
3c3d9f53-9bae-470f-8a38-08dc45e26a6f	Перемычки 10ПБ25-27	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.693066+00	2024-03-16 20:56:36.693066+00	1002	\N
3c436c49-6b6c-4411-8d07-08dc45e26a6f	Трубы полипропиленовые РРRC 15 PN20	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.437908+00	2024-03-16 20:56:46.437908+00	\N	\N
3c91294a-4bf1-4475-8d3a-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 13,6, 63х4,7	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.679296+00	2024-03-16 20:56:46.679296+00	\N	\N
3cbd4b2f-a67b-4c44-8cae-08dc45e26a6f	Сетевой видеорегистратор для IP-видеокамер	ТУ 4226-063-13282997-05	07715fc1-24d4-4cbc-b104-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.406828+00	2024-03-16 20:56:45.406828+00	1095	\N
3ce7a726-9887-4b95-8d99-08dc45e26a6f	Хомут металлический со шпилькой-шурупом и дюбелем 25мм	ГОСТ 24194-80	43c00e8c-7302-4e9e-b134-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.271103+00	2024-03-16 20:56:47.271103+00	\N	\N
3cff08c1-bdda-455b-8c02-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy65/Py16/Tmax180	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.546977+00	2024-03-16 20:56:41.546977+00	1249	\N
3dd63c81-fc3b-449d-8d59-08dc45e26a6f	Трубы оцинкованные обыкновенные 25х3,2	ГОСТ 3262-75	42e75951-9bd0-466a-b129-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.796461+00	2024-03-16 20:56:46.796461+00	\N	\N
3dec8ed7-fd91-4263-8d27-08dc45e26a6f	Труба гофрированная двухслойная профилированная РР SN8 DN/OD 160мм в комплекте с муфтой и уплотнительным кольцом	ГОСТ Р 54475-2011	83e611b3-cec5-4510-b126-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.612296+00	2024-03-16 20:56:46.612296+00	\N	\N
3e2455a7-35a6-4509-8a6d-08dc45e26a6f	Перемычки 5ПБ30-37-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.753321+00	2024-03-16 20:56:36.753321+00	1002	\N
3e45d111-faa0-4a0c-8bd7-08dc45e26a6f	Клапан запорно-измерительный, Ду25, в комплекте с импульсной трубкой 1/16"	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.399251+00	2024-03-16 20:56:41.39925+00	1050	\N
3e4f98f7-129f-42cd-88c1-08dc45e26a6f	Песчаный грунт средней крупности	ГОСТ 25100-2011	f62f8cd5-d09d-411b-afdf-08dc45e26a4c	\N	[]	2024-04-05 17:19:34.770941+00	2024-03-16 20:56:33.030258+00	\N	\N
3e8035d3-92ca-41b7-8980-08dc45e26a6f	Сетка тяжелая 4С (12А500-200(100))/(12А500-200(100))	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.35181+00	2024-03-16 20:56:34.35181+00	\N	\N
3e9b7536-a443-4da5-8d7c-08dc45e26a6f	Дюбель-гвоздь ДГ 6х80	ГОСТ Р ИСО 4759-1-2015	2e3dfc1b-b921-4f73-b12e-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.014678+00	2024-03-16 20:56:47.014677+00	\N	\N
3eaf837f-2aa6-41f9-8cdb-08dc45e26a6f	SFP-модуль Osnovo SFP-S1SC12-G-1310-1550	ГОСТ Р 50827-95	fd4ea71f-cf7c-47a6-b119-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.085778+00	2024-03-16 20:56:46.085778+00	1219	\N
3ecd7555-08f0-4707-8b5a-08dc45e26a6f	Отвод полипропиленовый 45° РРRC 15	ГОСТ 32415-2013	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.761631+00	2024-03-16 20:56:40.761631+00	1025	\N
3ee59102-dfcb-4acc-8a4f-08dc45e26a6f	Перемычки 3ПБ18-8-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.722183+00	2024-03-16 20:56:36.722182+00	1002	\N
3f4f038e-9049-40c4-8c14-08dc45e26a6f	Теплосчетчик ультразвуковой Ду=15	ГОСТ Р 51649-2014	5517d607-8e5e-4249-b0b9-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.08984+00	2024-03-16 20:56:42.089839+00	1063	\N
3f586dd6-7805-4671-8d30-08dc45e26a6f	Труба полиэтиленовая "питьевая" ПЭ 100 SDR 13,6, 160х11,8	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.661166+00	2024-03-16 20:56:46.661166+00	\N	\N
3f74b875-a391-47c8-8922-08dc45e26a6f	Лист с ромбическим рифлением толщиной, мм 4 Ст3	ГОСТ 8568-77	5a59190f-3529-4e10-affe-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.85407+00	2024-03-16 20:56:33.85407+00	\N	\N
3fb0beba-09f1-4d0c-890b-08dc45e26a6f	Лист холоднокатаный толщиной, мм 1 Ст3	ГОСТ 19904-90	f22a50c6-0374-4935-affb-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.759526+00	2024-03-16 20:56:33.759524+00	\N	\N
3fd28ec8-4855-4970-89ae-08dc45e26a6f	ИМС-4	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.462454+00	2024-03-16 20:56:34.462453+00	\N	\N
3fd297da-6bc8-4ed0-8a2b-08dc45e26a6f	Плита канальная П 11/3-8	ГОСТ 13015-2012	22967abd-4dda-4306-b049-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.436459+00	2024-03-16 20:56:36.436458+00	\N	\N
3fead558-4869-4ec8-8b68-08dc45e26a6f	Отвод полиэтиленовый литой 45° ПЭ 100 SDR 13,6   Ду225	ГОСТ Р 52779-2007	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.840348+00	2024-03-16 20:56:40.840348+00	2206	\N
40422791-5ac3-406e-89b3-08dc45e26a6f	ИМС-8	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.468972+00	2024-03-16 20:56:34.468971+00	\N	\N
4051872e-3c64-4fb2-8c9f-08dc45e26a6f	Громкоговоритель настенный 6Вт SWS-06	ГОСТ 26342-84	cee74bd7-8f0a-48d9-b100-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.270344+00	2024-03-16 20:56:45.270344+00	1227	\N
40661e94-e435-41c1-8d7b-08dc45e26a6f	Дюбель-гвоздь ДГ 10х100	ГОСТ Р ИСО 4759-1-2015	2e3dfc1b-b921-4f73-b12e-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.010668+00	2024-03-16 20:56:47.010668+00	\N	\N
40bef0a7-19da-41a8-88cc-08dc45e26a6f	Щебень из природного камня для строительных работ марка 600 фракция 5-20	ГОСТ 8267-93	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.144997+00	2024-03-16 20:56:33.144997+00	\N	\N
40fde92d-9947-4af5-89bb-08dc45e26a6f	Гидрошпонка "Аквастоп" типа ХВН-120	ТУ-5772-001-58093526-11	95d8e924-9f3e-4b34-b010-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.549198+00	2024-03-16 20:56:34.549198+00	\N	\N
41776e03-6e02-4c66-8ca1-08dc45e26a6f	Громкоговоритель рупорный трансляционный SHS-10TA	ГОСТ 26342-84	cee74bd7-8f0a-48d9-b100-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.272854+00	2024-03-16 20:56:45.272853+00	1228	\N
41a3c2c9-151e-4950-891a-08dc45e26a6f	Лист горячекатанный толщиной, мм 8 Ст3	ГОСТ 19903-2015	10944fd8-8d1a-4f19-affc-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.797759+00	2024-03-16 20:56:33.797758+00	\N	\N
41b120d3-81f5-4d06-8954-08dc45e26a6f	Швеллер 12У	ГОСТ 8240-97	8c8e15d2-84bc-474f-b004-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.121216+00	2024-03-16 20:56:34.121216+00	1169	\N
41ed2859-9f41-4f6d-8c5d-08dc45e26a6f	Воздуховод гибкий Ду=100мм	ГОСТ 24751-81	79975c09-8617-47c9-b0e0-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.158909+00	2024-03-16 20:56:44.158908+00	\N	\N
42175533-c329-4ae5-8adf-08dc45e26a6f	Блоки оконные ПВХ Дверь балконная БП Б2 1280-2060	ГОСТ 30674-99, 23166-99	96bf7800-cf62-4981-b068-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.838302+00	2024-03-16 20:56:37.838301+00	2237	\N
42923fe8-73d5-48d9-8b7e-08dc45e26a6f	Муфта комбинированная разъемная с нар резьбой 25х3/4"	ГОСТ 32415-2013	9f18a939-2f32-4798-b0a5-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.919579+00	2024-03-16 20:56:40.919579+00	1266	\N
42a432e1-af1f-4e54-8bf6-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy125/Py16/Tmax180	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.529852+00	2024-03-16 20:56:41.529852+00	1249	\N
42afea22-7323-414e-8bb1-08dc45e26a6f	Кран шаровый стальной  Ду25 мм, Pn40, Tmax180C	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.262707+00	2024-03-16 20:56:41.262706+00	2233	\N
43635e74-9e60-4174-89b7-08dc45e26a6f	Материал рулонный кровельный гидроизоляционный нижний слой	ГОСТ 32805-2014	95d8e924-9f3e-4b34-b010-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.546664+00	2024-03-16 20:56:34.546663+00	\N	\N
437e9cfa-5e91-49dd-8db9-08dc45e26a6f	Вилатерм d=30мм	ТУ 2291-009-03989419-2006	18ec31d2-cf2a-43f5-b13f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.611589+00	2024-03-16 20:56:47.611588+00	\N	\N
43ce8c74-5474-41d9-8c97-08dc45e26a6f	Оповещатель световой "ВЫХОД" ОПОП 1-8	ТУ 4372-017-12215496-05	bcbf3286-9ff5-4bb6-b0fe-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.182119+00	2024-03-16 20:56:45.182118+00	1238	\N
43fd4040-5d2d-4571-8ab5-08dc45e26a6f	Днища КЦД 15	ГОСТ 8020-90	979d1a13-d47a-42d3-b05a-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.218185+00	2024-03-16 20:56:37.218185+00	\N	\N
44009c1b-fa5c-4ef6-8d15-08dc45e26a6f	Трубы полипропиленовые РРRC 75 PN20	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.469901+00	2024-03-16 20:56:46.4699+00	\N	\N
441e3241-d300-4ca7-8bdf-08dc45e26a6f	Клапан регулирующий седельный двухходовой, Ду=15мм, Кvs=2,5	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.421781+00	2024-03-16 20:56:41.421781+00	1197	\N
44526434-c987-48f0-8c67-08dc45e26a6f	Радиатор стальной панельный, нижнее подключение, b=102 мм, h=500 мм, L=1000мм (СV), в комплекте	ГОСТ 31311-2005	d3dcfc01-22ee-431b-b0e4-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.359187+00	2024-03-16 20:56:44.359186+00	\N	\N
44918a71-434f-46b9-8b69-08dc45e26a6f	Переход ПЭ 100 SDR 11 160/63	ГОСТ 18599-2001	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.841364+00	2024-03-16 20:56:40.841363+00	1294	\N
44cfeff4-a1fa-4068-8c3d-08dc45e26a6f	Воронка парапетная 100х100	\N	3e1f6e1c-d1f9-48a3-b0d2-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.348054+00	2024-03-16 20:56:43.348053+00	1125	\N
458335ab-bfa1-4aa7-8bbc-08dc45e26a6f	Задвижка клиновая фланцевая чугунная PN16,  DN125	ГОСТ 5762-2002	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.325047+00	2024-03-16 20:56:41.325046+00	1207	\N
458b5f91-2a8b-43ca-8d82-08dc45e26a6f	Анкер распорный M10х100	ГОСТ Р 57787-2017	d6422f1a-8830-42eb-b12f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.06047+00	2024-03-16 20:56:47.06047+00	\N	\N
45e717bc-d285-4fa6-8c39-08dc45e26a6f	Шумоглушитель ф100 L=600	ГОСТ 22270-2018	c5cf751e-4fa4-4168-b0ce-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.138742+00	2024-03-16 20:56:43.138742+00	1272	\N
46005507-fcba-4c1c-8b64-08dc45e26a6f	Переход стальной в пенополиуретановой изоляции Ст 159-133-1-ППУ-ПЭ	ГОСТ 30732-2006	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.781085+00	2024-03-16 20:56:40.781085+00	2226	\N
462852bd-4516-4e69-8b0d-08dc45e26a6f	Провод ПуГВнг(А)-LS 1х95	ГОСТ 16442-80	b0cf7778-e381-4bf8-b079-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.611147+00	2024-03-16 20:56:38.611147+00	\N	\N
464320d0-e7bc-4dc8-8a7a-08dc45e26a6f	Перемычки 8ПБ16-1-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.768412+00	2024-03-16 20:56:36.768412+00	1002	\N
4692466d-03e1-49d6-8b21-08dc45e26a6f	Кабели симметричные, парной скрутки, огнестойкие КПСнг(А)-FRLS 1х2х0,5	ГОСТ 31565-2012	b9ec1643-362c-482e-b07e-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.911931+00	2024-03-16 20:56:38.911931+00	\N	\N
46a98171-74f5-423e-8c24-08dc45e26a6f	Насосная станция пожаротушения, Q=18,72 м3/ч, Н=37,8м N=4,0 кВт. (1 раб, 1 рез)	ГОСТ 31840-2012	12a2ad7a-9533-489e-b0c6-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.730822+00	2024-03-16 20:56:42.730822+00	1290	\N
46c8210a-b1dd-40d9-88c2-08dc45e26a6f	Грунт растительный земля растительная	ГОСТ 27753.3-88	f62f8cd5-d09d-411b-afdf-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.082183+00	2024-03-16 20:56:33.082181+00	\N	\N
46fe38eb-6eb3-4205-898d-08dc45e26a6f	ИМС-1	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.431327+00	2024-03-16 20:56:34.431327+00	\N	\N
4784ca7c-d525-446c-8d8a-08dc45e26a6f	Дюбель-анкер под кронштейн 10х120	ГОСТ Р 57787-2017	d6422f1a-8830-42eb-b12f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.071147+00	2024-03-16 20:56:47.071146+00	\N	\N
479dcfa0-8e58-4f9c-8ad3-08dc45e26a6f	Кронштейн 100мм	ГОСТ Р 58154-2018	73160bb9-5526-4799-b065-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.719898+00	2024-03-16 20:56:37.719898+00	\N	\N
481311a5-f08f-43a8-8d46-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 21-160х7,7	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.698528+00	2024-03-16 20:56:46.698528+00	\N	\N
481e7014-5b42-4b83-8a92-08dc45e26a6f	Перемычки 9ПБ27-8-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.796768+00	2024-03-16 20:56:36.796767+00	1002	\N
4830c59e-eead-41a7-8b5c-08dc45e26a6f	Тройник полипропиленовый 20х25х20	ГОСТ 32415-2013	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.767234+00	2024-03-16 20:56:40.767233+00	1027	\N
485f197d-f79b-41b5-8997-08dc45e26a6f	ИМС-19	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.438605+00	2024-03-16 20:56:34.438604+00	\N	\N
48901338-ef93-4cf0-8d22-08dc45e26a6f	Гофротруба защитная из полиэтилена Ду23, Дн28	ГОСТ 32415-2013	83e611b3-cec5-4510-b126-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.608563+00	2024-03-16 20:56:46.608563+00	\N	\N
48f04c58-f743-4180-8bd5-08dc45e26a6f	Клапан запорно-измерительный, Ду15, в комплекте с импульсной трубкой 1/16"	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.397703+00	2024-03-16 20:56:41.397702+00	1050	\N
492d83e1-a84a-4699-891b-08dc45e26a6f	Лист горячекатанный толщиной, мм 9 Ст3	ГОСТ 19903-2015	10944fd8-8d1a-4f19-affc-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.798286+00	2024-03-16 20:56:33.798286+00	\N	\N
494ea76a-1f59-4dec-8ae2-08dc45e26a6f	Подоконник ПВХ 1000	ГОСТ 30673-2013	85689c27-f2a9-4310-b06b-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.978035+00	2024-03-16 20:56:37.978034+00	2235	\N
494ebb0b-c8f5-418e-8c4f-08dc45e26a6f	Клапан огнезадерживающий, "канального типа  О-К-100х100-EI30-МВЕ(220)	ГОСТ Р 53301-2013	aaf21552-f82e-4d7f-b0db-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.777626+00	2024-03-16 20:56:43.777625+00	1078	\N
495be169-e23d-4e3b-8a95-08dc45e26a6f	Перемычки 9ПБ30-4	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.801407+00	2024-03-16 20:56:36.801407+00	1002	\N
496b6118-9cbf-4813-8ac7-08dc45e26a6f	Доска 50х100	ГОСТ 8486-86	aded3bde-f78b-40cb-b05e-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.390204+00	2024-03-16 20:56:37.390203+00	\N	\N
49724d0e-276f-473d-89fc-08dc45e26a6f	Плитка тротуарная 1.Ф.16.9	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.051353+00	2024-03-16 20:56:36.051353+00	\N	\N
49c9eee8-4ef6-4eaa-8aff-08dc45e26a6f	Ограничитель открывания (гребенка)	ГОСТ 30674-99	8b0ac952-1b5a-46e3-b075-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.463274+00	2024-03-16 20:56:38.463274+00	\N	\N
49cdd2ff-d9b8-47bd-8ad5-08dc45e26a6f	Кронштейн 200мм	ГОСТ Р 58154-2018	73160bb9-5526-4799-b065-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.722108+00	2024-03-16 20:56:37.722107+00	\N	\N
49e5e757-95f9-4009-8ca6-08dc45e26a6f	Усилитель проводного вещания, мощность не менее 100Вт,выходное напряжение 30В, притание от сети 220В, потребляемая мощность 600Вт	ГОСТ Р 53325-2012	b76b8ff2-4dd2-4686-b101-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.311602+00	2024-03-16 20:56:45.311602+00	1232	\N
49fb5ea6-7db5-4eac-8a0f-08dc45e26a6f	Плитка тротуарная 4.Ш.7	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.087067+00	2024-03-16 20:56:36.087067+00	\N	\N
49fb84d3-752b-4030-8bfc-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy32/Py16/Tmax200	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.542144+00	2024-03-16 20:56:41.542144+00	1249	\N
4a53d37f-eb2a-47ba-8b8c-08dc45e26a6f	Крестовина полипропиленовая 45 град. 110х50х50	ГОСТ 32414-2013	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.049419+00	2024-03-16 20:56:41.049419+00	2250	\N
4a7e246f-1037-4dca-89f4-08dc45e26a6f	Праймер битумный	ГОСТ 30693-2000	d9387349-02aa-4529-b03e-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.934475+00	2024-03-16 20:56:35.934475+00	\N	\N
4aeaf4f5-c383-4074-89eb-08dc45e26a6f	Стойки для велосипедов	\N	bcd273a0-a301-4962-b02f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.574565+00	2024-03-16 20:56:35.574565+00	1122	\N
4b055353-4797-48ac-89d1-08dc45e26a6f	Грунтовка Бетоноконтакт	ТУ 2313-001-57239755-07	3be6347a-acad-401a-b01e-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.067348+00	2024-03-16 20:56:35.067347+00	\N	\N
4b76a6fa-ac55-4190-899b-08dc45e26a6f	ИМС-22	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.441257+00	2024-03-16 20:56:34.441257+00	\N	\N
4bb846c2-5233-4b5e-89b5-08dc45e26a6f	Бутилкаучуковая лента	ТУ 5772-009-05108038-98	95d8e924-9f3e-4b34-b010-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.545494+00	2024-03-16 20:56:34.545493+00	\N	\N
4bd3f6e6-26c2-4a2a-8a9e-08dc45e26a6f	Блоки фундаментные ФБС 24.4.6-Т	ГОСТ 13579-78	ad27c4c9-2769-45c7-b055-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.988964+00	2024-03-16 20:56:36.988964+00	1184	\N
4c217a8d-387c-454b-8b09-08dc45e26a6f	Кабель силовой ВВГнг(А)-FRLS 3х4 660В	ГОСТ 16442-80	5e67bd10-c6a3-4f86-b078-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.561862+00	2024-03-16 20:56:38.561862+00	\N	\N
4c5aa075-e37e-4910-8b70-08dc45e26a6f	Тройник напорный равнопроходной 90° Ду32  ПВХ	ГОСТ Р 51613-2000	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.853603+00	2024-03-16 20:56:40.853603+00	2205	\N
4c600bdd-fa66-4aba-8b7f-08dc45e26a6f	Муфта комбинированная с внутр. резьбой 20х1/2"	ГОСТ 32415-2013	9f18a939-2f32-4798-b0a5-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.920503+00	2024-03-16 20:56:40.920503+00	1267	\N
4c65fbae-f8c7-4330-89a8-08dc45e26a6f	ИМС-34	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.455313+00	2024-03-16 20:56:34.455313+00	\N	\N
4c9cce26-c0bb-48f1-8b25-08dc45e26a6f	Кабель для интерфейса RS-485/RS-422, 2x(2x24 AWG) КИПЭСнг(А)-LS 2х2х0,5	ГОСТ 31565-2012	eb5ce80f-7fd4-4346-b080-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.024594+00	2024-03-16 20:56:39.024593+00	\N	\N
4cb4ea28-b240-4e47-8bc0-08dc45e26a6f	Задвижка клиновая фланцевая чугунная PN25,  DN100	ГОСТ 5762-2002	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.328412+00	2024-03-16 20:56:41.328412+00	1208	\N
4cf49dac-cabd-400e-8a67-08dc45e26a6f	Перемычки 5ПБ27-27-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.749801+00	2024-03-16 20:56:36.7498+00	1002	\N
4d2feabe-ad4a-4ae2-8a60-08dc45e26a6f	Перемычки 5ПБ21-27	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.740602+00	2024-03-16 20:56:36.740602+00	1002	\N
4d7e34af-ac34-4ff9-8bc5-08dc45e26a6f	Затвор дисковый поворотный чугунный Ду50 PN 1,0 Мпа	ГОСТ 13547-2015	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.335767+00	2024-03-16 20:56:41.335767+00	1209	\N
4dc3624a-83a5-4005-8ccc-08dc45e26a6f	Патч-корд, 3м	ГОСТ Р 9127-94	07ca01cd-7a3c-4b50-b114-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.889823+00	2024-03-16 20:56:45.889822+00	\N	\N
4dc737d6-ba42-4086-8ca4-08dc45e26a6f	Громкоговоритель трансляционный настенный, 100В, 3Вт/1,5Вт SWP-103	ГОСТ 26342-84	cee74bd7-8f0a-48d9-b100-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.279034+00	2024-03-16 20:56:45.279034+00	1230	\N
4dde3026-1f64-4dbb-8aa8-08dc45e26a6f	Блоки фундаментные ФБС 9.4.6-Т	ГОСТ 13579-78	ad27c4c9-2769-45c7-b055-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.00196+00	2024-03-16 20:56:37.00196+00	1184	\N
4e1f7390-8f4d-4167-891e-08dc45e26a6f	Лист перфорированный t=2мм	ГОСТ 58602-2019	023a2783-9a7e-4be7-affd-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.826502+00	2024-03-16 20:56:33.826501+00	\N	\N
4e244741-2a91-491c-8c7f-08dc45e26a6f	Шкаф управления вентилятором с программируемым контроллером ШАУ-ВВ-IP54-380-RS485-1П0,37	ГОСТ Р 54101-2010	b4cf3ce1-0183-42ee-b0f5-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.876522+00	2024-03-16 20:56:44.876522+00	1268	\N
4e4b42c3-3f9e-47ef-89d6-08dc45e26a6f	Керамогранит Kerama Marazzi Риальто Серый Обрезной, 60X60см.	ГОСТ 27180-2019	bc31dd9b-c6b0-47f3-b022-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.182951+00	2024-03-16 20:56:35.18295+00	\N	\N
4e517f23-5d63-4e04-8d7a-08dc45e26a6f	Дюбель-гвоздь ДГ 6х40	ГОСТ Р ИСО 4759-1-2015	2e3dfc1b-b921-4f73-b12e-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.009841+00	2024-03-16 20:56:47.009841+00	\N	\N
4ebf1a1d-4ac9-4fe9-8a56-08dc45e26a6f	Перемычки 3ПБ30-8	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.726539+00	2024-03-16 20:56:36.726538+00	1002	\N
4ec26c76-d3af-4387-895b-08dc45e26a6f	Прокат стальной  круглый 8 Ст3	ГОСТ 2590-2006	6b38668e-2287-43c9-b008-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.219647+00	2024-03-16 20:56:34.219646+00	\N	\N
4ecce47b-ad84-4f8c-8d53-08dc45e26a6f	Трубы неоцинкованные обыкновенные 15х2,8	ГОСТ 3262-75	42e75951-9bd0-466a-b129-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.790316+00	2024-03-16 20:56:46.790315+00	\N	\N
4f0aa910-3a92-45a7-892f-08dc45e26a6f	Стеклопластик рулонный РСТ-430	ТУ 2296-001-51822206-2004	8f3d0c11-4b33-43b9-b001-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.990256+00	2024-03-16 20:56:33.990255+00	\N	\N
4f1aa414-c17e-42f6-8b97-08dc45e26a6f	Ревизия полипропиленовая канализационная 50мм	ГОСТ 32415-2013.	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.070144+00	2024-03-16 20:56:41.070143+00	2258	\N
4f31860d-9363-4d1e-8c95-08dc45e26a6f	Оповещатель охранно-пожарный световой «Насосная пожаротушения» ОПОП 1-8	ТУ 4372-017-12215496-05	bcbf3286-9ff5-4bb6-b0fe-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.179531+00	2024-03-16 20:56:45.179531+00	1238	\N
4f38311c-a10f-442e-8ccb-08dc45e26a6f	Розетка на DIN-рейку	ГОСТ Р 51322.1-2011	e731976e-b9b8-4b69-b113-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.856757+00	2024-03-16 20:56:45.856756+00	1113	\N
4f51239f-e7d7-4828-8cb9-08dc45e26a6f	Замок электромагнитный	ГОСТ 60065-2002	863eabc4-1dc4-4fe3-b109-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.565051+00	2024-03-16 20:56:45.56505+00	1101	\N
4f944551-033d-4218-8cd5-08dc45e26a6f	Маршрутизатор Mikrotik	ГОСТ IEC 60950-1-2014	1ea490de-5b25-414e-b117-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.010307+00	2024-03-16 20:56:46.010306+00	1116	\N
500c70da-af01-4c15-8b93-08dc45e26a6f	Отвод полипропиленовый канализационный 45° Ду50мм	ГОСТ 32414-2013	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.062508+00	2024-03-16 20:56:41.062508+00	2255	\N
50118c15-96e4-4c01-8b18-08dc45e26a6f	Металлорукав 25мм	ГОСТ Р МЭК 61386.1-2014	a16ff470-035a-47c2-b07a-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.693847+00	2024-03-16 20:56:38.693847+00	\N	\N
501e040b-25ba-44a5-89d9-08dc45e26a6f	Керамогранит Laminam NOCE коллекция L-Wood, 1000х1500	ГОСТ 57141-2016	bc31dd9b-c6b0-47f3-b022-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.184617+00	2024-03-16 20:56:35.184616+00	\N	\N
5074c741-2df0-49b7-8afe-08dc45e26a6f	Ограничитель открывания дверей	\N	8b0ac952-1b5a-46e3-b075-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.461523+00	2024-03-16 20:56:38.461523+00	\N	\N
5092b14a-8f39-4710-8caa-08dc45e26a6f	Камера купольная для внутренней установки 2МП, с ИК подсветкой	ГОСТ IEC 60065-2013	712baa53-02e3-4cdf-b103-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.364751+00	2024-03-16 20:56:45.36475+00	1223	\N
50ac8c4f-b35a-4344-89bd-08dc45e26a6f	Гидрошпонка "Аквастоп" типа ХО-320-6/25	ТУ-5772-001-58093526-11	95d8e924-9f3e-4b34-b010-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.550393+00	2024-03-16 20:56:34.550393+00	\N	\N
50e8789d-cdc7-438b-88d0-08dc45e26a6f	Щебень из природного камня для строительных работ марка 600, фракция 40-60, 20-40, 5-10	ГОСТ 8267-93	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.146316+00	2024-03-16 20:56:33.146315+00	\N	\N
50ec7db9-ba04-4de7-8c81-08dc45e26a6f	Шкаф управления вентилятором с программируемым контроллером ШАУ-ВВ-IP54-380-RS485-1П0,18	ГОСТ Р 54101-2010	b4cf3ce1-0183-42ee-b0f5-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.878254+00	2024-03-16 20:56:44.878253+00	1268	\N
5101dec8-f9d1-4174-88f2-08dc45e26a6f	Раствор готовый кладочный цементный М 150	ГОСТ 28013-98	72d83129-8d3f-4ae2-aff0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.528308+00	2024-03-16 20:56:33.528307+00	\N	\N
51348e85-4d24-4a29-8cdf-08dc45e26a6f	Удлинитель Ethernet с PoE по кабелю UTP.  + Приемопередатчик Ethernet LTV-2М01	ТУ 4193-007-70239139-03	bee2ddb0-c48e-47c2-b11a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.127688+00	2024-03-16 20:56:46.127688+00	\N	\N
5137d27f-b2ac-4c63-8d38-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 13,6, 315х23,2	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.671904+00	2024-03-16 20:56:46.671903+00	\N	\N
51455ffe-14cc-42e5-8c1f-08dc45e26a6f	Смеситель для мойки	ГОСТ 25809-96	44fdffbf-742e-4e9f-b0c2-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.574864+00	2024-03-16 20:56:42.574863+00	1007	\N
52261e47-5527-49c4-8bbf-08dc45e26a6f	Задвижка клиновая фланцевая чугунная PN16,  DN80	ГОСТ 5762-2002	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.327684+00	2024-03-16 20:56:41.327684+00	1207	\N
524ec943-a6af-4803-89c3-08dc45e26a6f	Мембрана профилированная	СТО 72746455-3.4.2-2014	24aeb398-862e-45c5-b012-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.650521+00	2024-03-16 20:56:34.650521+00	\N	\N
527979d6-2a09-4780-89c5-08dc45e26a6f	Мембрана пароизоляционная	ГОСТ Р 59150-2020	24aeb398-862e-45c5-b012-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.6532+00	2024-03-16 20:56:34.6532+00	\N	\N
527f06e3-a527-4c8f-8c1c-08dc45e26a6f	Смеситель для умывальника	ГОСТ 25809-96	44fdffbf-742e-4e9f-b0c2-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.565848+00	2024-03-16 20:56:42.565847+00	1004	\N
52e0883a-1075-4667-8b04-08dc45e26a6f	Кабель силовой ВВГнг(А)-LS 3х2,5 660В	ГОСТ 16442-80	5e67bd10-c6a3-4f86-b078-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.556921+00	2024-03-16 20:56:38.556921+00	\N	\N
5301f7c9-69e2-4845-8929-08dc45e26a6f	Лист просечно-вытяжной ПВЛ 406	ТУ 5262-001-6723650-11	25c9379c-c1c0-4d33-afff-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.894377+00	2024-03-16 20:56:33.894375+00	\N	\N
530c53f2-739f-4441-896c-08dc45e26a6f	Сетка легкая 4С (10А240-100)/(10А240-100)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.332519+00	2024-03-16 20:56:34.332519+00	\N	\N
5319c7b4-1316-452b-8bf3-08dc45e26a6f	Фильтр сетчатый с пробкой, латунный, резьбовое соединение ВР-ВР 1", Ду25	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.525008+00	2024-03-16 20:56:41.525007+00	1248	\N
532a9bbd-55f5-4aa1-8d92-08dc45e26a6f	Заклёпка 4,8х10мм	ГОСТ 10300-80	a9c32535-0ec3-4e2a-b132-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.193084+00	2024-03-16 20:56:47.193083+00	\N	\N
532ee278-2910-4f5b-8ccd-08dc45e26a6f	Патч-корд оптический, L-2м	ГОСТ Р 9127-94	07ca01cd-7a3c-4b50-b114-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.892365+00	2024-03-16 20:56:45.892364+00	\N	\N
5383ee4a-1f7b-4214-89d3-08dc45e26a6f	Грунтовка глубокого проникновения	ГОСТ Р 52020-2003	3be6347a-acad-401a-b01e-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.068448+00	2024-03-16 20:56:35.068448+00	\N	\N
54379833-f829-4cd2-8b46-08dc45e26a6f	Розетка скрытой установки 1 местная 220В, 16А, IP20	ГОСТ 30988.1-2020	81441981-776a-4d18-b095-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.100808+00	2024-03-16 20:56:40.100807+00	1212	\N
5457406e-2763-45f3-8d3f-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 17-315х18,7	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.687348+00	2024-03-16 20:56:46.687348+00	\N	\N
54deb3ec-270d-4fbe-8ce6-08dc45e26a6f	Делитель ТВ сигнала на 2 отвода (-4 дБ)	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.304869+00	2024-03-16 20:56:46.304869+00	\N	\N
5508adc7-9cef-437b-8cad-08dc45e26a6f	Видеокамера IP 5Мп Купольная с подсветкой до 30м, IP67	ГОСТ IEC 60065-2013	712baa53-02e3-4cdf-b103-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.367948+00	2024-03-16 20:56:45.367947+00	1224	\N
552ae6cc-8171-4c91-8c22-08dc45e26a6f	Насос дренажный Q=10м3/ч, Н=10м, 220Вт	ГОСТ 31840-2012	0bbb02e8-6f66-42f7-b0c5-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.693318+00	2024-03-16 20:56:42.693318+00	1262	\N
5543061a-9157-4990-8b51-08dc45e26a6f	Электрическая плита	ГОСТ IEC 60335-2-6-2016	23d464f7-aa2c-4133-b0a1-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.674951+00	2024-03-16 20:56:40.674951+00	\N	\N
5592dddb-cc0f-462f-8c96-08dc45e26a6f	Оповещатель охранно-пожарный световой «Пожарный кран» ОПОП 1-8	ТУ 4372-017-12215496-05	bcbf3286-9ff5-4bb6-b0fe-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.181045+00	2024-03-16 20:56:45.181044+00	1238	\N
559b5b39-f1bb-4435-8c46-08dc45e26a6f	Заглушка желоба 100мм	\N	3e1f6e1c-d1f9-48a3-b0d2-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.361235+00	2024-03-16 20:56:43.361235+00	1147	\N
55d39a93-ab33-4f8f-88e2-08dc45e26a6f	Бетон тяжелый B 3,5 (M50)	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.460125+00	2024-03-16 20:56:33.460124+00	\N	\N
560c29ed-2788-4cb5-8db7-08dc45e26a6f	Утеплитель минераловатный t=50мм	ГОСТ 32314-2012	18ec31d2-cf2a-43f5-b13f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.610165+00	2024-03-16 20:56:47.610165+00	\N	\N
562a227f-4530-40ff-8b3f-08dc45e26a6f	Светильник НПП 3006	ГОСТ 16703-2022	1d5dff63-1024-4e3c-b08e-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.706058+00	2024-03-16 20:56:39.706058+00	1045	\N
567d7e87-8349-4ee6-8d29-08dc45e26a6f	Труба гофрированная двухслойная профилированная РР SN8 DN/OD 250мм с раструбом и уплотнительным кольцом	ГОСТ Р 54475-2011	83e611b3-cec5-4510-b126-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.613715+00	2024-03-16 20:56:46.613714+00	\N	\N
56d1c817-8f10-4282-8a8d-08dc45e26a6f	Перемычки 9ПБ25-8	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.788357+00	2024-03-16 20:56:36.788357+00	1002	\N
56e17cdd-55be-4ad3-8c48-08dc45e26a6f	Вентилятор осевой L=11895м3/ч, Р=400Па, N=4,0кВт, n=1410об/мин, U=380В	ГОСТ 34662-2020	fac08785-5b41-4c97-b0d4-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.424738+00	2024-03-16 20:56:43.424738+00	1073	\N
56fe054b-d777-4015-8d86-08dc45e26a6f	Анкер распорный M16х120	ГОСТ Р 57787-2017	d6422f1a-8830-42eb-b12f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.064749+00	2024-03-16 20:56:47.064749+00	\N	\N
5705edd2-1f3b-46a4-8a93-08dc45e26a6f	Перемычки 9ПБ29-4	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.800338+00	2024-03-16 20:56:36.800338+00	1002	\N
579cab99-e2d8-48d5-8a9b-08dc45e26a6f	Лестничный марш 22.12П	серия АБД 9000	089db14d-4bdb-4d8a-b054-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.957231+00	2024-03-16 20:56:36.957231+00	\N	\N
57acb73c-f3e4-4af8-88c8-08dc45e26a6f	Щебень из природного камня для строительных работ марка 600 фракция 10-20	ГОСТ 8267-93	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.143672+00	2024-03-16 20:56:33.143671+00	\N	\N
5803baed-d303-45aa-89a1-08dc45e26a6f	ИМС-28	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.446593+00	2024-03-16 20:56:34.446593+00	\N	\N
5869e1ac-5b8f-44fa-8a63-08dc45e26a6f	Перемычки 5ПБ25-27-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.74262+00	2024-03-16 20:56:36.74262+00	1002	\N
587054f5-74ab-4e4f-8920-08dc45e26a6f	Лист перфорированный t=4мм	ГОСТ 58602-2019	023a2783-9a7e-4be7-affd-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.827817+00	2024-03-16 20:56:33.827816+00	\N	\N
58b18d80-b406-4242-8c8b-08dc45e26a6f	Шкаф автоматики и управления ШАУ-П-3-RTK-Rack-P-М-1-КД-57	ТУ 4371-001-65494208-2010	5d14f410-8ec6-4a26-b0fa-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.051824+00	2024-03-16 20:56:45.051824+00	1258	\N
5939b0d1-2aa1-4f88-89f8-08dc45e26a6f	Плитка тротуарная 1.В.6	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.045676+00	2024-03-16 20:56:36.045675+00	\N	\N
5945ac8e-8a50-4231-8d0d-08dc45e26a6f	Трубы полипропиленовые РРRC 32 PN20	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.453191+00	2024-03-16 20:56:46.45319+00	\N	\N
5a4c1b8c-4f17-48f1-8970-08dc45e26a6f	Сетка легкая 4С (3Вр1-100)/(3Вр1-100)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.335364+00	2024-03-16 20:56:34.335364+00	\N	\N
5a5f0268-1911-4ebb-8a1e-08dc45e26a6f	Сваи С 120.30.8у	ГОСТ 19804-91	79f20683-1f04-47eb-b044-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.264199+00	2024-03-16 20:56:36.264199+00	1003	\N
5a60a98d-1d33-46c9-8ad2-08dc45e26a6f	Кронштейн 50мм	ГОСТ Р 58154-2018	73160bb9-5526-4799-b065-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.717374+00	2024-03-16 20:56:37.717373+00	\N	\N
5ab2af73-6267-4ae6-88d2-08dc45e26a6f	Гранитный щебень	ГОСТ 8267-93	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.146989+00	2024-03-16 20:56:33.146985+00	\N	\N
5ab34372-e915-4d1a-8c9d-08dc45e26a6f	Оповещатель звуковой ОПОП 2-35	ГОСТ 26342-84	7d7ba3ff-518b-4e32-b0ff-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.231563+00	2024-03-16 20:56:45.231563+00	1239	\N
5ab8f172-aac0-4e6b-894b-08dc45e26a6f	Уголок стальной равнополочный 75х5	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.069053+00	2024-03-16 20:56:34.069052+00	1167	\N
5afbdd37-163f-486e-8db3-08dc45e26a6f	Крепления для крепления металлопластиковых трубопроводов (клипсы) для Дн32	ГОСТ 32415-2013	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.381201+00	2024-03-16 20:56:47.3812+00	\N	\N
5b10aad6-59a4-48e8-8da5-08dc45e26a6f	Клипсы для крепления металлопластиковых труб ф16	ГОСТ 32415-2014	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.364341+00	2024-03-16 20:56:47.364341+00	\N	\N
5b416226-3e00-4dbe-8c0b-08dc45e26a6f	Ствол пожарный РС-50	ГОСТ Р 51115-97	afc3d87b-efa0-4e04-b0b4-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.838781+00	2024-03-16 20:56:41.838781+00	\N	\N
5b651ffb-4b82-423b-88fa-08dc45e26a6f	Сетка штукатурная 10х10х1.0	ГОСТ 2715-75 	386aac2e-13a0-4be0-aff5-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.617737+00	2024-03-16 20:56:33.617736+00	\N	\N
5b8308d3-4376-40b9-8a90-08dc45e26a6f	Перемычки 9ПБ26-4-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.790222+00	2024-03-16 20:56:36.790222+00	1002	\N
5bbcf5ec-aa13-4c30-8a7f-08dc45e26a6f	Перемычки 9ПБ13-37	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.772308+00	2024-03-16 20:56:36.772307+00	1002	\N
5bc2bb29-dcdb-4ecc-8c6a-08dc45e26a6f	Электроконвектор напольный 0,5кВт, 220В	ГОСТ  Р 51733-2001	099fe60b-c3fa-4b59-b0e6-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.427329+00	2024-03-16 20:56:44.427329+00	1081	\N
5c1a0608-a091-45f3-89c7-08dc45e26a6f	Краска водоэмульсионная ВЭ АК (акриловая) универсальная 	ГОСТ 28196-89	41220ef4-a634-4723-b019-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.87643+00	2024-03-16 20:56:34.876427+00	\N	\N
5c41b4a6-9ae1-4ba8-89a7-08dc45e26a6f	ИМС-33	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.454773+00	2024-03-16 20:56:34.454772+00	\N	\N
5ce98b01-620e-4cd1-8b2e-08dc45e26a6f	Устройство вводно-рвспределлительное ВРУ-1000-ВР-II-2000х600х600	ГОСТ 32396-2021	a00435db-5de4-486f-b085-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.234922+00	2024-03-16 20:56:39.234922+00	1156	\N
5d53f127-39d2-41b0-8cf9-08dc45e26a6f	Трубы 89х3,2	ГОСТ 10704-91	31f4fa68-acc4-4b51-b122-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.386351+00	2024-03-16 20:56:46.386351+00	\N	\N
5e35607b-80f6-4a18-8bee-08dc45e26a6f	Фильтр магнитомеханический муфтовый ФММ-100	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.511624+00	2024-03-16 20:56:41.511624+00	1247	\N
5e4468be-f843-4292-8b16-08dc45e26a6f	Труба ПНД гибкая гофрированная  с зондом оранжевая тяжелая 16мм	ГОСТ Р МЭК 61386.1-2014	a16ff470-035a-47c2-b07a-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.690719+00	2024-03-16 20:56:38.690719+00	\N	\N
5e48d9a2-6209-488a-8b08-08dc45e26a6f	Кабель силовой ВВГнг(А)-FRLS 3х2,5 660В	ГОСТ 16442-80	5e67bd10-c6a3-4f86-b078-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.560932+00	2024-03-16 20:56:38.560931+00	\N	\N
5e599e92-5160-46be-894e-08dc45e26a6f	Уголок стальной равнополочный 75х8	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.070611+00	2024-03-16 20:56:34.070611+00	1167	\N
5e796b96-c58a-452f-8ba3-08dc45e26a6f	Кран шаровый латунный никелированный полнопроходной, Ду15, вн.резьба 1/2", 40бар, Т 15/+110 С	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.234654+00	2024-03-16 20:56:41.234653+00	2227	\N
5edf9e72-004a-4523-8b6b-08dc45e26a6f	Тройник полиэтиленовый сварной ПЭ 100 SDR 21 d 160х90х160	ТУ 2248-001-92273154-2013	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.843851+00	2024-03-16 20:56:40.843851+00	1295	\N
5f321215-8c26-45ac-8979-08dc45e26a6f	Сетка легкая 4С (5Вр1-200)/(5Вр1-200)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.347611+00	2024-03-16 20:56:34.347611+00	\N	\N
5f6cb1f2-90f5-480c-8950-08dc45e26a6f	Швеллер 8У	ГОСТ 8240-97	8c8e15d2-84bc-474f-b004-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.118692+00	2024-03-16 20:56:34.118692+00	1169	\N
5fed8bf0-4036-4419-8bec-08dc45e26a6f	Фильтр магнитный фланцевый ФМФ-65	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.509315+00	2024-03-16 20:56:41.509315+00	1246	\N
5ff7ab67-13f2-4b54-8b88-08dc45e26a6f	Отвод 90 град. из сшитого полиэтилена ф16х2,2	ГОСТ 32415-2013	a955d7ea-01de-455a-b0a6-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.992913+00	2024-03-16 20:56:40.992912+00	2246	\N
60033695-c849-46d7-8d16-08dc45e26a6f	Трубы полипропиленовые РРRC 90 PN10	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.471028+00	2024-03-16 20:56:46.471027+00	\N	\N
601a46e2-b916-4fea-8c7e-08dc45e26a6f	Реле разности давлений РД-2Р	\N	ce3a1719-e51d-4cec-b0f4-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.84337+00	2024-03-16 20:56:44.84337+00	1255	\N
60353861-a012-4e49-89c6-08dc45e26a6f	Реечный потолок из кубообразной рейки 50х65мм	ГОСТ Р 58324-2018	12ab54b9-b102-4b2e-b016-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.767551+00	2024-03-16 20:56:34.76755+00	\N	\N
60712159-927c-4da9-8c88-08dc45e26a6f	Однофазный регулятор скорости MTY 1,5	ГОСТ Р 50030.6.2-2011	c6e412ca-00ad-4c85-b0f8-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.985832+00	2024-03-16 20:56:44.985831+00	\N	\N
6083092e-77d0-4df8-8d41-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 17-400х23,7	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.691056+00	2024-03-16 20:56:46.691056+00	\N	\N
60b96863-15ab-40f6-8b63-08dc45e26a6f	Металлическая заглушка изоляции с кабелем вывода 159-1-ППУ-ПЭ-650-КВ	ГОСТ 30732-2006	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.780292+00	2024-03-16 20:56:40.780291+00	2225	\N
60e4a01b-6707-476b-8a84-08dc45e26a6f	Перемычки 9ПБ18-37-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.779679+00	2024-03-16 20:56:36.779678+00	1002	\N
61583259-eae7-46fb-8911-08dc45e26a6f	Лист холоднокатаный толщиной, мм 7 Ст3	ГОСТ 19904-90	f22a50c6-0374-4935-affb-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.763411+00	2024-03-16 20:56:33.76341+00	\N	\N
61682e5a-d925-4e6f-8c16-08dc45e26a6f	Раковина, фарфор, 57,5 см, цвет белый	ГОСТ 23695-94	788d4a45-c647-48ea-b0bc-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.23641+00	2024-03-16 20:56:42.236409+00	1065	\N
617dba98-5be6-4a18-8d95-08dc45e26a6f	Заглушка ST 22	ТУ 2291-001-27178306-2005	68be9bef-8aa8-46e7-b133-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.228822+00	2024-03-16 20:56:47.228821+00	\N	\N
61a41467-b76a-44cd-8a74-08dc45e26a6f	Перемычки 6ПБ35-37	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.757224+00	2024-03-16 20:56:36.757223+00	1002	\N
61e84781-e5c2-43da-89a0-08dc45e26a6f	ИМС-27	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.44605+00	2024-03-16 20:56:34.446049+00	\N	\N
626dcc99-9fd4-4a59-88f0-08dc45e26a6f	Раствор готовый кладочный цементно-известковый М 200	ГОСТ 28013-98	72d83129-8d3f-4ae2-aff0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.525378+00	2024-03-16 20:56:33.525377+00	\N	\N
627cfaef-979e-4b5a-8d79-08dc45e26a6f	Дюбель-гвоздь ДГ 6х60	ГОСТ Р ИСО 4759-1-2015	2e3dfc1b-b921-4f73-b12e-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.005418+00	2024-03-16 20:56:47.005417+00	\N	\N
629d21db-d4fa-41e9-8ace-08dc45e26a6f	Карусель 	ГОСТ Р 70498-2022	df9f098d-f553-4c64-b062-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.591632+00	2024-03-16 20:56:37.591631+00	1188	\N
62a7296a-28f6-4083-8a06-08dc45e26a6f	Плитка тротуарная 2.К.8	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.070806+00	2024-03-16 20:56:36.070806+00	\N	\N
62b2b4a2-8193-4bb3-8d4d-08dc45e26a6f	Элемент трубопровода концевой с КВ и МЗИ в полиэтиленовой оболочке Ст 76-3-1-ППУ-ПЭ	ГОСТ 30732-2006	4422f14a-bf6c-483c-b128-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.748344+00	2024-03-16 20:56:46.748344+00	\N	\N
62d66c30-939b-4018-8bda-08dc45e26a6f	Клапан запорный радиаторный, прямой, латунный, Ду15, РN10	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.407101+00	2024-03-16 20:56:41.4071+00	1051	\N
63278be1-93f7-4051-8d02-08dc45e26a6f	Трубы полипропиленовые армированные стекловолокном 75х12,5  PN25	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.429683+00	2024-03-16 20:56:46.429683+00	\N	\N
635cc0cd-dc8e-4beb-89a4-08dc45e26a6f	ИМС-30	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.452775+00	2024-03-16 20:56:34.452774+00	\N	\N
63cec381-b29b-4a52-89ce-08dc45e26a6f	Краска для разметки дорог универсальная	ТУ 2313-011-20514586-2006	4f5a7866-e59c-4102-b01b-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.948497+00	2024-03-16 20:56:34.948496+00	\N	\N
64389263-9645-4830-8b33-08dc45e26a6f	Щит освещения ЩО-25- 600х600х400	ГОСТ 32396-2021	364632ff-03ba-490e-b088-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.400252+00	2024-03-16 20:56:39.400252+00	1159	\N
644d419e-cf62-4ecb-8b91-08dc45e26a6f	Муфта полипропиленовая канализационная 50мм	ГОСТ 32415-2013.	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.06054+00	2024-03-16 20:56:41.06054+00	2254	\N
647b2f72-00e3-49f4-8c21-08dc45e26a6f	Насос подпиточный Q=0,93м³/ч, Н=10,0м, N=0,37 кВт	ГОСТ 31840-2012	0bbb02e8-6f66-42f7-b0c5-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.69243+00	2024-03-16 20:56:42.692429+00	1265	\N
65ae425d-fa2a-4872-8967-08dc45e26a6f	Сетка легкая 4С (3ВрI-150)/(3ВрI-150)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.329312+00	2024-03-16 20:56:34.329312+00	\N	\N
65c0a27a-e560-49ff-8d06-08dc45e26a6f	Трубы полипропиленовые РРRC 140 PN20	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.437073+00	2024-03-16 20:56:46.437072+00	\N	\N
661a308d-16eb-4ccb-8ac3-08dc45e26a6f	Доска 20х100	ГОСТ 8486-86	aded3bde-f78b-40cb-b05e-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.386149+00	2024-03-16 20:56:37.386148+00	\N	\N
668f2707-d29a-41ff-8ba2-08dc45e26a6f	Тройниковое ответвление в полиэтиленовой оболочке Ст 133х4,0-45х3-1-ППУ-ПЭ	ГОСТ 30732-2006	1c97b81f-3856-413d-b0a8-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.140154+00	2024-03-16 20:56:41.140154+00	\N	\N
66dba960-67bb-4d8d-8947-08dc45e26a6f	Уголок стальной равнополочный 63х5	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.064482+00	2024-03-16 20:56:34.064481+00	1167	\N
66e8a887-9c72-404f-8c19-08dc45e26a6f	Писсуар настенный с цельноотлитым сифоном типа 1, фарфоровый и краном писсуарным	ГОСТ 30493-2017	1ff236d1-2e5b-4c50-b0bf-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.378124+00	2024-03-16 20:56:42.378123+00	1250	\N
66f1509f-7d12-4693-8bff-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy50/Py16/Tmax180	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.544352+00	2024-03-16 20:56:41.544352+00	1249	\N
67a60d8d-5928-47be-8d64-08dc45e26a6f	Труба прямоугольной формы профиля ПП-30х20х3,0	ГОСТ 32931-2015	59651b32-96bc-4fd9-b12a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.846448+00	2024-03-16 20:56:46.846448+00	\N	\N
67cf5936-2d5e-4c56-8d09-08dc45e26a6f	Трубы полипропиленовые РРRC 20 PN20	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.444056+00	2024-03-16 20:56:46.444056+00	\N	\N
6802c67e-6e23-4085-8b9b-08dc45e26a6f	Трап полипропиленовый с горизонтальным отводом 50мм	ГОСТ 23289-94	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.077921+00	2024-03-16 20:56:41.077921+00	2264	\N
68200a80-18e3-4ce9-8d61-08dc45e26a6f	Труба квадратной формы профиля ПК-25х25х3,0	ГОСТ 32931-2015	59651b32-96bc-4fd9-b12a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.843983+00	2024-03-16 20:56:46.843982+00	\N	\N
68489f3d-6c89-477f-8975-08dc45e26a6f	Сетка легкая 4С (4В500-50)/(4В500-50)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.338656+00	2024-03-16 20:56:34.338656+00	\N	\N
686c6528-0b20-4d8d-89b1-08dc45e26a6f	ИМС-6	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.467401+00	2024-03-16 20:56:34.4674+00	\N	\N
6872f25b-c545-4ca4-89be-08dc45e26a6f	Гидрошпонка "Аквастоп" ДЗ-140/50-4/35	ТУ-5772-001-58093526-11	95d8e924-9f3e-4b34-b010-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.553152+00	2024-03-16 20:56:34.553151+00	\N	\N
691009ba-1233-4f6c-8bf1-08dc45e26a6f	Фильтр сетчатый с пробкой, латунный, резьбовое соединение ВР-ВР 1 1/2", Ду40	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.514575+00	2024-03-16 20:56:41.514575+00	1248	\N
693701b5-88f3-40c0-8949-08dc45e26a6f	Уголок стальной равнополочный 75х10	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.067493+00	2024-03-16 20:56:34.067492+00	1167	\N
6963b606-7453-40ee-8a55-08dc45e26a6f	Перемычки 3ПБ27-8-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.72597+00	2024-03-16 20:56:36.72597+00	1002	\N
6a082cf5-08c5-45da-8bfb-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy32/Py16/Tmax180	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.540916+00	2024-03-16 20:56:41.540915+00	1249	\N
6a876db1-630b-49fe-895d-08dc45e26a6f	Прокат стальной  круглый 12 Ст3	ГОСТ 2590-2006	6b38668e-2287-43c9-b008-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.221077+00	2024-03-16 20:56:34.221077+00	\N	\N
6b2f7c2b-a6d5-4a98-8cba-08dc45e26a6f	Замок электромагнитный врезной нормально-открытый. Питание 12В.  AL-400SM	ГОСТ 60065-2002	863eabc4-1dc4-4fe3-b109-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.566118+00	2024-03-16 20:56:45.566118+00	1102	\N
6b6862cf-2914-4578-8981-08dc45e26a6f	Сетка тяжелая 4С (12А500-200)/(12А500-200)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.352361+00	2024-03-16 20:56:34.352361+00	\N	\N
6bc655fd-4ead-4160-8b10-08dc45e26a6f	Лоток неперфорированный 50х200 L3000	ГОСТ Р 52868-2021	a16ff470-035a-47c2-b07a-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.674894+00	2024-03-16 20:56:38.674893+00	\N	\N
6bf9b977-76a5-4564-8bc4-08dc45e26a6f	Затвор дисковый поворотный чугунный Ду100 PN 1,6 Мпа	ГОСТ 13547-2015	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.334641+00	2024-03-16 20:56:41.334641+00	1209	\N
6c2e9bf2-52b4-4636-8aba-08dc45e26a6f	Доска палубная 140х35 , лиственница	ГОСТ 8486-86	a0b08d3b-0525-4cce-b05c-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.264381+00	2024-03-16 20:56:37.26438+00	\N	\N
6c9a7659-5b7f-4d34-897f-08dc45e26a6f	Сетка тяжелая 2С (16А500-200)/(16А500-200)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.351268+00	2024-03-16 20:56:34.351268+00	\N	\N
6cd1492c-9609-49dc-8a0b-08dc45e26a6f	Плитка тротуарная 3.К.3	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.075811+00	2024-03-16 20:56:36.075811+00	\N	\N
6d00e1d2-c0dc-4688-8b9e-08dc45e26a6f	Отводы стальные в пенополиуретановой изоляции в полиэтиленовой оболочке Ст 108x6,0-90°-1-ППУ-ПЭ	ГОСТ 30732-2006	1c97b81f-3856-413d-b0a8-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.128081+00	2024-03-16 20:56:41.12808+00	\N	\N
6d8431fd-0e63-40fa-8b7b-08dc45e26a6f	Тройник равнопроходной сварной 45° ПЭ 100 SDR 13,6 110мм	ГОСТ 18599-2001	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.872856+00	2024-03-16 20:56:40.872856+00	1293	\N
6da97aa1-e0ce-4c5e-8ccf-08dc45e26a6f	Кросс оптический стоечный, 24 порта, полная комплектация ШКОС-Л -1U/2 -24 -SC ~24 -SC/APC ~24 -SC/APC	ГОСТ Р 9127-94	3d0db1dd-9b1f-4a49-b115-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.941636+00	2024-03-16 20:56:45.941636+00	\N	\N
6daedb3c-b1e7-4c67-8b71-08dc45e26a6f	Втулка под фланец ПЭ 100 SDR 11 Ду110	ГОСТ Р 51613-2000	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.858059+00	2024-03-16 20:56:40.858058+00	1021	\N
6dff0005-cb19-4a3e-8da9-08dc45e26a6f	Компенсатор резиновый фланцевый Ду80	ГОСТ 22388-90	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.367095+00	2024-03-16 20:56:47.367094+00	\N	\N
6e53e048-8dfa-46a6-8c64-08dc45e26a6f	Лента алюминиевая шириной 100мм	ГОСТ 13726-97	519d69c9-e184-4769-b0e2-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.273556+00	2024-03-16 20:56:44.273556+00	\N	\N
6e6ef4ba-1e32-4b96-8b75-08dc45e26a6f	Отвод 45° ПЭ 100 SDR 21 110мм	ГОСТ Р 51613-2000	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.862766+00	2024-03-16 20:56:40.862766+00	1288	\N
6e921bb3-4945-4da3-8924-08dc45e26a6f	Лист с ромбическим рифлением толщиной, мм 6 Ст3	ГОСТ 8568-77	5a59190f-3529-4e10-affe-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.859073+00	2024-03-16 20:56:33.859071+00	\N	\N
6e9498fb-136e-40f1-8c2b-08dc45e26a6f	Люки чугунные тяжелые тип Т (С250) ТС	\N	9f94a861-2371-45b2-b0c9-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.865761+00	2024-03-16 20:56:42.865761+00	1177	\N
6ee7fe14-4910-446e-8a62-08dc45e26a6f	Перемычки 5ПБ25-27	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.742038+00	2024-03-16 20:56:36.742038+00	1002	\N
6f0684c9-ce01-4107-8b73-08dc45e26a6f	Заглушка ПЭ 100 SDR 11 110мм	ГОСТ Р 51613-2000	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.860256+00	2024-03-16 20:56:40.860256+00	1022	\N
6f23fc35-bfce-4674-8bd2-08dc45e26a6f	Клапан балансировочный ручной Ду 20мм, PN16	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.394678+00	2024-03-16 20:56:41.394678+00	1217	\N
6f507f13-04d1-46ce-8bf0-08dc45e26a6f	Фильтр магнитомеханический муфтовый ФММ-80	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.513846+00	2024-03-16 20:56:41.513846+00	1247	\N
6f5b0196-acee-49a8-896d-08dc45e26a6f	Сетка легкая 4С (10А500С-200/10А500с-200)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.333257+00	2024-03-16 20:56:34.333256+00	\N	\N
6f63529d-c764-46a7-8c89-08dc45e26a6f	Однофазный регулятор скорости СРМ7	ГОСТ Р 50030.6.2-2011	c6e412ca-00ad-4c85-b0f8-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.987329+00	2024-03-16 20:56:44.987328+00	\N	\N
6f71e044-0f87-4680-8b7a-08dc45e26a6f	Тройник равнопроходной литой 90° ПЭ 80 SDR 11 110мм	ГОСТ 18599-2001	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.872198+00	2024-03-16 20:56:40.872198+00	1292	\N
6f87639f-e131-4b34-896e-08dc45e26a6f	Сетка легкая 4С (10А500-200)/(10А500-200)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.334027+00	2024-03-16 20:56:34.334027+00	\N	\N
6f8d6076-ed89-4c3c-893f-08dc45e26a6f	Уголок стальной равнополочный 125х16	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.054779+00	2024-03-16 20:56:34.054778+00	1167	\N
6fbeed94-9bf1-48b9-8ab3-08dc45e26a6f	Кольца КЦ 20-9	ГОСТ 8020-90	979d1a13-d47a-42d3-b05a-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.211654+00	2024-03-16 20:56:37.211653+00	\N	\N
6fcf2b2a-0d8a-4bc8-8d71-08dc45e26a6f	Дюбель полимерный распорный М 10х260	ГОСТ Р 57787-2017 	150d0c7f-dd85-4110-b12d-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.961569+00	2024-03-16 20:56:46.961568+00	\N	\N
7029e6bb-1ff7-46b1-8b19-08dc45e26a6f	Наконечники кабельные медные ТМЛ 10-8-5	ГОСТ 7386-80	45815fa3-b793-4114-b07b-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.742624+00	2024-03-16 20:56:38.742623+00	\N	\N
70525b18-df0b-418a-88da-08dc45e26a6f	Штукатурно-клеевая смесь	ГОСТ Р 54359-2017	fb247a45-0dfa-427b-afe8-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.313645+00	2024-03-16 20:56:33.313644+00	\N	\N
707543c4-a4bd-4997-8a94-08dc45e26a6f	Перемычки 9ПБ29-4-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.800865+00	2024-03-16 20:56:36.800865+00	1002	\N
70a1cb6c-6f0b-461d-88f6-08dc45e26a6f	Раствор готовый кладочный цементный М 400	ГОСТ 28013-98	72d83129-8d3f-4ae2-aff0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.530807+00	2024-03-16 20:56:33.530807+00	\N	\N
70b6d7e8-9c68-47bb-893c-08dc45e26a6f	Уголок стальной равнополочный 125х10	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.052151+00	2024-03-16 20:56:34.05215+00	1167	\N
70bf1bcb-2ac0-443f-8927-08dc45e26a6f	Лист с чечевичным рифлением толщиной, мм 5 Ст3	ГОСТ 8568-77	5a59190f-3529-4e10-affe-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.863487+00	2024-03-16 20:56:33.863486+00	\N	\N
70c33be8-96b0-45f3-8b8d-08dc45e26a6f	Крестовина полипропиленовая 90 град. 110х110х50	ГОСТ 32414-2013	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.053691+00	2024-03-16 20:56:41.053691+00	2251	\N
712327dd-c678-47fc-8bad-08dc45e26a6f	Кран шаровый сварной Ду100 Ст 108-1-ППУ-ОЦ	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.253809+00	2024-03-16 20:56:41.253809+00	2236	\N
7140abf3-d6e8-49e7-8b9d-08dc45e26a6f	Угольник полипропиленовый 45гр 110	ГОСТ 32415-2013.	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.080322+00	2024-03-16 20:56:41.080321+00	2259	\N
714cef09-473a-4578-8af2-08dc45e26a6f	Дверь металлическая противопожарная ДПС 02 2115-1350 правая EI30	ГОСТ Р 57327-2016	368f79bb-710b-4879-b070-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.203733+00	2024-03-16 20:56:38.203733+00	2241	\N
7162d103-633c-403f-8b20-08dc45e26a6f	Розетка силовая скрытой установки 250В, 16А, IP20	ГОСТ IЕС 60309-1-2016	5dd227e4-8282-41c1-b07d-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.875497+00	2024-03-16 20:56:38.875497+00	1153	\N
71997ebe-e6aa-4ea7-8a7b-08dc45e26a6f	Перемычки 8ПБ17-2	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.769341+00	2024-03-16 20:56:36.769341+00	1002	\N
71d4fba8-1f97-4a6d-8b11-08dc45e26a6f	Лоток неперфорированный 200x100 L3000	ГОСТ Р 52868-2021	a16ff470-035a-47c2-b07a-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.675582+00	2024-03-16 20:56:38.675582+00	\N	\N
71e3ffdd-4110-4da4-8cda-08dc45e26a6f	Модуль оптичесикй SFP-S5.S20	ГОСТ 27694-88	fd4ea71f-cf7c-47a6-b119-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.085039+00	2024-03-16 20:56:46.085038+00	1218	\N
732c5e9a-6c45-4fb7-8d51-08dc45e26a6f	Пенопакет монтажный для заделки стыков труб в ППУ изоляции 133/225	ГОСТ 30732-2006	4422f14a-bf6c-483c-b128-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.751371+00	2024-03-16 20:56:46.751371+00	\N	\N
737c59f0-2ed8-452c-8c47-08dc45e26a6f	Кронштейн для желоба металлический D = 100	\N	3e1f6e1c-d1f9-48a3-b0d2-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.361969+00	2024-03-16 20:56:43.361969+00	1148	\N
73d11a52-b7bb-4785-896b-08dc45e26a6f	Сетка легкая 1С (12А500-200)/(12А500-200)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.331972+00	2024-03-16 20:56:34.331971+00	\N	\N
73e0a7ad-25d6-4ed2-89cd-08dc45e26a6f	Краска фасадная	ГОСТ Р 52020-2003	2bef5b76-c02f-45b0-b01a-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.909172+00	2024-03-16 20:56:34.909172+00	\N	\N
73f08364-7254-44a0-8c5b-08dc45e26a6f	Воздуховод из тонколистовой оцинкованной стали  250х250 б=0,8мм	ГОСТ 24751-81	2f60e3d9-40d5-44b3-b0df-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.111742+00	2024-03-16 20:56:44.111741+00	\N	\N
74082476-92b9-4be1-8958-08dc45e26a6f	Швеллер 16У	ГОСТ 8240-97	8c8e15d2-84bc-474f-b004-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.12712+00	2024-03-16 20:56:34.127119+00	1169	\N
74ac2801-3278-4910-890f-08dc45e26a6f	Лист холоднокатаный толщиной, мм 5 Ст3	ГОСТ 19904-90	f22a50c6-0374-4935-affb-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.762288+00	2024-03-16 20:56:33.762287+00	\N	\N
74dcd78e-65cc-4ecd-891c-08dc45e26a6f	Лист горячекатанный толщиной, мм 10 Ст3	ГОСТ 19903-2015	10944fd8-8d1a-4f19-affc-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.798783+00	2024-03-16 20:56:33.798783+00	\N	\N
7512b968-e4bf-4abb-8c2e-08dc45e26a6f	Люки чугунные тяжелые с квадаратным корпусом тип Т (С250) Л	\N	9f94a861-2371-45b2-b0c9-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.876239+00	2024-03-16 20:56:42.876238+00	1204	\N
751b6e6d-691f-4a61-8d10-08dc45e26a6f	Трубы полипропиленовые РРRC 50 PN10	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.461049+00	2024-03-16 20:56:46.461049+00	\N	\N
751e2da0-9445-4bb4-8a51-08dc45e26a6f	Перемычки 3ПБ21-8-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.723255+00	2024-03-16 20:56:36.723255+00	1002	\N
7577feb8-47bb-4def-8d72-08dc45e26a6f	Дюбель полимерный распорный М 10х170	ГОСТ Р 57787-2017 	150d0c7f-dd85-4110-b12d-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.962253+00	2024-03-16 20:56:46.962252+00	\N	\N
757f7b16-5b2c-4775-8bd1-08dc45e26a6f	Клапан балансировочный ручной Ду 15мм, PN16	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.394022+00	2024-03-16 20:56:41.394021+00	1217	\N
76064116-0bc0-4f07-8b42-08dc45e26a6f	Декоративная фланцевая крышка "Опора Кари100-ОТ-6/2-40W"	ГОСТ 16703-2022	71cd9eb4-db65-4eab-b091-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.865293+00	2024-03-16 20:56:39.865292+00	\N	\N
7628335e-850e-4528-8be0-08dc45e26a6f	Клапан регулирующий седельный двухходовой, Ду=20мм, Кvs=4,0	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.422446+00	2024-03-16 20:56:41.422445+00	1197	\N
768223be-a1b6-48c8-8a87-08dc45e26a6f	Перемычки 9ПБ21-8	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.784906+00	2024-03-16 20:56:36.784906+00	1002	\N
769186a8-c017-424c-8c82-08dc45e26a6f	Датчик температуры NTC 10кОм накладной NTC 10кОМ	ГОСТ Р 52931-2008	23621aa7-29f0-43e1-b0f6-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.908781+00	2024-03-16 20:56:44.90878+00	\N	\N
775fb1af-bd82-428d-8ac5-08dc45e26a6f	Доска 30х150	ГОСТ 8486-86	aded3bde-f78b-40cb-b05e-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.388748+00	2024-03-16 20:56:37.388748+00	\N	\N
77b1073a-561e-4295-8a6f-08dc45e26a6f	Перемычки 5ПБ31-27-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.754377+00	2024-03-16 20:56:36.754377+00	1002	\N
77e6a5aa-7478-469c-8af1-08dc45e26a6f	Дверь металлическая противопожарная ДПСО 01 2210-1100 правая EIS60	ГОСТ Р 57327-2016	368f79bb-710b-4879-b070-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.202878+00	2024-03-16 20:56:38.202878+00	2241	\N
77e978e3-4fa7-41f4-8ae1-08dc45e26a6f	Блоки оконные алюминиевые ОАК СПО 1700-700 В2	ГОСТ 21519-2003	59876868-1257-45ac-b069-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.911331+00	2024-03-16 20:56:37.911331+00	2238	\N
78fa2609-745b-4033-8c56-08dc45e26a6f	Клапан обратный вентиляционный 150х150	ГОСТ 24751-81	49b52a17-08a2-4ca6-b0dc-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.848853+00	2024-03-16 20:56:43.848853+00	1010	\N
78fc4982-bccd-4853-8c49-08dc45e26a6f	Вентилятор канальный L=390м3/час, Р=120Па, N=0,2кВт, U=230В	ГОСТ 34662-2020	df1b1ea7-11c4-4b8c-b0d5-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.474753+00	2024-03-16 20:56:43.474753+00	1074	\N
79070caa-2a40-4945-8b6c-08dc45e26a6f	Тройник полиэтиленовый сварной ПЭ 100 SDR 21 d 315х315х315	ТУ 2248-001-92273154-2013	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.844776+00	2024-03-16 20:56:40.844775+00	1295	\N
7947b32d-8cf1-4acc-8d66-08dc45e26a6f	Труба прямоугольной формы профиля ПП-50х25х2,25	ГОСТ 32931-2015	59651b32-96bc-4fd9-b12a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.848208+00	2024-03-16 20:56:46.848207+00	\N	\N
7960b83d-b87c-4e34-8bc7-08dc45e26a6f	Затвор дисковый поворотный чугунный Ду80 PN 1,0 Мпа	ГОСТ 13547-2015	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.339947+00	2024-03-16 20:56:41.339947+00	1209	\N
79a4d962-54af-41fb-8926-08dc45e26a6f	Лист с чечевичным рифлением толщиной, мм 4 Ст3	ГОСТ 8568-77	5a59190f-3529-4e10-affe-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.862521+00	2024-03-16 20:56:33.862521+00	\N	\N
79ab366a-322c-4f46-8aa5-08dc45e26a6f	Блоки фундаментные ФБС 12.5.3-Т	ГОСТ 13579-78	ad27c4c9-2769-45c7-b055-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.996455+00	2024-03-16 20:56:36.996455+00	1184	\N
79bdaadf-4d97-455e-8d33-08dc45e26a6f	Труба полиэтиленовая "питьевая" ПЭ 100 SDR 13,6, 400х29,4	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.663272+00	2024-03-16 20:56:46.663272+00	\N	\N
79ddcaf6-7cfc-4e16-8daa-08dc45e26a6f	Крепление полипропиленовых труб для труб Ду=110	ГОСТ 32415-2013	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.36784+00	2024-03-16 20:56:47.36784+00	\N	\N
79ff1c38-3a93-4875-8ad6-08dc45e26a6f	Кронштейн 220мм	ГОСТ Р 58154-2018	73160bb9-5526-4799-b065-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.723638+00	2024-03-16 20:56:37.723637+00	\N	\N
7a214a72-96de-4cad-8a37-08dc45e26a6f	Перемычки 10ПБ21-27-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.69243+00	2024-03-16 20:56:36.69243+00	1002	\N
7a4431d1-c5ad-4923-8901-08dc45e26a6f	Фанера березовая влагостойкая ФСФ 18мм	ГОСТ 3916.1-2018	448a4e3c-f3df-47f6-aff8-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.68376+00	2024-03-16 20:56:33.683759+00	\N	\N
7a5f3127-4b0a-4138-8c66-08dc45e26a6f	Радиатор стальной панельный, боковое подключение, b=102 мм, h=500 мм, L=900мм (С), в комплекте	ГОСТ 31311-2005	d3dcfc01-22ee-431b-b0e4-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.358121+00	2024-03-16 20:56:44.358121+00	\N	\N
7ac0bc78-67e0-4bbf-8943-08dc45e26a6f	Уголок стальной равнополочный 50х4	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.061435+00	2024-03-16 20:56:34.061435+00	1167	\N
7b13ba1f-6e12-4c67-8933-08dc45e26a6f	Уголок стальной равнополочный 100х10	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.044514+00	2024-03-16 20:56:34.044513+00	1167	\N
7b285d85-635e-492c-8d73-08dc45e26a6f	Дюбель полимерный распорный М 10х220	ГОСТ Р 57787-2017 	150d0c7f-dd85-4110-b12d-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.963129+00	2024-03-16 20:56:46.963128+00	\N	\N
7b6f02ee-e6aa-4ed2-8a72-08dc45e26a6f	Перемычки 5ПБ36-20	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.756207+00	2024-03-16 20:56:36.756207+00	1002	\N
7bc622bc-7cea-4b79-88c4-08dc45e26a6f	Гравий для строительных работ фракция 20-40мм 	ГОСТ 8267-93	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.141162+00	2024-03-16 20:56:33.141161+00	\N	\N
7bc82544-9bb6-4fae-8937-08dc45e26a6f	Уголок стальной равнополочный 100х7	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.046741+00	2024-03-16 20:56:34.04674+00	1167	\N
7bde630d-7db0-4b9f-8a29-08dc45e26a6f	Плита канальная П 5/3-8	ГОСТ 13015-2012	22967abd-4dda-4306-b049-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.433589+00	2024-03-16 20:56:36.433589+00	\N	\N
7c54b762-7847-4bf5-8c28-08dc45e26a6f	Люки чугунные легкие тип Л (А15) ТС	\N	9f94a861-2371-45b2-b0c9-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.862318+00	2024-03-16 20:56:42.862317+00	1174	\N
7c6ed7fb-0fd2-4231-8902-08dc45e26a6f	Фанера березовая влагостойкая ФСФ 20мм	ГОСТ 3916.1-2018	448a4e3c-f3df-47f6-aff8-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.684303+00	2024-03-16 20:56:33.684302+00	\N	\N
7c9f5b22-0c56-44e0-8986-08dc45e26a6f	Арматура стеклопластиковая 5,5-400-2	ТУ 2296-001-20994511-98	4dc75800-844b-4eda-b00d-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.39679+00	2024-03-16 20:56:34.39679+00	\N	\N
7d229c31-e073-47ba-8a91-08dc45e26a6f	Перемычки 9ПБ27-8	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.792988+00	2024-03-16 20:56:36.792988+00	1002	\N
7d6f853a-fe88-4610-8b6f-08dc45e26a6f	Тройник напорный равнопроходной 90° Ду110 ПВХ	ГОСТ Р 51613-2000	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.848147+00	2024-03-16 20:56:40.848146+00	2205	\N
7d9fa81e-180a-4ec8-8a8b-08dc45e26a6f	Перемычки 9ПБ25-3	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.787098+00	2024-03-16 20:56:36.787097+00	1002	\N
7e0f04d1-e5bf-4c62-8d28-08dc45e26a6f	Труба гофрированная двухслойная профилированная РР SN8 DN/OD 200мм в комплекте с муфтой и уплотнительным кольцом	ГОСТ Р 54475-2011	83e611b3-cec5-4510-b126-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.613025+00	2024-03-16 20:56:46.613024+00	\N	\N
7e2f8175-4030-48ec-89d8-08dc45e26a6f	Керамогранит Kerama Marazzi Фондамента пепельный светлый обрезной DL500700R 60х60	ГОСТ 57141-2016	bc31dd9b-c6b0-47f3-b022-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.184047+00	2024-03-16 20:56:35.184047+00	\N	\N
7e6b01d9-fe12-4c77-8b7c-08dc45e26a6f	Крестовина стальная фланцевая КФ 150	ТУ 1468-002-97908404-2007	9f18a939-2f32-4798-b0a5-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.913658+00	2024-03-16 20:56:40.913658+00	1263	\N
7ea9243c-17db-4125-8a03-08dc45e26a6f	Плитка тротуарная 1Ш.5	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.061318+00	2024-03-16 20:56:36.061318+00	\N	\N
7ec97b20-845d-4727-8aa4-08dc45e26a6f	Блоки фундаментные ФБС 12.4.3-Т	ГОСТ 13579-78	ad27c4c9-2769-45c7-b055-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.993488+00	2024-03-16 20:56:36.993487+00	1184	\N
7eed5dbf-0217-4488-8b41-08dc45e26a6f	Кронштейн выносной крепления светильника BCP382	ГОСТ 16703-2022	53544ad0-dd3c-44a0-b090-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.812692+00	2024-03-16 20:56:39.812691+00	1165	\N
7f5e7771-bf66-4fce-8dbe-08dc45e26a6f	Изоляция трубная из вспененного полиэтилена Ду=28мм, б=13мм	ГОСТ Р 56729-2015	7982d8ea-f728-4c67-b142-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.703131+00	2024-03-16 20:56:47.70313+00	\N	\N
7fa59db5-0be9-4da9-8c36-08dc45e26a6f	Решетка настенная пластиковая, накладная с регулируемым жалюзи, сечением 250х300(h)	ГОСТ 32548-2013	c2786989-eba1-45f9-b0cc-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.02566+00	2024-03-16 20:56:43.02566+00	1279	\N
7fd2c77c-4df9-4d83-8a12-08dc45e26a6f	Плитка тротуарная 7.П.6	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.089327+00	2024-03-16 20:56:36.089326+00	\N	\N
7fd8e3cd-c2cb-4f72-8cb8-08dc45e26a6f	Контроллер SimpleLock системы мобильного доступа SmartAirkey (Mifare)	ГОСТ 26342-84	433b4ad4-4ed6-4418-b108-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.533456+00	2024-03-16 20:56:45.533456+00	1100	\N
808256e9-0ea5-48b6-8ce9-08dc45e26a6f	Делитель ТВ сигнала на 6 отводов (11 дБ)	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.31095+00	2024-03-16 20:56:46.31095+00	\N	\N
8100a7ba-1050-431c-8bc6-08dc45e26a6f	Затвор дисковый поворотный чугунный Ду50 PN 1,6 МПа 	ГОСТ 13547-2015	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.339282+00	2024-03-16 20:56:41.339282+00	1209	\N
811a9e8b-9e0e-46fa-89d0-08dc45e26a6f	Состав антисептический 	ТУ 2389-004-13238275-96	3ad558a3-21fa-41c1-b01d-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.011128+00	2024-03-16 20:56:35.011127+00	\N	\N
81442026-14a9-490e-8a16-08dc45e26a6f	Плитка тротуарная 9.К.8	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.099794+00	2024-03-16 20:56:36.099794+00	\N	\N
8144417e-5588-4d6a-8a5c-08dc45e26a6f	Перемычки 3ПБ39-8	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.738456+00	2024-03-16 20:56:36.738456+00	1002	\N
8167c482-8252-4e71-8ca0-08dc45e26a6f	Громкоговоритель настенный 6Вт SWS-10	ГОСТ 26342-84	cee74bd7-8f0a-48d9-b100-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.271956+00	2024-03-16 20:56:45.271956+00	1227	\N
81d63c0c-ba4d-41c4-88c5-08dc45e26a6f	Гравий для стоительных работ фракция 5-10 мм	ГОСТ 8267-93	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.141684+00	2024-03-16 20:56:33.141682+00	\N	\N
81e887a3-ebdc-46c8-897d-08dc45e26a6f	Сетка тяжелая 2С (12А500-150)/(12А500-150)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.350102+00	2024-03-16 20:56:34.350101+00	\N	\N
81fa2266-73d6-4780-8b27-08dc45e26a6f	Кабели витая пара, неэкранированные (U/UTP), категория 5e, 4 пары (24 AWG)	ГОСТ Р 53316-2021	61b5c510-5cb7-485b-b081-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.056544+00	2024-03-16 20:56:39.056543+00	\N	\N
81fb20a3-da96-4b67-8a44-08dc45e26a6f	Перемычки 2ПБ29-4	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.708814+00	2024-03-16 20:56:36.708813+00	1002	\N
822bf63d-adf5-4632-89cc-08dc45e26a6f	Набрызг фактурной штукатурки 	ГОСТ Р 57984-2017	41220ef4-a634-4723-b019-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.883256+00	2024-03-16 20:56:34.883255+00	\N	\N
82341b0b-8486-4694-89e7-08dc45e26a6f	Кресло	\N	bcd273a0-a301-4962-b02f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.568688+00	2024-03-16 20:56:35.568688+00	1031	\N
8257682f-71fd-42cd-8a34-08dc45e26a6f	Перемычки 10ПБ18-27	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.689555+00	2024-03-16 20:56:36.689555+00	1002	\N
828bdef1-44ee-4a1c-8d0e-08dc45e26a6f	Трубы полипропиленовые РРRC 40 PN10	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.45431+00	2024-03-16 20:56:46.454309+00	\N	\N
82c4b363-cd31-4e89-8a2d-08dc45e26a6f	Перемычки 2ПБ10-1п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.679401+00	2024-03-16 20:56:36.679401+00	1002	\N
82ce064f-0d08-4f8d-8d2a-08dc45e26a6f	Труба гофрированная двухслойная профилированная РР SN8 DN/OD 315мм с раструбом и уплотнительным кольцом	ГОСТ Р 54475-2011	83e611b3-cec5-4510-b126-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.614408+00	2024-03-16 20:56:46.614408+00	\N	\N
830049b9-9821-4019-8994-08dc45e26a6f	ИМС-16	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.436998+00	2024-03-16 20:56:34.436998+00	\N	\N
8383d861-8785-4b1a-8a04-08dc45e26a6f	Плитка тротуарная 2.1.П.4	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.066849+00	2024-03-16 20:56:36.066848+00	\N	\N
83a9020c-49ec-442d-89e5-08dc45e26a6f	Зеркало со скрытой подсветкой сверху и снизу	\N	bcd273a0-a301-4962-b02f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.566455+00	2024-03-16 20:56:35.566455+00	1029	\N
83b68698-a668-44e7-8bbb-08dc45e26a6f	Задвижка клиновая фланцевая чугунная PN16,  DN100, с электроприводом	ГОСТ 5762-2002	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.323912+00	2024-03-16 20:56:41.323912+00	1206	\N
83b93da4-9204-40fb-8ae4-08dc45e26a6f	Блоки дверные деревянные и комбинированные Дв1 Рл 21х8 Г Пр Мд1	ГОСТ 475-2016	33d6926a-3175-482c-b06d-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.065341+00	2024-03-16 20:56:38.06534+00	2239	\N
840a0244-a932-4d83-8aad-08dc45e26a6f	Опорные плиты ОП 5.4	ГОСТ  13015-2012	7932f288-6ebe-471c-b059-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.171875+00	2024-03-16 20:56:37.171875+00	1040	\N
840b2583-56bc-430d-8daf-08dc45e26a6f	Крепление полипропиленовых труб Ду=50	ГОСТ 32415-2013	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.378405+00	2024-03-16 20:56:47.378404+00	\N	\N
844f7361-de18-4f94-8cf3-08dc45e26a6f	Ответвитель сигнала на 4 отвода для коаксиальных сетей затухания 20 dB TAH-420	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.319589+00	2024-03-16 20:56:46.319588+00	\N	\N
8472390b-7449-4782-8cbc-08dc45e26a6f	Антивандальная кнопка отрытия замка с подсветкой	ГОСТ Р МЭК 60065-2009	876d4620-d80c-4f22-b10a-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.602579+00	2024-03-16 20:56:45.602579+00	1104	\N
84ea4160-db8b-4145-8a69-08dc45e26a6f	Перемычки 5ПБ27-37-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.751176+00	2024-03-16 20:56:36.751176+00	1002	\N
84f9af78-be7c-4e6b-88e9-08dc45e26a6f	Бетон тяжелый B 25 (M350)	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.466183+00	2024-03-16 20:56:33.466181+00	\N	\N
85312281-2409-4027-8d03-08dc45e26a6f	Трубы полипропиленовые армированные стекловолокном 90х15  PN25	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.430733+00	2024-03-16 20:56:46.430732+00	\N	\N
8560e20d-f3fd-469f-89a6-08dc45e26a6f	ИМС-32	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.454195+00	2024-03-16 20:56:34.454195+00	\N	\N
85669050-cfc5-4690-8915-08dc45e26a6f	Лист горячекатанный толщиной, мм 3 Ст3	ГОСТ 19903-2015	10944fd8-8d1a-4f19-affc-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.792167+00	2024-03-16 20:56:33.792165+00	\N	\N
85b490a3-b292-4393-8a3b-08dc45e26a6f	Перемычки 10ПБ27-27-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.701468+00	2024-03-16 20:56:36.701468+00	1002	\N
85c0b66d-3b17-4072-89da-08dc45e26a6f	Керамогранит Уральский гранит UF019MR насыщенно-черный 1200х600х11 матовый.	ГОСТ 57141-2016	bc31dd9b-c6b0-47f3-b022-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.185157+00	2024-03-16 20:56:35.185156+00	\N	\N
85c5b86b-1e6e-47cb-890c-08dc45e26a6f	Лист холоднокатаный толщиной, мм 1,2 Ст3	ГОСТ 19904-90	f22a50c6-0374-4935-affb-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.760172+00	2024-03-16 20:56:33.760171+00	\N	\N
85f36631-f527-4ca3-8c40-08dc45e26a6f	Труба водосточная металлическая D = 100	\N	3e1f6e1c-d1f9-48a3-b0d2-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.353804+00	2024-03-16 20:56:43.353803+00	1138	\N
86313ddf-dffe-44eb-8afa-08dc45e26a6f	Детские оконные замки	ГОСТ 30674-99	8b0ac952-1b5a-46e3-b075-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.454804+00	2024-03-16 20:56:38.454803+00	\N	\N
8640da04-fcbf-4a0c-89bf-08dc45e26a6f	Гидрошпонка "Технониколь" типа IC-240-6	СТО 72746455-3.4.4-2015	95d8e924-9f3e-4b34-b010-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.553813+00	2024-03-16 20:56:34.553812+00	\N	\N
86b5cfbb-7005-41c4-8d0c-08dc45e26a6f	Трубы полипропиленовые РРRC 32 PN10	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.448135+00	2024-03-16 20:56:46.448134+00	\N	\N
86ca8726-0673-455e-8b77-08dc45e26a6f	Тройник равнопроходной 45° ПЭ 100 SDR 11 110мм	ГОСТ 18599-2001	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.864268+00	2024-03-16 20:56:40.864267+00	1287	\N
86f2d9d9-5eba-45a1-8ba9-08dc45e26a6f	Кран шаровый латунный с накидной гайкой и ниппелем вн/нар, Ду15, Pn40, Tmax110C	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.242858+00	2024-03-16 20:56:41.242858+00	2231	\N
871ecd8d-de6e-4d1c-8bb3-08dc45e26a6f	Кран шаровый стальной Ду25/Ру16/Тmax180	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.264475+00	2024-03-16 20:56:41.264474+00	2233	\N
87460b0a-a13c-448a-8a1b-08dc45e26a6f	Камни бортовые БР 100.30.18	ГОСТ 6665-91	c2a537eb-afa5-4d21-b042-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.166915+00	2024-03-16 20:56:36.166915+00	\N	\N
874cb96b-219b-4f19-897c-08dc45e26a6f	Сетка легкая 5С (5Вр1-100)/(5Вр1-100)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.349511+00	2024-03-16 20:56:34.349511+00	\N	\N
876700d1-badd-4376-8a3d-08dc45e26a6f	Перемычки 10ПБ27-37-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.703304+00	2024-03-16 20:56:36.703304+00	1002	\N
87700179-fff9-4dcc-8ab4-08dc45e26a6f	Днища КЦД 10	ГОСТ 8020-90	979d1a13-d47a-42d3-b05a-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.21735+00	2024-03-16 20:56:37.21735+00	\N	\N
877c306d-6758-4b76-8a82-08dc45e26a6f	Перемычки 9ПБ16-37-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.774288+00	2024-03-16 20:56:36.774287+00	1002	\N
87beabda-5f25-41b2-8b3d-08dc45e26a6f	Светильник НПБ01-60(ПСХ60)	ГОСТ 16703-2022	1d5dff63-1024-4e3c-b08e-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.701938+00	2024-03-16 20:56:39.701937+00	1043	\N
87c3ee04-cc93-43ef-8d26-08dc45e26a6f	Гофротруба защитная из полиэтилена Ду36, Дн42	ГОСТ 32415-2013	83e611b3-cec5-4510-b126-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.611599+00	2024-03-16 20:56:46.611599+00	\N	\N
87eeb9f7-212e-47eb-8b7d-08dc45e26a6f	Муфта комбинированная разъемная с внутр. резьбой 25х3/4"	ГОСТ 32415-2013.	9f18a939-2f32-4798-b0a5-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.914432+00	2024-03-16 20:56:40.914432+00	1269	\N
87f4e21b-8d88-406f-8c08-08dc45e26a6f	Шкаф пожарный ШПК-310НЗ	ГОСТ Р 51844-2009	dbbb9c35-7d40-48f0-b0b3-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.805303+00	2024-03-16 20:56:41.805302+00	1058	\N
880d6b9d-5680-4dfb-8c4d-08dc45e26a6f	Стакан монтажный, типоразмер 400	ТУ 4863-004-04980426-02	d251f293-f347-4620-b0d9-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.685174+00	2024-03-16 20:56:43.685173+00	\N	\N
8814e9a7-2b47-4760-8aa6-08dc45e26a6f	Блоки фундаментные ФБС 12.6.3-Т	ГОСТ 13579-78	ad27c4c9-2769-45c7-b055-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.998061+00	2024-03-16 20:56:36.99806+00	1184	\N
88a7d6bc-fbc7-4eb8-8abf-08dc45e26a6f	Брус 200х200мм	ГОСТ 8486-86	f03580ab-1132-4afb-b05d-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.338277+00	2024-03-16 20:56:37.338277+00	\N	\N
88b6ea3e-c8c8-47a0-8b6a-08dc45e26a6f	Переход ПЭ 100 SDR 11 315/225	ГОСТ 18599-2001	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.843008+00	2024-03-16 20:56:40.843007+00	1294	\N
88ca927d-ed95-4be1-8d35-08dc45e26a6f	Труба полиэтиленовая "питьевая" ПЭ 100 SDR 13,6, 50х3,7	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.664599+00	2024-03-16 20:56:46.664599+00	\N	\N
88d93874-9a0e-4e8b-88c6-08dc45e26a6f	Галька для стоительных работ фракция 20-40 мм	ГОСТ 8267-93	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.142977+00	2024-03-16 20:56:33.142976+00	\N	\N
88d95fc8-06ea-446b-8a1c-08dc45e26a6f	Кирпич керамический рядовой пустотелый утолщенный КР-р-пу 1,4НФ/125/1,4/50	ГОСТ 530-2012	a2335687-02b8-4313-b043-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.220075+00	2024-03-16 20:56:36.220074+00	\N	\N
89209841-577b-46fa-8cb5-08dc45e26a6f	Считыватель Mifare	ТУ 4372-041-88226999-2012	b343e1dd-a633-4165-b107-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.49825+00	2024-03-16 20:56:45.49825+00	1097	\N
8926721f-32a0-4ae9-8ce2-08dc45e26a6f	Инжектор POE OSNOVO Midspan-1/300G, черный	ГОСТ 12.2.003-91	74ac15dd-861e-4038-b11b-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.164409+00	2024-03-16 20:56:46.164408+00	\N	\N
892784dd-1b51-452d-8bb5-08dc45e26a6f	Кран шаровый стальной муфтовый, Ду20мм Pn16, Tmax150C	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.268634+00	2024-03-16 20:56:41.268634+00	2232	\N
892a9de9-e3f4-4254-8953-08dc45e26a6f	Швеллер 12П	ГОСТ 8240-97	8c8e15d2-84bc-474f-b004-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.120367+00	2024-03-16 20:56:34.120367+00	1168	\N
892ebb7b-690b-478f-8cfe-08dc45e26a6f	Трубы полипропиленовые армированные стекловолокном 32х5,4  PN25	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.426654+00	2024-03-16 20:56:46.426654+00	\N	\N
8938346f-9a03-4f5d-8b0a-08dc45e26a6f	Кабель силовой ВВГнг(А)-FRLS 3х6 660В	ГОСТ 16442-80	5e67bd10-c6a3-4f86-b078-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.562959+00	2024-03-16 20:56:38.562958+00	\N	\N
895082b1-322a-4f77-8dbd-08dc45e26a6f	Виброопоры виброфлекс SM 450/75	ГОСТ 30434-96	63e850ad-dd12-4bf7-b140-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.650392+00	2024-03-16 20:56:47.650392+00	\N	\N
89589946-1740-4201-8a20-08dc45e26a6f	Плиты дорожные 2П30-15-30	ГОСТ Р 21924.0-84	ac531355-64fc-4569-b046-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.311813+00	2024-03-16 20:56:36.311812+00	\N	\N
896c81c4-8605-4205-8ca8-08dc45e26a6f	Усилитель трансляционный усилитель мощности РТС-2000 УМ-100	ГОСТ Р 53325-2012	b76b8ff2-4dd2-4686-b101-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.313456+00	2024-03-16 20:56:45.313456+00	1234	\N
89938a7c-3140-4362-8b22-08dc45e26a6f	Кабель КПСЭ нг-FRHF 2х2х1,0	ГОСТ 31565-2012	b9ec1643-362c-482e-b07e-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.912637+00	2024-03-16 20:56:38.912637+00	\N	\N
89c2cd24-5322-4ffe-88ea-08dc45e26a6f	Керамзитобетон М 100	ГОСТ 25820-2014	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.46711+00	2024-03-16 20:56:33.467109+00	\N	\N
89cc94f7-f5fe-46fc-899f-08dc45e26a6f	ИМС-26	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.445562+00	2024-03-16 20:56:34.445561+00	\N	\N
89cd8dda-3586-480b-8ced-08dc45e26a6f	Абонентский делитель на 3 отвода SAН306F	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.314577+00	2024-03-16 20:56:46.314577+00	\N	\N
89f87aa4-7f6f-4289-8d4c-08dc45e26a6f	Элемент трубопровода концевой с КВ и МЗИ в полиэтиленовой оболочке Ст 57-4,5-1-ППУ-ПЭ	ГОСТ 30732-2006	4422f14a-bf6c-483c-b128-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.745775+00	2024-03-16 20:56:46.745775+00	\N	\N
8a5183be-3cbd-4aab-8976-08dc45e26a6f	Сетка легкая 4С (4Вр1-100)/(4Вр1-100)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.344037+00	2024-03-16 20:56:34.344036+00	\N	\N
8aba15be-5874-45bb-8bfe-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy40/Py16/Tmax180	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.54352+00	2024-03-16 20:56:41.54352+00	1249	\N
8ad4da64-533f-4679-8ab1-08dc45e26a6f	Кольца КЦ 10-9	ГОСТ 8020-90	979d1a13-d47a-42d3-b05a-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.207145+00	2024-03-16 20:56:37.207144+00	\N	\N
8b3ebdd3-7a06-42e9-88dd-08dc45e26a6f	Бетон В7,5	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.454565+00	2024-03-16 20:56:33.454562+00	\N	\N
8b8f23d1-0e46-4e6f-8a73-08dc45e26a6f	Перемычки 5ПБ36-20-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.756698+00	2024-03-16 20:56:36.756697+00	1002	\N
8c0c1fc2-0715-4c46-8b81-08dc45e26a6f	Тройник комбинированный с вну. резьбой 25х1/2"х25	ГОСТ 32415-2013.	9f18a939-2f32-4798-b0a5-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.922464+00	2024-03-16 20:56:40.922464+00	1284	\N
8c1bd457-4670-4009-8a31-08dc45e26a6f	Перемычки 2ПБ19-3п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.686288+00	2024-03-16 20:56:36.686288+00	1002	\N
8c324f46-1f3c-4cf5-8bb9-08dc45e26a6f	Задвижка клиновая фланцевая чугунная PN10,  DN150	ГОСТ 5762-2002	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.321929+00	2024-03-16 20:56:41.321929+00	1205	\N
8c986ec1-e9eb-402c-8d75-08dc45e26a6f	Дюбель полимерный распорный М 10х180	ГОСТ Р 57787-2017 	150d0c7f-dd85-4110-b12d-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.965063+00	2024-03-16 20:56:46.965063+00	\N	\N
8ca9c342-ad86-40a8-8a2e-08dc45e26a6f	Перемычки 2ПБ13-1п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.680286+00	2024-03-16 20:56:36.680285+00	1002	\N
8cab579e-4ae8-425f-8ca5-08dc45e26a6f	Усилитель проводного вещания ROXTON AA-60	ГОСТ Р 53325-2012	b76b8ff2-4dd2-4686-b101-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.310704+00	2024-03-16 20:56:45.310704+00	1231	\N
8caeff70-327d-4c46-8a3e-08dc45e26a6f	Перемычки 2ПБ22-3	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.704408+00	2024-03-16 20:56:36.704408+00	1002	\N
8ce12cae-17e2-4bf4-8afb-08dc45e26a6f	Доводчик уличной двери (калиток)	ГОСТ Р 56177-2014	8b0ac952-1b5a-46e3-b075-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.457204+00	2024-03-16 20:56:38.457204+00	\N	\N
8d0fbfa3-b5e6-4bb9-8c1d-08dc45e26a6f	Смеситель для раковины	ГОСТ 25809-96	44fdffbf-742e-4e9f-b0c2-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.568363+00	2024-03-16 20:56:42.568362+00	1005	\N
8d156bda-a16e-42a7-8973-08dc45e26a6f	Сетка легкая 4С (3Вр1-200)/(3Вр1-200)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.337329+00	2024-03-16 20:56:34.337329+00	\N	\N
8d4bdc40-e30b-45e3-8ce8-08dc45e26a6f	Делитель ТВ сигнала на 6 отводов (-10,5 дБ)	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.308201+00	2024-03-16 20:56:46.308201+00	\N	\N
8dd0e312-b46d-4126-8a13-08dc45e26a6f	Плитка тротуарная 7.П.8	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.090378+00	2024-03-16 20:56:36.090378+00	\N	\N
8de0a431-7223-4a0a-88ef-08dc45e26a6f	Раствор готовый кладочный цементно-известковый М 150	ГОСТ 28013-98	72d83129-8d3f-4ae2-aff0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.524054+00	2024-03-16 20:56:33.524053+00	\N	\N
8dec97d4-14e1-4589-89dd-08dc45e26a6f	Обои виниловые влагостойкие	ГОСТ 6810-2002	f8e34c63-e4e2-4a7a-b026-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.320678+00	2024-03-16 20:56:35.320678+00	\N	\N
8e31267d-d3ef-4364-88d7-08dc45e26a6f	Клеевая смесь	ГОСТ Р 54359-2017	fb247a45-0dfa-427b-afe8-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.307295+00	2024-03-16 20:56:33.307293+00	\N	\N
8e47f4fa-fd42-4b94-8b2d-08dc45e26a6f	Щит распределительный квартирный ЩРВ-П-12	ГОСТ 32396-2021	c82b3f20-06c1-4b95-b084-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.198027+00	2024-03-16 20:56:39.198026+00	1155	\N
8e994801-632a-4ce6-89e1-08dc45e26a6f	Порог Т-образный	ТУ 5275-002-72237363-2004	7c993429-f88e-4dd9-b02c-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.471329+00	2024-03-16 20:56:35.471329+00	1182	\N
8e9ed190-f8e4-4df2-8b29-08dc45e26a6f	Кабели витая пара, экранированные (F/UTP), категория 5e, 4 пары (24 AWG), одножильные, внутренние F/UTP CAt 5e FRLS 4х2х0,5	ГОСТ Р 53316-2021	61b5c510-5cb7-485b-b081-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.061328+00	2024-03-16 20:56:39.061328+00	\N	\N
8f081d40-00bb-470f-8935-08dc45e26a6f	Уголок стальной равнополочный 100х16	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.045636+00	2024-03-16 20:56:34.045636+00	1167	\N
8f170415-c7da-4677-8bd3-08dc45e26a6f	Клапан балансировочный ручной Ду 32мм, PN16	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.395328+00	2024-03-16 20:56:41.395327+00	1217	\N
8f1ab95a-af16-4d57-8bcd-08dc45e26a6f	Клапан балансировочный автоматический Ду25, PN16	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.391069+00	2024-03-16 20:56:41.391068+00	1202	\N
8f5867c6-df8f-4537-8a27-08dc45e26a6f	Лотки канальные Л 11/2-15	ГОСТ 13015-2012	a0ae6856-57f8-4dde-b048-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.387212+00	2024-03-16 20:56:36.387212+00	\N	\N
8f7e51b6-bfcd-41fa-8c2a-08dc45e26a6f	Люки чугунные тяжелые тип Т (С250) К	\N	9f94a861-2371-45b2-b0c9-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.86406+00	2024-03-16 20:56:42.86406+00	1176	\N
8fc8799c-b87c-4281-8c6e-08dc45e26a6f	Полотенцесушитель хромированный М-образный, 40х50 Ду20	ГОСТ Р 71030-2023	7f450e40-c4d5-4419-b0ec-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.611489+00	2024-03-16 20:56:44.611488+00	1085	\N
8fc9dce2-609d-45b6-8955-08dc45e26a6f	Швеллер 14П	ГОСТ 8240-97	8c8e15d2-84bc-474f-b004-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.122046+00	2024-03-16 20:56:34.122046+00	1168	\N
8fcab0ee-8e70-406b-894f-08dc45e26a6f	Швеллер 8П	ГОСТ 8240-97	8c8e15d2-84bc-474f-b004-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.118154+00	2024-03-16 20:56:34.118153+00	1168	\N
902d803d-c12d-4367-8c17-08dc45e26a6f	Мойка эмалированная в комплекте с сифоном	ГОСТ 23695-2016	501b1a17-e4af-4601-b0bd-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.271675+00	2024-03-16 20:56:42.271675+00	1066	\N
905c79e6-774f-4127-8a77-08dc45e26a6f	Перемычки 8ПБ13-1	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.759495+00	2024-03-16 20:56:36.759494+00	1002	\N
90802b78-235a-4ef4-8999-08dc45e26a6f	ИМС-20	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.4401+00	2024-03-16 20:56:34.4401+00	\N	\N
908a0cbe-127b-403c-8c6f-08dc45e26a6f	Полотенцесушитель из оцинкованной стальной трубы М-образный 40х50, Ду20	ГОСТ Р 71030-2023	7f450e40-c4d5-4419-b0ec-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.612449+00	2024-03-16 20:56:44.612449+00	1086	\N
90ea6e4e-4d05-4d13-8988-08dc45e26a6f	Арматура стеклопластиковая 5,5-500-2	ТУ 2296-001-20994511-98	4dc75800-844b-4eda-b00d-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.397871+00	2024-03-16 20:56:34.397871+00	\N	\N
91990b5d-73c7-4dae-8959-08dc45e26a6f	Швеллер стальной гнутый 100х50х4	ГОСТ 8278-83	f8ae8e32-7d4f-45f7-b005-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.157988+00	2024-03-16 20:56:34.157988+00	1170	\N
92011431-aae8-442a-88dc-08dc45e26a6f	Портландцемент ПЦ 500	ГОСТ 10178-85	4dd064bf-5b04-43df-afea-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.389501+00	2024-03-16 20:56:33.389499+00	\N	\N
92a05f7e-65a7-489b-8d5a-08dc45e26a6f	Трубы оцинкованные обыкновенные 32х3,2	ГОСТ 3262-75	42e75951-9bd0-466a-b129-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.797624+00	2024-03-16 20:56:46.797623+00	\N	\N
92c8e8aa-a8b8-449a-88eb-08dc45e26a6f	Бетон тяжелый B 20 (M250)	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.467644+00	2024-03-16 20:56:33.467643+00	\N	\N
92d1b9c7-b27d-49da-8d21-08dc45e26a6f	Гофротруба защитная из полиэтилена Ду19, Дн24	ГОСТ 32415-2013	83e611b3-cec5-4510-b126-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.605603+00	2024-03-16 20:56:46.605603+00	\N	\N
93766fe4-b591-45ea-8a97-08dc45e26a6f	Ступени лестниц ЛС11	ГОСТ 8717-2016	a0998d0b-20a5-4b1d-b053-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.896644+00	2024-03-16 20:56:36.896644+00	1038	\N
9380b5a4-3ad7-4805-8adb-08dc45e26a6f	Профиль Z образный	ГОСТ Р 58154-2018	73160bb9-5526-4799-b065-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.728132+00	2024-03-16 20:56:37.728132+00	\N	\N
93cb2f9a-7391-4a1a-8c11-08dc45e26a6f	Термометр  (0-120°С) G1/2., ф80, 1,5,  L=35мм.	ГОСТ Р 52931-2008	9610c338-aea2-4c72-b0b8-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.024563+00	2024-03-16 20:56:42.024563+00	1061	\N
93cc0730-90d4-49f8-8bc8-08dc45e26a6f	Затвор дисковый поворотный чугунный Ду80 PN 1,6 Мпа	ГОСТ 13547-2015	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.340609+00	2024-03-16 20:56:41.340609+00	1209	\N
93d36625-74ba-4678-8cb7-08dc45e26a6f	Контроллер доступа со встроенным считывателем	ТР ТС 020/2011	433b4ad4-4ed6-4418-b108-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.532481+00	2024-03-16 20:56:45.53248+00	1099	\N
941995c4-c2f1-4ebc-8af6-08dc45e26a6f	Ворота металлические ВМ 3160х2450	ГОСТ 31174-2017	ab91d760-7bef-4ca6-b072-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.319079+00	2024-03-16 20:56:38.319078+00	1190	\N
942c1672-e723-4dc1-8cff-08dc45e26a6f	Трубы полипропиленовые армированные стекловолокном 40х6,7  PN25	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.427344+00	2024-03-16 20:56:46.427343+00	\N	\N
9505e446-a00a-4449-8d90-08dc45e26a6f	Болт М12х40	ГОСТ Р 57787-2017	f0617938-2df2-47b8-b131-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.148786+00	2024-03-16 20:56:47.148785+00	\N	\N
9507d48d-c3cb-465d-8965-08dc45e26a6f	Прокат стальной квадратный 20 Ст3	ГОСТ 2591-2006	84c5c08e-8ce4-48d5-b00a-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.28349+00	2024-03-16 20:56:34.28349+00	\N	\N
959525e6-ba3c-450d-8d5f-08dc45e26a6f	Труба квадратной формы профиля ПК-60х60х3,0	ГОСТ 32931-2015	59651b32-96bc-4fd9-b12a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.837088+00	2024-03-16 20:56:46.837087+00	\N	\N
95b5a364-dd09-453c-8962-08dc45e26a6f	Прокат стальной квадратный 10 Ст3	ГОСТ 2591-2006	84c5c08e-8ce4-48d5-b00a-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.281578+00	2024-03-16 20:56:34.281578+00	\N	\N
95fcafdf-2d39-44ad-8af9-08dc45e26a6f	Люк металический ЛП 1000х600 EIWS30	ГОСТ Р 57327-2016	a919ccad-e635-439b-b074-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.396219+00	2024-03-16 20:56:38.396218+00	1195	\N
9638f505-c8c4-4e25-8bc9-08dc45e26a6f	Клапан балансировочный автоматический Ду15, PN16	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.386371+00	2024-03-16 20:56:41.386371+00	1202	\N
966bbb58-88bb-4200-8afc-08dc45e26a6f	Картон (защита подоконных плит)	\N	8b0ac952-1b5a-46e3-b075-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.45812+00	2024-03-16 20:56:38.45812+00	\N	\N
966ff9e9-af35-4bca-8cb6-08dc45e26a6f	Автономный контроллер точек доступа в монтажной коробке	ТР ТС 020/2011	433b4ad4-4ed6-4418-b108-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.531469+00	2024-03-16 20:56:45.531468+00	1098	\N
96755928-42d3-41b5-8bb0-08dc45e26a6f	Кран шаровый стальной  Ду25 мм, Pn25, Tmax200C	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.26159+00	2024-03-16 20:56:41.261589+00	2233	\N
96c49cd0-b162-4122-8c7a-08dc45e26a6f	Грязевик абонентский вертикальный фланцевый, Ду100, Ру=16бар, Тмакс.=150С	ГОСТ 26070-83	ce3a1719-e51d-4cec-b0f4-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.840342+00	2024-03-16 20:56:44.840341+00	1257	\N
96d4c5d6-559c-416c-899c-08dc45e26a6f	ИМС-23	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.442022+00	2024-03-16 20:56:34.442021+00	\N	\N
970364f6-ce7f-4a92-895e-08dc45e26a6f	Проволока 1,2-П-О-С	ГОСТ 3282-74	a6da0d8a-c182-4a7c-b009-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.249824+00	2024-03-16 20:56:34.249823+00	\N	\N
976588bc-0694-421d-8b23-08dc45e26a6f	Кабель коаксиальный, RG-11	ГОСТ 31565-2012	06f399db-b159-4407-b07f-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.962937+00	2024-03-16 20:56:38.962936+00	\N	\N
9787ca97-b9f6-46ea-89d7-08dc45e26a6f	Керамогранит Kerama Marazzi Фондамента пепельный светлый обрезной DL500700R 60х119,5	ГОСТ 57141-2016	bc31dd9b-c6b0-47f3-b022-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.18349+00	2024-03-16 20:56:35.18349+00	\N	\N
97d918a8-60bb-41cd-8a8e-08dc45e26a6f	Перемычки 9ПБ25-8-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.788895+00	2024-03-16 20:56:36.788894+00	1002	\N
97da2d38-f398-4e59-8c5e-08dc45e26a6f	Отвод 45 гр из тонколистовой оцинкованной стали фланцованный 250х250 б=0,5мм	ГОСТ 24751-81	f7e864ef-723c-438a-b0e1-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.208305+00	2024-03-16 20:56:44.208304+00	1133	\N
97dc432d-fb04-4189-8bd0-08dc45e26a6f	Клапан балансировочный автоматический Ду32, PN25	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.39337+00	2024-03-16 20:56:41.393369+00	1202	\N
97e2f425-0e99-4c54-8c8a-08dc45e26a6f	Шкаф автоматики и управления ШАУ-П-3-RTK-Rack-P-М-1-КД-56	ТУ 4371-001-65494208-2010	5d14f410-8ec6-4a26-b0fa-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.051118+00	2024-03-16 20:56:45.051117+00	1258	\N
9803efe2-5b5b-47a1-8bdb-08dc45e26a6f	Клапан запорный радиаторный, прямой, латунный, Ду20, РN10	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.407766+00	2024-03-16 20:56:41.407766+00	1192	\N
98a924a4-2d2d-41d4-8d1e-08dc45e26a6f	Труба из сшитого полиэтилена PEX-a Ду25мм б=3,5мм	ГОСТ Р 53630-2009	243b8f7a-94da-4483-b125-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.566805+00	2024-03-16 20:56:46.566805+00	\N	\N
98fd1e85-4e59-4107-8cc9-08dc45e26a6f	Патч-панель 19, 48 портов	ГОСТ IEC 60950-1-2014	ac6d47a6-7d82-466f-b112-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.82068+00	2024-03-16 20:56:45.820679+00	1111	\N
99383324-2532-4f17-8d65-08dc45e26a6f	Труба прямоугольной формы профиля ПП-40х30х3,0	ГОСТ 32931-2015	59651b32-96bc-4fd9-b12a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.847361+00	2024-03-16 20:56:46.847361+00	\N	\N
99a0574f-6dfa-4aca-8c85-08dc45e26a6f	Датчик температуры накладной ALTF 02 Pt1000	ГОСТ Р 52931-2008	23621aa7-29f0-43e1-b0f6-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.911764+00	2024-03-16 20:56:44.911764+00	1282	\N
99b0c496-c976-4cf2-89f2-08dc45e26a6f	Картины	\N	db6359c0-bcc2-45d6-b030-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.646629+00	2024-03-16 20:56:35.646629+00	\N	\N
99c3fc31-0598-4969-8ae0-08dc45e26a6f	Блоки оконные алюминиевые ОАК СПД 1700-700 В2	ГОСТ 21519-2003	59876868-1257-45ac-b069-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.910544+00	2024-03-16 20:56:37.910543+00	2238	\N
99c5dac5-b737-465a-8c5a-08dc45e26a6f	Клапан избыточного давления воздуха, 1000х1000	ГОСТ Р 53301-2013	82849fc6-2e39-4344-b0dd-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.02217+00	2024-03-16 20:56:44.022169+00	1018	\N
99cea5f2-8c0c-47f8-8b0e-08dc45e26a6f	Лоток лестничный 200х100 L3000	ГОСТ Р 52868-2021	a16ff470-035a-47c2-b07a-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.67271+00	2024-03-16 20:56:38.672709+00	\N	\N
9a615de8-f1c2-4138-8d4f-08dc45e26a6f	Пенопакет монтажный для заделки стыков труб в ППУ изоляции 1020/1200	ГОСТ 30732-2006	4422f14a-bf6c-483c-b128-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.749732+00	2024-03-16 20:56:46.749731+00	\N	\N
9a670e43-2983-4e7f-8d78-08dc45e26a6f	Дюбель полимерный распорный М 10х240	ГОСТ Р 57787-2017 	150d0c7f-dd85-4110-b12d-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.96968+00	2024-03-16 20:56:46.96968+00	\N	\N
9a7839c4-df2a-4c68-88ec-08dc45e26a6f	Бетон тяжелый B 12,5 (M150)	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.468244+00	2024-03-16 20:56:33.468243+00	\N	\N
9a8c1b7f-10a0-4b92-8b38-08dc45e26a6f	Автоматический выключатель 40А 3Р характеристика С	ГОСТ 9098-78	5b74fcf5-628c-4755-b08b-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.579008+00	2024-03-16 20:56:39.579007+00	1162	\N
9a9ad83a-bb96-4153-8b60-08dc45e26a6f	Муфта термоусаживающаяся Ду=133/225мм	ГОСТ 32415-2013.	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.776327+00	2024-03-16 20:56:40.776327+00	2222	\N
9aa4cd98-328e-4a8f-8b05-08dc45e26a6f	Кабель силовой ВВГнг(А)-LS 5х6 660В	ГОСТ 16442-80	5e67bd10-c6a3-4f86-b078-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.558002+00	2024-03-16 20:56:38.558001+00	\N	\N
9b096192-c81b-4b6e-8c8d-08dc45e26a6f	Прибор приемно-контрольный и управления охранно-пожарный адресный Рубеж-МК1	ГОСТ Р 53325-2012	197c359d-ad6f-4bcf-b0fb-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.088509+00	2024-03-16 20:56:45.088508+00	1092	\N
9b12d38f-480a-4def-8c25-08dc45e26a6f	Насосная станция повышения давления, Q=10,9 м3/ч, Н=35,3 м (2 раб., 1 резерв.)	ГОСТ 31840-2012	c319ac53-86b1-459a-b0c7-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.780792+00	2024-03-16 20:56:42.780791+00	1291	\N
9b2d29a8-e588-422b-8ad7-08dc45e26a6f	Кронштейн 250мм	ГОСТ Р 58154-2018	73160bb9-5526-4799-b065-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.724566+00	2024-03-16 20:56:37.724566+00	\N	\N
9b75fb31-0b1b-4b08-8d4b-08dc45e26a6f	Элемент трубопровода концевой с КВ и МЗИ в полиэтиленовой оболочке Ст 219-6,0-1-ППУ-ПЭ	ГОСТ 30732-2006	4422f14a-bf6c-483c-b128-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.742165+00	2024-03-16 20:56:46.742165+00	\N	\N
9b78bf99-0963-47f3-8cfc-08dc45e26a6f	Трубы полипропиленовые армированные стекловолокном 20х3,4  PN25	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.42523+00	2024-03-16 20:56:46.42523+00	\N	\N
9c2cf6ce-bf6a-4c8f-8d17-08dc45e26a6f	Трубы полипропиленовые РРRC 90 PN20	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.477705+00	2024-03-16 20:56:46.477705+00	\N	\N
c816c803-c159-4e14-8b67-08dc45e26a6f	Обвод ПВХ 20мм	ГОСТ Р 51613-2000	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.839354+00	2024-03-16 20:56:40.839354+00	2208	\N
9c783ae7-107b-4c91-8b89-08dc45e26a6f	Тройник из сшитого полиэтилена 110х110х110	ГОСТ 32415-2013	a955d7ea-01de-455a-b0a6-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.993612+00	2024-03-16 20:56:40.993611+00	2247	\N
9ca29ba1-d54c-41b1-8cf4-08dc45e26a6f	Ответвитель сигнала на 4 отвода для коаксиальных сетей затухания 24 dB TAH-424	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.32553+00	2024-03-16 20:56:46.32553+00	\N	\N
9d19a940-f9b4-46e3-8a4e-08dc45e26a6f	Перемычки 3ПБ18-8	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.721554+00	2024-03-16 20:56:36.721554+00	1002	\N
9d49b9f2-3dc1-411e-8c83-08dc45e26a6f	Датчик скорости 4...20мА	ГОСТ Р 52931-2008	23621aa7-29f0-43e1-b0f6-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.909656+00	2024-03-16 20:56:44.909656+00	1091	\N
9d8ef37e-f480-4c12-8d11-08dc45e26a6f	Трубы полипропиленовые РРRC 50 PN20	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.462187+00	2024-03-16 20:56:46.462187+00	\N	\N
9da4b5d9-1a85-4b50-8cb4-08dc45e26a6f	Бесконтактный считыватель SIP домофона, CR-02	ТУ 4372-041-88226999-2012	b343e1dd-a633-4165-b107-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.497567+00	2024-03-16 20:56:45.497567+00	1096	\N
9dadb874-9d9a-4cc1-8d01-08dc45e26a6f	Трубы полипропиленовые армированные стекловолокном 63х10,5  PN25	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.428794+00	2024-03-16 20:56:46.428794+00	\N	\N
9defb7e0-d570-4a93-8c65-08dc45e26a6f	Шнур базальтовый №10	ГОСТ 13726-97	519d69c9-e184-4769-b0e2-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.27425+00	2024-03-16 20:56:44.274249+00	\N	\N
9df9ebba-84bf-49f5-89f7-08dc45e26a6f	Битумная мастика холодная	ГОСТ 30693-2000	7f95998e-5b23-407f-b03f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.99709+00	2024-03-16 20:56:35.997089+00	\N	\N
9e0e875b-d1ad-46e2-8b02-08dc45e26a6f	Кабель силовой ВВГнг(А)-LS 2х1,5 660В	ГОСТ 10354-82	5e67bd10-c6a3-4f86-b078-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.555395+00	2024-03-16 20:56:38.555394+00	\N	\N
9e562fba-4628-488e-8ceb-08dc45e26a6f	Делитель телевизионного сигнала на 3 отвода. затухание на отвод 6 дБ,SAH-306	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.313148+00	2024-03-16 20:56:46.313148+00	\N	\N
9e6433c2-a41c-4af0-8dbb-08dc45e26a6f	Плиты теплоизоляционные пенополистирольные ППС-25 100мм	ГОСТ 32310-2012	18ec31d2-cf2a-43f5-b13f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.613023+00	2024-03-16 20:56:47.613023+00	\N	\N
9e7a4dd3-ac6a-4fbf-8d77-08dc45e26a6f	Дюбель полимерный распорный М 10х380	ГОСТ Р 57787-2017 	150d0c7f-dd85-4110-b12d-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.967525+00	2024-03-16 20:56:46.967525+00	\N	\N
9e99c5d5-0d4a-43c0-8d13-08dc45e26a6f	Трубы полипропиленовые РРRC 63 PN20	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.466401+00	2024-03-16 20:56:46.4664+00	\N	\N
9ed8024c-187b-44a6-8d4a-08dc45e26a6f	Элемент трубопровода концевой с КВ и МЗИ в полиэтиленовой оболочке Ст 159-4,5-1-ППУ-ПЭ	ГОСТ 30732-2006	4422f14a-bf6c-483c-b128-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.740688+00	2024-03-16 20:56:46.740688+00	\N	\N
9edf6a03-8186-43c6-8c94-08dc45e26a6f	Оповещатель охранно-пожарный световой «Выход вправо» ОПОП 1-8	ТУ 4372-017-12215496-05	bcbf3286-9ff5-4bb6-b0fe-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.178462+00	2024-03-16 20:56:45.178461+00	1238	\N
9f33cd05-03c6-495b-898c-08dc45e26a6f	Сетка СКС 2	\N	4dc75800-844b-4eda-b00d-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.40015+00	2024-03-16 20:56:34.40015+00	\N	\N
9f9953ed-18d2-4896-8d48-08dc45e26a6f	Элемент трубопровода концевой с КВ и МЗИ в полиэтиленовой оболочке Ст 108-4-1-ППУ-ПЭ	ГОСТ 30732-2006	4422f14a-bf6c-483c-b128-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.738294+00	2024-03-16 20:56:46.738293+00	\N	\N
9fa2a28c-040f-4bbc-88f4-08dc45e26a6f	Раствор готовый кладочный цементный М 250	ГОСТ 28013-98	72d83129-8d3f-4ae2-aff0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.529502+00	2024-03-16 20:56:33.529502+00	\N	\N
a003843c-7000-4f0a-8cc2-08dc45e26a6f	Комплект шлагбаума Came Gard 6000( с прямоугольной стрелой 6,85м)	ГОСТ Р 51241-2008	1418309b-06c7-4602-b10f-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.727609+00	2024-03-16 20:56:45.727608+00	1106	\N
a1951870-8115-425f-8c2f-08dc45e26a6f	Люк полимерный	\N	c8bb5f68-6d61-417f-b0ca-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.937414+00	2024-03-16 20:56:42.937413+00	1183	\N
a1c9adbe-a39c-42d6-8a58-08dc45e26a6f	Перемычки 3ПБ34-4	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.73294+00	2024-03-16 20:56:36.73294+00	1002	\N
a29fa321-2c03-4ca3-8be9-08dc45e26a6f	Фильтр кассетный, 50х30	ГОСТ Р 51232-98	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.505923+00	2024-03-16 20:56:41.505923+00	1245	\N
a30fe231-d900-46f2-8ca3-08dc45e26a6f	Громкоговоритель трансляционный настенный, 100В, 10Вт/5Вт SWP-110	ГОСТ 26342-84	cee74bd7-8f0a-48d9-b100-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.275412+00	2024-03-16 20:56:45.275411+00	1230	\N
a3218e1b-8576-4828-8a3a-08dc45e26a6f	Перемычки 10ПБ27-27	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.699007+00	2024-03-16 20:56:36.699007+00	1002	\N
a327c30b-960c-4d87-8b45-08dc45e26a6f	Розетка открытой установки 1 местная 220В, 16А, IP44	ГОСТ 30988.1-2020	bb78f323-6494-41da-b094-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.030758+00	2024-03-16 20:56:40.030757+00	1211	\N
a3665956-7a2f-4f47-8bb6-08dc45e26a6f	Спускник Dy15/Py16/Tmax130	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.269507+00	2024-03-16 20:56:41.269507+00	2216	\N
a37449a2-75ae-4d18-8b99-08dc45e26a6f	Трап полипропиленовый с вертикальным отводом 50мм	ГОСТ 23289-94	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.075979+00	2024-03-16 20:56:41.075979+00	2262	\N
a379ffcd-527a-4d39-8d7f-08dc45e26a6f	Дюбель-гвоздь ДГ 8х120	ГОСТ Р ИСО 4759-1-2015	2e3dfc1b-b921-4f73-b12e-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.017475+00	2024-03-16 20:56:47.017475+00	\N	\N
a3da9d89-1025-4199-8d9d-08dc45e26a6f	Фиксатор угловой 90 град., ф25	ГОСТ 32415-2013	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.350727+00	2024-03-16 20:56:47.350726+00	\N	\N
a41c29ea-fbeb-4b13-8c34-08dc45e26a6f	Решетка декоративная ВР 1040х690-Р(Ар)	ГОСТ 32548-2013	c2786989-eba1-45f9-b0cc-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.024338+00	2024-03-16 20:56:43.024338+00	1277	\N
a48f1b03-b2bc-41ad-8c32-08dc45e26a6f	Металлическая решетка 200х200	ГОСТ 32548-2013	c2786989-eba1-45f9-b0cc-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.022908+00	2024-03-16 20:56:43.022908+00	1275	\N
a4af3620-9ed0-4c5e-8904-08dc45e26a6f	Фанера березовая влагостойкая ФСФ 40мм	ГОСТ 3916.1-2018	448a4e3c-f3df-47f6-aff8-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.685428+00	2024-03-16 20:56:33.685427+00	\N	\N
a4c2a08f-91f2-4797-8c71-08dc45e26a6f	Отражатель для полотенцесушителя	\N	cf4193bf-3040-4ee1-b0ee-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.676246+00	2024-03-16 20:56:44.676245+00	\N	\N
a4c7dcd0-a2f1-4e68-8a89-08dc45e26a6f	Перемычки 9ПБ22-3	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.785962+00	2024-03-16 20:56:36.785962+00	1002	\N
a5335dcf-f29b-4da9-8930-08dc45e26a6f	Уголок стальной неравнополочный 120x100x8	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.040197+00	2024-03-16 20:56:34.040195+00	1166	\N
a5453d66-4263-4133-8d58-08dc45e26a6f	Трубы оцинкованные обыкновенные 20х2,8	ГОСТ 3262-75	42e75951-9bd0-466a-b129-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.795402+00	2024-03-16 20:56:46.795402+00	\N	\N
a551bc56-27e4-4260-8b76-08dc45e26a6f	Отвод 90° ПЭ 100 SDR 13,6 315мм	ГОСТ Р 51613-2000	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.863495+00	2024-03-16 20:56:40.863495+00	1289	\N
a55c51e4-d53c-44df-8c7b-08dc45e26a6f	Теплообменник  НН-14A	ГОСТ 14246-79	ce3a1719-e51d-4cec-b0f4-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.841093+00	2024-03-16 20:56:44.841092+00	1090	\N
a563e111-6245-4f7f-88fd-08dc45e26a6f	Лист ЦСП 10 мм	ГОСТ 26816-86	9762c3a8-5695-4f44-aff7-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.656799+00	2024-03-16 20:56:33.656797+00	\N	\N
a5f3a2c8-3375-49a3-89d4-08dc45e26a6f	Клей для плитки универсальный	ГОСТ 31189-2015	53ffa55e-0ea3-4668-b01f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.107624+00	2024-03-16 20:56:35.107623+00	\N	\N
a6079f24-278f-4184-8c1a-08dc45e26a6f	Душ гигиенический со смесителем СМ-Н	ГОСТ 19681-2016	71c3e4a9-2067-4bd5-b0c0-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.422921+00	2024-03-16 20:56:42.422919+00	1068	\N
a629f5d8-0d2e-4404-88e1-08dc45e26a6f	Бетон В30	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.459585+00	2024-03-16 20:56:33.459584+00	\N	\N
a6861d69-45c5-4940-8d9a-08dc45e26a6f	Крепежные элементы воздуховодов	ГОСТ Р 70094-2022	28e468d3-4431-441b-b135-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.309165+00	2024-03-16 20:56:47.309165+00	\N	\N
a69a8b9c-a03a-4933-8da4-08dc45e26a6f	Держатель трубы Ду=20мм	ТУ 2248-007-57-45-3845-2009	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.363666+00	2024-03-16 20:56:47.363666+00	\N	\N
a69bf88c-b249-48ed-8b2b-08dc45e26a6f	Кабель оптический, одномодовый, 9/125, 8 волокон	ГОСТ Р 52266-2020	d82604bb-ff2f-4a83-b082-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.11827+00	2024-03-16 20:56:39.11827+00	\N	\N
a6aa6ba3-9aa4-4fac-8a61-08dc45e26a6f	Перемычки 5ПБ21-27-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.741505+00	2024-03-16 20:56:36.741504+00	1002	\N
a6c26a75-1387-4317-8998-08dc45e26a6f	ИМС-2	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.439506+00	2024-03-16 20:56:34.439505+00	\N	\N
a6e8b7e6-7853-4782-8b0b-08dc45e26a6f	Провод ПуВ нг(А)LS 1х2.5	ГОСТ 16442-80	b0cf7778-e381-4bf8-b079-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.607353+00	2024-03-16 20:56:38.607352+00	\N	\N
a794175c-8220-47eb-8ade-08dc45e26a6f	Блоки оконные ПВХ  ОП В2 1285-1060	ГОСТ 30674-99, 23166-99	96bf7800-cf62-4981-b068-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.829761+00	2024-03-16 20:56:37.82976+00	2237	\N
a7c6bba6-ec55-446f-8d08-08dc45e26a6f	Трубы полипропиленовые РРRC 160 PN20	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.443013+00	2024-03-16 20:56:46.443012+00	\N	\N
a8a3ddaf-90c3-4f77-8cf2-08dc45e26a6f	Ответвитель сигнала на 4 отвода для коаксиальных сетей затухания 16 dB TAH-416	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.318868+00	2024-03-16 20:56:46.318868+00	\N	\N
a8a9fb67-19c2-4c46-8928-08dc45e26a6f	Лист с чечевичным рифлением толщиной, мм 6 Ст3	ГОСТ 8568-77	5a59190f-3529-4e10-affe-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.864071+00	2024-03-16 20:56:33.86407+00	\N	\N
a8e0a3a4-9863-4630-8c12-08dc45e26a6f	Счетчик воды универсальный с импульсным выходом Ду15, антимагнитная защита	ГОСТ Р 50601-93	5517d607-8e5e-4249-b0b9-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.086413+00	2024-03-16 20:56:42.086412+00	1062	\N
a90b6fc3-e4dd-488f-8b85-08dc45e26a6f	Тройник комбинированный с нар. резьбой 32х1"х32	ГОСТ 32415-2013.	9f18a939-2f32-4798-b0a5-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.925623+00	2024-03-16 20:56:40.925622+00	1285	\N
a9a71708-36e0-42c6-8b30-08dc45e26a6f	Щит этажный ЩЭ-2-2-2	\N	e4f7be47-5b12-43fa-b086-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.296833+00	2024-03-16 20:56:39.296831+00	1041	\N
aa596379-e5ae-4854-8aef-08dc45e26a6f	Дверь металлическая ДСУЗ Г Дп Л Прг Н Псп М2, 2210х1050	ГОСТ 31173-2016	7edfab7a-8f18-4b1a-b06f-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.160948+00	2024-03-16 20:56:38.160948+00	2242	\N
aa66bf6a-2c2b-440d-88cb-08dc45e26a6f	Щебень из природного камня для строительных работ марка 600 фракция 5-10	ГОСТ 8267-93	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.14466+00	2024-03-16 20:56:33.14466+00	\N	\N
aac620d0-c349-4609-8d74-08dc45e26a6f	Дюбель полимерный распорный М 10х160	ГОСТ Р 57787-2017 	150d0c7f-dd85-4110-b12d-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.964113+00	2024-03-16 20:56:46.964112+00	\N	\N
aaf4d0dc-b8d7-4442-8c68-08dc45e26a6f	Радиатор биметаллический секционный h=570 мм, с боковым подключением, 15 секции	ГОСТ 31311-2005	635e7684-1c88-4bc3-b0e5-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.39239+00	2024-03-16 20:56:44.392389+00	1079	\N
ab160025-6191-4cf8-8c59-08dc45e26a6f	Клапан воздушный регулирующий прямоугольный ВК 250х250	ГОСТ 24751-81	82849fc6-2e39-4344-b0dd-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.021088+00	2024-03-16 20:56:44.021087+00	1017	\N
ab3c9a9e-1136-43d2-8abb-08dc45e26a6f	Террасная доска	ГОСТ 8486-86	a0b08d3b-0525-4cce-b05c-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.265234+00	2024-03-16 20:56:37.265234+00	\N	\N
ab796980-ebb5-41e8-8d68-08dc45e26a6f	Труба прямоугольной формы профиля ПП-50х25х3,0	ГОСТ 32931-2015	59651b32-96bc-4fd9-b12a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.849829+00	2024-03-16 20:56:46.849828+00	\N	\N
abcb715d-1583-49dd-8989-08dc45e26a6f	Арматура стеклопластиковая 5,5-550-2	ТУ 2296-001-20994511-98	4dc75800-844b-4eda-b00d-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.398403+00	2024-03-16 20:56:34.398402+00	\N	\N
abfed4cc-5ab3-4f4a-8d24-08dc45e26a6f	Гофротруба защитная из полиэтилена Ду25, Дн40	ГОСТ 32415-2013	83e611b3-cec5-4510-b126-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.610026+00	2024-03-16 20:56:46.610026+00	\N	\N
ac07052d-b765-4234-8cd2-08dc45e26a6f	Шкаф настенный 19"	ГОСТ Р 51321.1-2000	75563e1f-aa34-4258-b116-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.97636+00	2024-03-16 20:56:45.976359+00	1114	\N
ac07e1fb-84b1-428b-8d69-08dc45e26a6f	Саморез 3,5х11мм	ГОСТ 10618-80	1c2b9801-766c-4e95-b12c-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.907804+00	2024-03-16 20:56:46.907803+00	\N	\N
ac29e3b3-e2a3-4c5a-8d8d-08dc45e26a6f	Винт для обеспечения электрического контакта крышек, гальванически оцинкованная сталь М5х8	ГОСТ 10621-80	5c413c9a-f7b3-4f0f-b130-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.111533+00	2024-03-16 20:56:47.111532+00	\N	\N
ac47e2b7-1404-499d-8dc1-08dc45e26a6f	Изоляция тепловая из базальтовой ваты в виде полых цилиндров с покрытием ф28х20	ГОСТ 9573-2012	3d03985a-26da-4fda-b144-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.778722+00	2024-03-16 20:56:47.778722+00	\N	\N
ac6bf2fa-0cc9-43a0-8c20-08dc45e26a6f	Гибкая подводка для воды, 1/2", гайка-гайка, 40 см	ГОСТ 25809-96	936740b3-9372-4dfe-b0c3-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.624781+00	2024-03-16 20:56:42.62478+00	\N	\N
ac7cecfe-1d47-44ee-8974-08dc45e26a6f	Сетка легкая 4С (4В500-100)/(4В500-100)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.338092+00	2024-03-16 20:56:34.338092+00	\N	\N
ac83f147-7696-4aac-88e7-08dc45e26a6f	Бетон тяжелый B 22,5 (M300)	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.462977+00	2024-03-16 20:56:33.462977+00	\N	\N
aca24aec-227e-4ae8-88d5-08dc45e26a6f	Песок обогащенный средней крупности	ГОСТ 8736-2014	a3798b12-702e-40fa-afe1-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.177006+00	2024-03-16 20:56:33.177005+00	\N	\N
acd3380f-f4f2-4ba6-8a71-08dc45e26a6f	Перемычки 5ПБ34-20-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.755419+00	2024-03-16 20:56:36.755419+00	1002	\N
acd6946a-341a-41a7-899d-08dc45e26a6f	ИМС-24	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.444457+00	2024-03-16 20:56:34.444457+00	\N	\N
ad0c4fbd-ac91-4ee1-8c63-08dc45e26a6f	Тепло-огнезащитное покрытие воздуховодов EI120, толщина 40мм, из матов прошивных из базальтового волокна	ГОСТ 21880-2011	519d69c9-e184-4769-b0e2-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.270088+00	2024-03-16 20:56:44.270087+00	\N	\N
ad76658e-d68b-44c7-89ea-08dc45e26a6f	Велосипедная парковка	\N	bcd273a0-a301-4962-b02f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.572595+00	2024-03-16 20:56:35.572595+00	1034	\N
ad82a701-1ccb-48bb-8d63-08dc45e26a6f	Труба прямоугольной формы профиля ПП-15х20х1,5	ГОСТ 32931-2015	59651b32-96bc-4fd9-b12a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.845727+00	2024-03-16 20:56:46.845727+00	\N	\N
ad866fc7-4638-4c69-8d5b-08dc45e26a6f	Труба квадратной формы профиля ПК-15х15х1,5	ГОСТ 32931-2015	59651b32-96bc-4fd9-b12a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.832002+00	2024-03-16 20:56:46.832002+00	\N	\N
adc9efb0-4e9d-463b-892b-08dc45e26a6f	Полоса стальная горячекатаная 4х25	ГОСТ 103-2006	1c1a86d3-f9b3-4174-b000-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.960098+00	2024-03-16 20:56:33.960096+00	\N	\N
adfe819d-25e8-4796-892a-08dc45e26a6f	Лист просечно-вытяжной ПВЛ 506	ТУ 5262-001-6723650-11	25c9379c-c1c0-4d33-afff-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.894779+00	2024-03-16 20:56:33.894778+00	\N	\N
ae11d63c-6b83-4828-89e8-08dc45e26a6f	Стол	\N	bcd273a0-a301-4962-b02f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.569737+00	2024-03-16 20:56:35.569737+00	1032	\N
ae7090fb-4b4d-425a-8bdd-08dc45e26a6f	Клапан обратный латунный межфланцевый, Ду50мм, Pn16	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.414068+00	2024-03-16 20:56:41.414068+00	1052	\N
aeaeffcf-f858-4902-8d47-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 21-63х3,0	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.699233+00	2024-03-16 20:56:46.699233+00	\N	\N
aeca8d41-18ac-4a51-8d12-08dc45e26a6f	Трубы полипропиленовые РРRC 63 PN10	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.462994+00	2024-03-16 20:56:46.462994+00	\N	\N
af1327d2-04b6-41ed-8abe-08dc45e26a6f	Брус 150х100мм	ГОСТ 8486-86	f03580ab-1132-4afb-b05d-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.337268+00	2024-03-16 20:56:37.337268+00	\N	\N
af953699-7f53-446b-8b49-08dc45e26a6f	Коробки установочные 45х45	ГОСТ 8594-80	2d659db7-f30d-446d-b097-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.213704+00	2024-03-16 20:56:40.213703+00	1201	\N
af95eca4-6d0f-49db-8cc5-08dc45e26a6f	Тумба шлагбаума	TP TC 004|2011	1418309b-06c7-4602-b10f-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.730207+00	2024-03-16 20:56:45.730206+00	1109	\N
b0d6b776-aef9-4cda-8982-08dc45e26a6f	Арматура стеклопластиковая 5,5-200-2	ТУ 2296-001-20994511-98	4dc75800-844b-4eda-b00d-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.39295+00	2024-03-16 20:56:34.392949+00	\N	\N
b0e24b45-b725-4d80-8cbe-08dc45e26a6f	Трубка переговорная квартирная ТКП-05	ТУ 6654-001-39141219-95	5db0cc0e-374b-47f1-b10d-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.673093+00	2024-03-16 20:56:45.673093+00	1105	\N
b0f76d77-5a7f-4015-88ca-08dc45e26a6f	Щебень из природного камня для строительных работ марка 600 фракция 40-70	ГОСТ 8267-93	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.144352+00	2024-03-16 20:56:33.144351+00	\N	\N
b1028584-85b2-49dd-8a35-08dc45e26a6f	Перемычки 10ПБ18-27-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.690424+00	2024-03-16 20:56:36.690424+00	1002	\N
b1cb6eae-a441-4b8b-89ad-08dc45e26a6f	ИМС-39	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.461825+00	2024-03-16 20:56:34.461825+00	\N	\N
b1e181d0-ae1d-4242-8b74-08dc45e26a6f	Отвод  30° ПЭ 100 SDR 17 110мм	ГОСТ Р 51613-2000	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.861289+00	2024-03-16 20:56:40.861289+00	1288	\N
b20eba66-0629-4c78-88e5-08dc45e26a6f	Бетон тяжелый B 7,5 (M100)	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.461885+00	2024-03-16 20:56:33.461884+00	\N	\N
b226a2d5-76e1-4c04-8983-08dc45e26a6f	Арматура стеклопластиковая 5,5-250-2	ТУ 2296-001-20994511-98	4dc75800-844b-4eda-b00d-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.395102+00	2024-03-16 20:56:34.395101+00	\N	\N
b24f35aa-1325-4da3-8b9f-08dc45e26a6f	Переход стальной в пенополиуретановой изоляции Ст 219х6-159х4,5-1-ППУ-ПЭ	ГОСТ 30732-2006	1c97b81f-3856-413d-b0a8-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.130106+00	2024-03-16 20:56:41.130105+00	\N	\N
b259383a-c960-482f-8bfd-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy40/Py16/Tmax120	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.542846+00	2024-03-16 20:56:41.542846+00	1249	\N
b2616388-f11d-4109-8d55-08dc45e26a6f	Трубы неоцинкованные обыкновенные 25х3,2	ГОСТ 3262-75	42e75951-9bd0-466a-b129-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.792201+00	2024-03-16 20:56:46.7922+00	\N	\N
b2a380d7-21ba-4c0d-8ce3-08dc45e26a6f	Кронштейн	ГОСТ 24198-80	8f64a101-7e01-491f-b11d-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.214788+00	2024-03-16 20:56:46.214787+00	1220	\N
b2a793c2-c9f5-4edd-8baf-08dc45e26a6f	Кран шаровой стальной, фланцевый, Ду100/Ру16/Тmax150	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.260268+00	2024-03-16 20:56:41.260268+00	2234	\N
b32ef5c4-a839-4200-893b-08dc45e26a6f	Уголок стальной равнополочный 120х8	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.049034+00	2024-03-16 20:56:34.049033+00	1167	\N
b34f5c40-d247-4510-8d1c-08dc45e26a6f	Труба из сшитого полиэтилена PEX-a Ду16мм б=2,2мм	ГОСТ Р 53630-2009	243b8f7a-94da-4483-b125-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.564551+00	2024-03-16 20:56:46.56455+00	\N	\N
b3704d60-53a6-431a-88fc-08dc45e26a6f	Сетка штукатурная 20х20х1.6	ГОСТ 2715-75 	386aac2e-13a0-4be0-aff5-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.620406+00	2024-03-16 20:56:33.620405+00	\N	\N
b375823c-a5be-4d5e-8c6b-08dc45e26a6f	Кронштейн крепления радиатора	\N	5c6ead95-f253-469f-b0e7-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.46203+00	2024-03-16 20:56:44.462029+00	1082	\N
b3a256d7-db3c-45cb-8c31-08dc45e26a6f	Клапан-решетка с реверсивным электроприводом 220В, 1200х1000	ГОСТ Р 53301-2013; ГОСТ 32548-2013	c2786989-eba1-45f9-b0cc-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.022207+00	2024-03-16 20:56:43.022207+00	1274	\N
b3b5f798-ceb3-4fc7-88f9-08dc45e26a6f	Раствор цементно-песчанный М 150	ГОСТ  31357-2007	72d83129-8d3f-4ae2-aff0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.53242+00	2024-03-16 20:56:33.532419+00	\N	\N
b3efef3b-70b2-4e0e-8b4b-08dc45e26a6f	Сетевой фильтр СФ-05К-выкл. 5 мест 2Р+PЕ/3метра 3х1мм2 16А	ГОСТ 30988.1-2020	0b7c0f78-c0f8-4478-b099-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.30668+00	2024-03-16 20:56:40.306679+00	\N	\N
b3f30e9b-e921-4e34-8ac0-08dc45e26a6f	Брус 50х100мм	ГОСТ 8486-86	f03580ab-1132-4afb-b05d-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.339243+00	2024-03-16 20:56:37.339243+00	\N	\N
b40119d8-34f7-4ce6-8cc0-08dc45e26a6f	Трубка переговорная квартирная ТКП-10м	ТУ 6654-001-39141219-95	5db0cc0e-374b-47f1-b10d-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.676742+00	2024-03-16 20:56:45.676741+00	1105	\N
b418c883-ceed-4398-89f5-08dc45e26a6f	Битум	ГОСТ 33133-2014	d9387349-02aa-4529-b03e-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.935486+00	2024-03-16 20:56:35.935486+00	\N	\N
b443b680-ca8b-4e10-89a5-08dc45e26a6f	ИМС-31	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.453364+00	2024-03-16 20:56:34.453364+00	\N	\N
b49a37ad-e21b-4369-88d9-08dc45e26a6f	Клеевая смесь для крепления утеплителя	ГОСТ Р 54359-2017	fb247a45-0dfa-427b-afe8-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.311289+00	2024-03-16 20:56:33.311288+00	\N	\N
b5764bc4-6720-4a8c-8ca7-08dc45e26a6f	Усилитель трансляционный в комплекте с креплением 19'',A-60	ГОСТ Р 53325-2012	b76b8ff2-4dd2-4686-b101-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.312521+00	2024-03-16 20:56:45.312521+00	1233	\N
b580657c-facc-40e2-8cf0-08dc45e26a6f	Ответвитель сигнала на 4 отвода для коаксиальных сетей затухания 10 dB TAH-410	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.316821+00	2024-03-16 20:56:46.316821+00	\N	\N
b5acc09b-fc0d-466b-8d7d-08dc45e26a6f	Дюбель-гвоздь ДГ 8х80	ГОСТ Р ИСО 4759-1-2015	2e3dfc1b-b921-4f73-b12e-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.015633+00	2024-03-16 20:56:47.015633+00	\N	\N
b5d1d838-0a3c-48f4-8c3e-08dc45e26a6f	Воронка желоба металлическая D = 100	\N	3e1f6e1c-d1f9-48a3-b0d2-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.349562+00	2024-03-16 20:56:43.349561+00	1126	\N
b5e6e7f0-2c23-4152-8b24-08dc45e26a6f	Кабель коаксиальный RG-6	ГОСТ 31565-2012	06f399db-b159-4407-b07f-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.968525+00	2024-03-16 20:56:38.968525+00	\N	\N
b5f1b12e-e2cc-4c81-89a9-08dc45e26a6f	ИМС-35	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.456326+00	2024-03-16 20:56:34.456325+00	\N	\N
b6022ae4-b10c-4d33-8cc4-08dc45e26a6f	Шлагбаум	ГОСТ Р 51241-2008	1418309b-06c7-4602-b10f-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.729403+00	2024-03-16 20:56:45.729403+00	1108	\N
b61f6117-5e1d-4736-89a3-08dc45e26a6f	ИМС-3	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.448115+00	2024-03-16 20:56:34.448115+00	\N	\N
b62cb109-861a-4283-8c79-08dc45e26a6f	Тепловычислитель ТВ7-01М	ГОСТ Р 51649-2000	fb5e1ad2-40b4-4ffe-b0f3-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.808749+00	2024-03-16 20:56:44.808748+00	1254	\N
b63d1a31-fa2b-409c-88db-08dc45e26a6f	Портландцемент ПЦ 400	ГОСТ 10178-85	4dd064bf-5b04-43df-afea-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.387911+00	2024-03-16 20:56:33.387908+00	\N	\N
b64abf56-8328-4059-8ac9-08dc45e26a6f	Доска 50х200	ГОСТ 8486-86	aded3bde-f78b-40cb-b05e-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.391844+00	2024-03-16 20:56:37.391843+00	\N	\N
b663245c-7ba6-4301-8b95-08dc45e26a6f	Прочистка полипропиленовая канализационная Ду=50мм	ГОСТ 32414-2013	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.06451+00	2024-03-16 20:56:41.064509+00	2257	\N
b6ba561a-c04d-43f7-8aa7-08dc45e26a6f	Блоки фундаментные ФБС 9.3.6-Т	ГОСТ 13579-78	ad27c4c9-2769-45c7-b055-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.00098+00	2024-03-16 20:56:37.00098+00	1184	\N
b6f5521c-9ced-4a93-8c7d-08dc45e26a6f	Датчик температуры погружной	ГОСТ Р 52931-2008	ce3a1719-e51d-4cec-b0f4-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.842705+00	2024-03-16 20:56:44.842705+00	1281	\N
b6f6a045-82ba-4f82-8d05-08dc45e26a6f	Трубы полипропиленовые РРRC 125 PN20	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.433887+00	2024-03-16 20:56:46.433887+00	\N	\N
b7532a1a-b2ae-4dff-8ae6-08dc45e26a6f	Дверь металлическая  ДСВ, В, Оп, Л, Прг, Н, П2лс, М3, О, 2100х910	 ГОСТ 31173-2016 	7edfab7a-8f18-4b1a-b06f-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.151569+00	2024-03-16 20:56:38.151568+00	2242	\N
b77f782b-7787-4792-8ce1-08dc45e26a6f	Poe инжектор 30Вт, защита от перенапряжения, -20/+60С	ГОСТ 12.2.003-91	74ac15dd-861e-4038-b11b-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.163488+00	2024-03-16 20:56:46.163487+00	\N	\N
b789a8b4-0e61-4313-8b65-08dc45e26a6f	Крестовина сварная ПЭ 100 SDR 11  Ду110	ГОСТ Р 51613-2000	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.835197+00	2024-03-16 20:56:40.835196+00	2210	\N
b7a43553-751e-4d0a-8b3e-08dc45e26a6f	Светильник ДПА 5040	ГОСТ 16703-2022	1d5dff63-1024-4e3c-b08e-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.70386+00	2024-03-16 20:56:39.70386+00	1044	\N
b8a0afdc-3f3b-440f-8b54-08dc45e26a6f	Заглушка полипропиленовая канализационная 50мм	ГОСТ 32414-2013	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.756067+00	2024-03-16 20:56:40.756067+00	1024	\N
b8d6a343-2b78-4a35-897b-08dc45e26a6f	Сетка легкая 4С (8А240-150)/(8А240-150)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.348897+00	2024-03-16 20:56:34.348897+00	\N	\N
b8ff2ee1-e061-41ff-88f7-08dc45e26a6f	Раствор готовый кладочный цементный М 50	ГОСТ 28013-98	72d83129-8d3f-4ae2-aff0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.531336+00	2024-03-16 20:56:33.531335+00	\N	\N
b92431f2-8a43-41f4-8cc3-08dc45e26a6f	Комплект шлагбаума, стрела 3м BR-PRO-RPD3000KIT	ГОСТ Р 51241-2008	1418309b-06c7-4602-b10f-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.728512+00	2024-03-16 20:56:45.728512+00	1107	\N
b92bd5f8-d9f3-4ecc-892d-08dc45e26a6f	Стеклопластик рулонный РСТ-200	ТУ 2296-001-51822206-2004	8f3d0c11-4b33-43b9-b001-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.987372+00	2024-03-16 20:56:33.987371+00	\N	\N
b9631834-b794-463e-8b8e-08dc45e26a6f	Крестовина ПП 2-х плоскостная 110х110х50 левая	ГОСТ 32415-2013.	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.057598+00	2024-03-16 20:56:41.057598+00	2252	\N
b970462a-300a-4e88-8a83-08dc45e26a6f	Перемычки 9ПБ18-37	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.776223+00	2024-03-16 20:56:36.776223+00	1002	\N
b99ff9a2-f71d-40b0-8c0e-08dc45e26a6f	Манометр  (0-1.0МПа), 100мм, G1/2.1,5/Tmax150	ГОСТ 2405-88	cf2df3bf-9020-4d2e-b0b7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.970217+00	2024-03-16 20:56:41.970216+00	1060	\N
b9bbf0c5-dc83-4da1-897a-08dc45e26a6f	Сетка легкая 4С (6А500-200)/(3Вр1-200)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.348351+00	2024-03-16 20:56:34.34835+00	\N	\N
b9c34816-6d95-48f1-8bf9-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy150/Py16/Tmax200	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.532427+00	2024-03-16 20:56:41.532427+00	1249	\N
b9e294ae-1886-402d-8964-08dc45e26a6f	Прокат стальной квадратный 15 Ст3	ГОСТ 2591-2006	84c5c08e-8ce4-48d5-b00a-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.282953+00	2024-03-16 20:56:34.282953+00	\N	\N
ba296839-86da-4201-8d88-08dc45e26a6f	Анкер распорный М8х75	ГОСТ Р 57787-2017	d6422f1a-8830-42eb-b12f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.067781+00	2024-03-16 20:56:47.067781+00	\N	\N
bab57dd6-4b13-4175-8d23-08dc45e26a6f	Гофротруба защитная из полиэтилена Ду24, Дн32	ГОСТ 32415-2013	83e611b3-cec5-4510-b126-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.609249+00	2024-03-16 20:56:46.609248+00	\N	\N
bb27a604-c98c-40ed-8ae5-08dc45e26a6f	Блоки дверные деревянные и комбинированные Дв2 Рп 21х13 О Прб Мд1	ГОСТ 475-2016	33d6926a-3175-482c-b06d-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.066136+00	2024-03-16 20:56:38.066135+00	2239	\N
bb74394c-9c1f-488a-89ec-08dc45e26a6f	Металлическая двухуровневая полка	\N	bcd273a0-a301-4962-b02f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.579141+00	2024-03-16 20:56:35.57914+00	1123	\N
bb7be616-2b54-4d00-8cf6-08dc45e26a6f	Ответвитель сигнала на 6 отводов для коаксиальных сетей затухания 16 dB TAH-616	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.330632+00	2024-03-16 20:56:46.330631+00	\N	\N
bb8616f7-fb35-44f9-8da2-08dc45e26a6f	Фиксатор металлический DN200	ГОСТ 32415-2013	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.361619+00	2024-03-16 20:56:47.361619+00	\N	\N
bb978639-1889-49a9-8d70-08dc45e26a6f	Дюбель полимерный распорный М 10х250	ГОСТ Р 57787-2017 	150d0c7f-dd85-4110-b12d-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.960884+00	2024-03-16 20:56:46.960884+00	\N	\N
bc0f2070-0e50-4a0b-8a2f-08dc45e26a6f	Перемычки 2ПБ16-2п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.682664+00	2024-03-16 20:56:36.682664+00	1002	\N
bc577e36-f99e-4af8-8936-08dc45e26a6f	Уголок стальной равнополочный 100х6,5	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.046198+00	2024-03-16 20:56:34.046198+00	1167	\N
bca08d0d-dae9-42f2-8b9c-08dc45e26a6f	Тройник полипропиленовый канализационный 110х50х90	ГОСТ 32415-2013.	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.079387+00	2024-03-16 20:56:41.079387+00	2260	\N
bca17cd8-d1c3-4986-8c78-08dc45e26a6f	Расходомер-счетчик электромагнитный Ду=40мм, Q=22 м3/ч,	ГОСТ 28723-90	fb5e1ad2-40b4-4ffe-b0f3-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.808077+00	2024-03-16 20:56:44.808076+00	1139	\N
bd3baea7-a97a-4938-8a6a-08dc45e26a6f	Перемычки 5ПБ30-27	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.751702+00	2024-03-16 20:56:36.751701+00	1002	\N
bd5752da-71d2-450c-8bce-08dc45e26a6f	Клапан балансировочный автоматический Ду25, PN25	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.39173+00	2024-03-16 20:56:41.39173+00	1202	\N
bd8d1c3f-f70c-45da-8d67-08dc45e26a6f	Труба прямоугольной формы профиля ПП-50х25х2,5	ГОСТ 32931-2015	59651b32-96bc-4fd9-b12a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.84901+00	2024-03-16 20:56:46.849009+00	\N	\N
bdcb0cf4-a54b-4571-8b90-08dc45e26a6f	Муфта полипропиленовая канализационная 110мм	ГОСТ 32415-2013.	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.05963+00	2024-03-16 20:56:41.059629+00	2253	\N
be20d234-41b4-4078-8d80-08dc45e26a6f	Дюбель-гвоздь ДГ 8х160	ГОСТ Р ИСО 4759-1-2015	2e3dfc1b-b921-4f73-b12e-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.019046+00	2024-03-16 20:56:47.019045+00	\N	\N
be4cff81-9686-4882-89ca-08dc45e26a6f	Краска фактурная 	ГОСТ 28196-90	41220ef4-a634-4723-b019-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.880776+00	2024-03-16 20:56:34.880773+00	\N	\N
bec1320e-e282-4044-8bae-08dc45e26a6f	Кран шаровый сварной с металлической заглушкой изоляции Ду100 Ст 108-1-ППУ-ПЭ-650, А=1300мм	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.258967+00	2024-03-16 20:56:41.258967+00	2243	\N
bee777a4-1b8b-4452-8907-08dc45e26a6f	Лист оцинкованный ОЦ-0,5	ГОСТ 14918-2020	d2cfd871-eef4-4618-affa-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.727001+00	2024-03-16 20:56:33.727001+00	\N	\N
befa336e-0bc7-498e-8be5-08dc45e26a6f	Клапан обратный полипропиленовый канализационный 110мм	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.430388+00	2024-03-16 20:56:41.430388+00	1203	\N
bf06c98a-5c45-44e6-8bf5-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy100/Py16/Tmax180	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.527079+00	2024-03-16 20:56:41.527078+00	1249	\N
bf12dc4d-f9a3-4f7d-8c0d-08dc45e26a6f	Ороситель спринклерный СВН-15	ГОСТ Р 51043-2002	50c2111d-47bd-4ff0-b0b5-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.887583+00	2024-03-16 20:56:41.887582+00	1059	\N
bf1c0621-ad85-4efb-88f5-08dc45e26a6f	Раствор готовый кладочный цементный М 300	ГОСТ 28013-98	72d83129-8d3f-4ae2-aff0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.530294+00	2024-03-16 20:56:33.530294+00	\N	\N
bf4a3053-9519-4fd5-8ce5-08dc45e26a6f	Антенна эфирного телевидения всеволновая с приемом УКВ-FM частот	ГОСТ Р 51989-2002	5c28ddff-ca76-4690-b11e-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.252628+00	2024-03-16 20:56:46.252627+00	\N	\N
bf5c4377-a503-426c-8c75-08dc45e26a6f	Компенсатор сильфонный осевой с внутренней гильзой и кожухом Ду=15 мм, двухслойный	ГОСТ  Р 51571-2000	a729e0ac-4545-457f-b0f1-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.759799+00	2024-03-16 20:56:44.759798+00	1088	\N
bf6fb262-678a-45e2-8a0e-08dc45e26a6f	Плитка тротуарная 4.П.7	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.085822+00	2024-03-16 20:56:36.085822+00	\N	\N
bf80a82b-1fe7-4c97-8b56-08dc45e26a6f	Муфта переходная полипропиленовая 20х15	ГОСТ 32415-2013	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.757855+00	2024-03-16 20:56:40.757855+00	2212	\N
bfc7fd17-9ed0-4f2a-8af5-08dc45e26a6f	Блок дверной  из алюминиевых сплавов ДАВ Дп Бпр Дв Л Р 1460х2100 EIWS30	ГОСТ 23747-2015	dbd7bdda-37eb-4296-b071-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.265151+00	2024-03-16 20:56:38.265151+00	2240	\N
c02984ed-7bf3-4bc1-8db4-08dc45e26a6f	Лента монтажная перфорированная 20х0,7 оцинк.	ГОСТ 24767-81	d3c47604-cc5e-4c91-b137-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.423528+00	2024-03-16 20:56:47.423527+00	\N	\N
c05de477-4bc2-400d-8a6e-08dc45e26a6f	Перемычки 5ПБ31-27	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.753837+00	2024-03-16 20:56:36.753837+00	1002	\N
c06b6613-fa9c-4db2-8cd9-08dc45e26a6f	Коммутатор агрегации с 48 портами 1000BASE-X/100BASE-FX (SFP)	ГОСТ 51662-2000	579bc48a-82e6-4b2a-b118-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.051705+00	2024-03-16 20:56:46.051704+00	1119	\N
c0de5e7a-12d8-4ea9-8ac4-08dc45e26a6f	Доска 25х150	ГОСТ 8486-86	aded3bde-f78b-40cb-b05e-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.3876+00	2024-03-16 20:56:37.387599+00	\N	\N
c138235e-42d2-4d48-890d-08dc45e26a6f	Лист холоднокатаный толщиной, мм 3 Ст3	ГОСТ 19904-90	f22a50c6-0374-4935-affb-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.76092+00	2024-03-16 20:56:33.76092+00	\N	\N
c149dc2b-a7be-4f3e-8b1c-08dc45e26a6f	Коробки ответвительные 70х70х40мм	 ГОСТ 32126.1-2013	bcf6bc15-0c3f-4344-b07c-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.809537+00	2024-03-16 20:56:38.809536+00	1151	\N
c16bb2b0-ba2d-4495-8a9a-08dc45e26a6f	Лестничный марш ЛМ 28.12 П	серия АБД 9000	089db14d-4bdb-4d8a-b054-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.956684+00	2024-03-16 20:56:36.956684+00	\N	\N
c1aecab7-30f3-45ef-8a42-08dc45e26a6f	Перемычки 2ПБ26-4	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.707062+00	2024-03-16 20:56:36.707062+00	1002	\N
c1b205a8-3832-4839-8c5f-08dc45e26a6f	Переход из листовой оцинкованной стали толщ. 0,8мм, 800х400/900х300	ГОСТ 24751-81	f7e864ef-723c-438a-b0e1-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.209126+00	2024-03-16 20:56:44.209126+00	1132	\N
c1b64d5c-abbe-4a8c-8ac1-08dc45e26a6f	Доска 100х25	ГОСТ 8486-86	aded3bde-f78b-40cb-b05e-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.384784+00	2024-03-16 20:56:37.384783+00	\N	\N
c1ec9ecb-e148-4fc6-8dae-08dc45e26a6f	Крепление полипропиленовых труб Ду=40	ГОСТ 32415-2013	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.374783+00	2024-03-16 20:56:47.374782+00	\N	\N
c1f2c98d-0a38-48dd-8a53-08dc45e26a6f	Перемычки 3ПБ25-8-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.724325+00	2024-03-16 20:56:36.724325+00	1002	\N
c2190630-0537-49a9-8996-08dc45e26a6f	ИМС-18	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.438067+00	2024-03-16 20:56:34.438067+00	\N	\N
c2a2429c-410b-47a7-8c5c-08dc45e26a6f	Воздуховод из тонколистовой оцинкованной стали ф100 б=0,5мм	ГОСТ 24751-81	2f60e3d9-40d5-44b3-b0df-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.112691+00	2024-03-16 20:56:44.112691+00	\N	\N
c2c21196-85c5-4211-8b1f-08dc45e26a6f	Розетка силовая открытой установки 250В, 10А, IP20	ГОСТ IЕС 60309-1-2016	5dd227e4-8282-41c1-b07d-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.872875+00	2024-03-16 20:56:38.872874+00	1152	\N
c2d5cd6f-9eb5-4ac4-8d9f-08dc45e26a6f	Фиксатор угловой 90 град., ф40	ГОСТ 32415-2013	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.352948+00	2024-03-16 20:56:47.352948+00	\N	\N
c32cad5b-69d9-4306-8cca-08dc45e26a6f	Розетка компьютерная RJ-45(8P8C), категория 5e, одинарная, внешняя	ГОСТ Р 51322.1-2011	e731976e-b9b8-4b69-b113-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.85586+00	2024-03-16 20:56:45.855859+00	1112	\N
c32ffd74-c454-4848-8a36-08dc45e26a6f	Перемычки 10ПБ21-27	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.69144+00	2024-03-16 20:56:36.691439+00	1002	\N
c33d9ec0-1b43-471a-8b80-08dc45e26a6f	Муфта комбинированная с нар. резьбой 20х3/4"	ГОСТ 32415-2013.	9f18a939-2f32-4798-b0a5-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.921456+00	2024-03-16 20:56:40.921456+00	1020	\N
c38cfc73-5d9b-46e4-8a1a-08dc45e26a6f	Камни бортовые БР 100.30.15	ГОСТ 6665-91	c2a537eb-afa5-4d21-b042-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.16324+00	2024-03-16 20:56:36.163239+00	\N	\N
c38ee968-cecb-4707-890e-08dc45e26a6f	Лист холоднокатаный толщиной, мм 4 Ст3	ГОСТ 19904-90	f22a50c6-0374-4935-affb-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.761488+00	2024-03-16 20:56:33.761488+00	\N	\N
c3b6a457-77b5-4427-8a25-08dc45e26a6f	Лотки канальные Л 11/2-8	ГОСТ 13015-2012	a0ae6856-57f8-4dde-b048-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.385891+00	2024-03-16 20:56:36.385891+00	\N	\N
c3f79421-6ca3-4357-8c0a-08dc45e26a6f	Головка соединительная рукавная ГР-50	ГОСТ Р 53279-2009	afc3d87b-efa0-4e04-b0b4-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.837866+00	2024-03-16 20:56:41.837866+00	\N	\N
c40fa54e-d5c5-4c6b-88c3-08dc45e26a6f	Керамзит М600	ГОСТ 32496-2013	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.140684+00	2024-03-16 20:56:33.140682+00	\N	\N
c41b4b8e-b602-4d39-8b8f-08dc45e26a6f	Крестовина ПП 2-х плоскостная 110х110х50 правая	ГОСТ 32415-2013.	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.058693+00	2024-03-16 20:56:41.058692+00	2252	\N
c4277b9e-a030-473c-8a75-08dc45e26a6f	Перемычки 8ПБ10-1	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.757926+00	2024-03-16 20:56:36.757926+00	1002	\N
c470b5e6-19a0-4216-8c3b-08dc45e26a6f	Решетка водоприемная щелевая чугунная, Н=180мм, В=250мм, L=1000мм	ГОСТ Р 70091-2022	f23f8ca2-eb27-4ef9-b0d0-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.242464+00	2024-03-16 20:56:43.242463+00	1236	\N
c4ae4bed-d833-479c-8a43-08dc45e26a6f	Перемычки 2ПБ26-4-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.70759+00	2024-03-16 20:56:36.70759+00	1002	\N
c4c684ac-e2a7-4ea6-8d81-08dc45e26a6f	Анкер-клин М 6х40	ГОСТ Р ИСО 4759-1-2009	d6422f1a-8830-42eb-b12f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.059632+00	2024-03-16 20:56:47.059631+00	\N	\N
c4dd54ca-c1c7-4846-8b15-08dc45e26a6f	Труба  ПВХ гибкая гофрированная легкая с протяжкой 16мм	ГОСТ Р МЭК 61386.1-2014	a16ff470-035a-47c2-b07a-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.689678+00	2024-03-16 20:56:38.689677+00	\N	\N
c503d0c0-a301-40a0-8c84-08dc45e26a6f	Датчик давления DS-205B	ГОСТ Р 52931-2008	23621aa7-29f0-43e1-b0f6-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.910594+00	2024-03-16 20:56:44.910593+00	1225	\N
c59f065e-088f-4dcf-88d6-08dc45e26a6f	Песок речной	ГОСТ 23735-2014	a3798b12-702e-40fa-afe1-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.177316+00	2024-03-16 20:56:33.177316+00	\N	\N
c5a12d0b-780b-4060-8b36-08dc45e26a6f	Ящики с понижающим трансформатором 0,25 220/36-0 36УХЛ4	ГОСТ 32396-2021	bde3e6dd-a793-4829-b089-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.48223+00	2024-03-16 20:56:39.482229+00	1042	\N
c5b52d6e-72d2-4c99-88d8-08dc45e26a6f	Клеевая смесь для крепления минеральной ваты	ГОСТ Р 54359-2017	fb247a45-0dfa-427b-afe8-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.308407+00	2024-03-16 20:56:33.308406+00	\N	\N
c5b60c10-9f86-4336-8ad8-08dc45e26a6f	Паронитовая прокладка под кронштейн	ГОСТ 15180-86	73160bb9-5526-4799-b065-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.725261+00	2024-03-16 20:56:37.725261+00	\N	\N
c5ce3349-04a6-4e8e-8b83-08dc45e26a6f	Тройник комбинированный с нар. резьбой 3/4"х3/4"	ГОСТ 32415-2013.	9f18a939-2f32-4798-b0a5-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.923897+00	2024-03-16 20:56:40.923897+00	1286	\N
c5e2eeac-dc1b-4d00-8c55-08dc45e26a6f	Клапан - дроссель ДК-300х500	ГОСТ 24751-81	49b52a17-08a2-4ca6-b0dc-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.847619+00	2024-03-16 20:56:43.847618+00	1008	\N
c5e7d8d9-cebb-4fdd-8afd-08dc45e26a6f	Стрейч пленка	\N	8b0ac952-1b5a-46e3-b075-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.459076+00	2024-03-16 20:56:38.459076+00	\N	\N
c5fce0e0-c65d-476b-8dba-08dc45e26a6f	Плиты теплоизоляционные пенополистирольные ППС-25 150мм	ГОСТ 32310-2012	18ec31d2-cf2a-43f5-b13f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.612325+00	2024-03-16 20:56:47.612325+00	\N	\N
c605dd67-afbb-46a5-8b4e-08dc45e26a6f	Защитные очки	ГОСТ 4997-76	4ae7cbd2-ed44-41e5-b09d-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.478123+00	2024-03-16 20:56:40.478123+00	\N	\N
c60ddcbf-448f-40c9-8a1d-08dc45e26a6f	Кирпич керамический рядовой полнотелый КР-р-по 250х120х65/1НФ/125/2,0/35	ГОСТ 530-2012	a2335687-02b8-4313-b043-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.222444+00	2024-03-16 20:56:36.222444+00	\N	\N
c6179f3d-f74e-4843-8b8a-08dc45e26a6f	Угольник - переходник аксиальный НР 16х3/4	ГОСТ 15763-2005	a955d7ea-01de-455a-b0a6-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.994732+00	2024-03-16 20:56:40.994731+00	2248	\N
c63330fc-2501-43e0-8b4a-08dc45e26a6f	Звонок с кнопкой	ГОСТ 30988.1-2020	bbaea4c3-93a4-4e42-b098-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.262882+00	2024-03-16 20:56:40.262881+00	1196	\N
c63f3abb-30ad-424a-89e3-08dc45e26a6f	Скамейка	\N	bcd273a0-a301-4962-b02f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.564652+00	2024-03-16 20:56:35.564651+00	1028	\N
c64d8ad2-2c40-4cb6-8add-08dc45e26a6f	Шайба под кронштейн	ГОСТ 11371-78	73160bb9-5526-4799-b065-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.733506+00	2024-03-16 20:56:37.733505+00	\N	\N
c6907829-a5e8-4b9a-8bcf-08dc45e26a6f	Клапан балансировочный автоматический Ду32, PN16	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.39273+00	2024-03-16 20:56:41.39273+00	1202	\N
c692f62d-a629-4b48-8c73-08dc45e26a6f	Опора неподвижная стальная в пенополиуретановой изоляции в полиэтиленовой оболочке Ст 159х5,0-400х20-1-ППУ-ПЭ	ГОСТ 30732-2006	5c5837c4-5e97-4236-b0f0-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.726359+00	2024-03-16 20:56:44.726358+00	1251	\N
c6a5ca83-5eb8-47c3-8a01-08dc45e26a6f	Плитка тротуарная 1.Ф.8.6	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.058277+00	2024-03-16 20:56:36.058277+00	\N	\N
c70835d5-158f-4834-8b00-08dc45e26a6f	Ограничитель открывания (трос)	ГОСТ 30674-99	8b0ac952-1b5a-46e3-b075-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.468979+00	2024-03-16 20:56:38.468978+00	\N	\N
c7503b3f-7488-449e-8a86-08dc45e26a6f	Перемычки 9ПБ18-8-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.784373+00	2024-03-16 20:56:36.784373+00	1002	\N
c750d8eb-1afc-4c3a-8a15-08dc45e26a6f	Плитка тротуарная 9.К.6	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.09367+00	2024-03-16 20:56:36.09367+00	\N	\N
c75a4078-09fa-4433-8da8-08dc45e26a6f	Компенсатор резиновый фланцевый Ду50	ГОСТ 22388-90	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.366424+00	2024-03-16 20:56:47.366424+00	\N	\N
c7abf098-554a-4892-8a5f-08dc45e26a6f	Перемычки 5ПБ18-27-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.74006+00	2024-03-16 20:56:36.74006+00	1002	\N
c7c087d5-94f3-40eb-8919-08dc45e26a6f	Лист горячекатанный толщиной, мм 7 Ст3	ГОСТ 19903-2015	10944fd8-8d1a-4f19-affc-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.797115+00	2024-03-16 20:56:33.797114+00	\N	\N
c824f8e8-911c-4ae9-8a3c-08dc45e26a6f	Перемычки 10ПБ27-37	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.70277+00	2024-03-16 20:56:36.702769+00	1002	\N
c8293d91-3f65-430f-8d6d-08dc45e26a6f	Дюбель для утеплителя 10х120	ГОСТ Р 57787-2017 	150d0c7f-dd85-4110-b12d-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.955118+00	2024-03-16 20:56:46.955117+00	\N	\N
c841aafe-3914-4e36-89f6-08dc45e26a6f	Битумная мастика	ГОСТ 30693-2000	7f95998e-5b23-407f-b03f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.992236+00	2024-03-16 20:56:35.992235+00	\N	\N
c84a24e3-5e0f-4b3e-8b34-08dc45e26a6f	Щит наружнего освещения ЩНО-25-600х600х200	ГОСТ 32396-2021	364632ff-03ba-490e-b088-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.402711+00	2024-03-16 20:56:39.402711+00	1160	\N
c8d4ebc2-706e-40d9-8991-08dc45e26a6f	ИМС-13	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.435295+00	2024-03-16 20:56:34.435295+00	\N	\N
c8e6f186-f5e9-4b9a-8b40-08dc45e26a6f	Лампа накаливания 100Вт E27	\N	83a517fa-b78c-458d-b08f-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.745019+00	2024-03-16 20:56:39.745018+00	1046	\N
c8ed7dfd-97d7-41c5-891f-08dc45e26a6f	Лист перфорированный t=3мм	ГОСТ 58602-2019	023a2783-9a7e-4be7-affd-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.827204+00	2024-03-16 20:56:33.827204+00	\N	\N
c9268330-273d-4ebd-8dbf-08dc45e26a6f	Изоляция трубная из вспененного каучука б=13мм Дн=32мм	ТУ 2535-001-75218277-05	dd239843-5848-4f8f-b143-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.7413+00	2024-03-16 20:56:47.741299+00	\N	\N
c92a9ae0-a855-4a9b-8d3b-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 17-110х6,6	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.679964+00	2024-03-16 20:56:46.679964+00	\N	\N
c9669398-60aa-47ae-8bd8-08dc45e26a6f	Клапан запорно-измерительный, Ду32, в комплекте с импульсной трубкой 1/16"	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.405625+00	2024-03-16 20:56:41.405625+00	1050	\N
c98b7ba5-d7b8-4ade-89c4-08dc45e26a6f	Мембрана гидро-пароизоляционная	ТУ 5774-003-18603495-2004	24aeb398-862e-45c5-b012-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.651247+00	2024-03-16 20:56:34.651247+00	\N	\N
c9b2b06d-f0c5-43ce-8a88-08dc45e26a6f	Перемычки 9ПБ21-8-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.785433+00	2024-03-16 20:56:36.785433+00	1002	\N
c9dce3fb-9bd0-46ee-8d5e-08dc45e26a6f	Труба квадратной формы профиляПК-40х40х3,0	ГОСТ 32931-2015	59651b32-96bc-4fd9-b12a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.836345+00	2024-03-16 20:56:46.836344+00	\N	\N
c9de7879-9ed0-4f92-8aa9-08dc45e26a6f	Блоки фундаментные ФБС 9.5.6-Т	ГОСТ 13579-78	ad27c4c9-2769-45c7-b055-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.002823+00	2024-03-16 20:56:37.002823+00	1184	\N
c9df0c53-b237-4662-8bcc-08dc45e26a6f	Клапан балансировочный автоматический Ду20, PN25	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.390421+00	2024-03-16 20:56:41.390421+00	1202	\N
ca23390f-1c5d-414e-8c86-08dc45e26a6f	Датчик температуры 200 мм TF 65 Pt1000	ГОСТ Р 52931-2008	23621aa7-29f0-43e1-b0f6-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.912402+00	2024-03-16 20:56:44.912402+00	1283	\N
ca4a3911-4c4d-4a8d-893a-08dc45e26a6f	Уголок стальной равнополочный 120х10	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.048496+00	2024-03-16 20:56:34.048496+00	1167	\N
cab7b533-a676-4478-8aaa-08dc45e26a6f	Блоки фундаментные ФБС 9.6.6-Т	ГОСТ 13579-78	ad27c4c9-2769-45c7-b055-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.003854+00	2024-03-16 20:56:37.003853+00	1184	\N
cadd4d70-9bab-4420-88e6-08dc45e26a6f	Бетон тяжелый B 7,5 (M150)	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.462422+00	2024-03-16 20:56:33.462421+00	\N	\N
cb20c5e9-82dc-4cc0-8b92-08dc45e26a6f	Отвод полипропиленовый канализационный 45° Ду110мм	ГОСТ 32414-2013	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.061344+00	2024-03-16 20:56:41.061344+00	2255	\N
cb468d66-7bc5-4dc3-8b87-08dc45e26a6f	Тройник комбинированный с нар. резьбой 32х3/4"х32	ГОСТ 32415-2013.	9f18a939-2f32-4798-b0a5-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.930599+00	2024-03-16 20:56:40.930598+00	1285	\N
cb4ebcc2-a93d-4ad4-8b03-08dc45e26a6f	Кабель силовой ВВГнг(А)-LS 3х1,5 660В	ГОСТ 16442-80	5e67bd10-c6a3-4f86-b078-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.556079+00	2024-03-16 20:56:38.556078+00	\N	\N
cb4f6a6b-d7b2-4c64-8db5-08dc45e26a6f	Химический анкер1	ГОСТ Р 57787-2017	00977c67-4a88-4156-b138-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.458582+00	2024-03-16 20:56:47.458582+00	\N	\N
cbaae3e5-bf35-4773-89ef-08dc45e26a6f	Журнальные столики	\N	bcd273a0-a301-4962-b02f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.584903+00	2024-03-16 20:56:35.584903+00	1036	\N
cbdd7bce-8ca7-47e6-8bf4-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy100/Py16/Tmax120	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.526296+00	2024-03-16 20:56:41.526295+00	1249	\N
cc0836ce-8c6e-459f-8bbe-08dc45e26a6f	Задвижка клиновая фланцевая чугунная PN16,  DN65, с электроприводом	ГОСТ 5762-2002	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.326977+00	2024-03-16 20:56:41.326977+00	1206	\N
cc39495f-a7bf-4381-8c09-08dc45e26a6f	Головка соединительная напорная муфтовая ГМ-50	ГОСТ Р 53279-2009	afc3d87b-efa0-4e04-b0b4-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.836975+00	2024-03-16 20:56:41.836974+00	\N	\N
ccb320de-58d3-44b4-8d2b-08dc45e26a6f	Труба гофрированная двухслойная профилированная РР SN8 DN/OD 339мм в комплекте с муфтой и уплотнительным кольцом	ГОСТ Р 54475-2011	83e611b3-cec5-4510-b126-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.61511+00	2024-03-16 20:56:46.615109+00	\N	\N
ccce31dc-6601-4135-89c8-08dc45e26a6f	Краска водно-дисперсионная универсальная	ГОСТ 28196-89	41220ef4-a634-4723-b019-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.877241+00	2024-03-16 20:56:34.87724+00	\N	\N
ccd463b6-1d8a-47a3-8931-08dc45e26a6f	Уголок стальной неравнополочный 125х80х10	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.04077+00	2024-03-16 20:56:34.040769+00	1166	\N
cd0a8f4b-4735-4724-8906-08dc45e26a6f	Лист оцинкованный окрашенный ОЦ-0,5	ГОСТ 14918-2020	d2cfd871-eef4-4618-affa-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.724251+00	2024-03-16 20:56:33.72425+00	\N	\N
cd236854-d093-4c94-8a0a-08dc45e26a6f	Плитка тротуарная 2.Ф.7.6	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.075121+00	2024-03-16 20:56:36.07512+00	\N	\N
cd5ffc38-822f-4c16-8d18-08dc45e26a6f	Труба металлопластиковая PERT/AL/PERT 14х2	ГОСТ Р 53630-2009	d1d8ef93-00c1-4f74-b124-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.519412+00	2024-03-16 20:56:46.519411+00	\N	\N
cda2c439-479c-4c08-89c9-08dc45e26a6f	Краска декоративная	ГОСТ Р 52020-2003	41220ef4-a634-4723-b019-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.878359+00	2024-03-16 20:56:34.878358+00	\N	\N
cdc99be8-4087-4bb4-8b2a-08dc45e26a6f	Кабель оптический одномодовый, 4 волокна OS2	ГОСТ Р 52266-2020	d82604bb-ff2f-4a83-b082-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.11678+00	2024-03-16 20:56:39.116779+00	\N	\N
cdfb34be-129b-4431-8d1f-08dc45e26a6f	Труба из сшитого полиэтилена PEX-a Ду32мм б=4,4мм	ГОСТ Р 53630-2009	243b8f7a-94da-4483-b125-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.56813+00	2024-03-16 20:56:46.56813+00	\N	\N
ce6becf6-641f-43b4-8c9a-08dc45e26a6f	Оповещатель охрано-пожарный светозвуковой, 105 дБ, Маяк-12-КПМ1	ТУ 4372-001-49518441-99	7d7ba3ff-518b-4e32-b0ff-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.226299+00	2024-03-16 20:56:45.226299+00	1240	\N
ce77e299-2407-4873-8a8a-08dc45e26a6f	Перемычки 9ПБ22-3-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.786567+00	2024-03-16 20:56:36.786567+00	1002	\N
ce9dfe00-b3c6-4294-8b37-08dc45e26a6f	Щит управления обогревом воронок 63А 600х600х250	ГОСТ 32396-2021	026822d3-6070-46c8-b08a-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.535177+00	2024-03-16 20:56:39.535176+00	1161	\N
ceb9ae10-c962-4d3f-89f9-08dc45e26a6f	Плитка тротуарная 1.Г.8	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.046219+00	2024-03-16 20:56:36.046219+00	\N	\N
ceca3d44-0c61-41ee-896a-08dc45e26a6f	Сетка легкая  4С (8А500-150)/(8А500-150)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.331395+00	2024-03-16 20:56:34.331395+00	\N	\N
cf23f763-df9f-4410-8cdc-08dc45e26a6f	SFP-модуль Osnovo SFP-S1SC12-G-1550-1310	ГОСТ Р 50827-95	fd4ea71f-cf7c-47a6-b119-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.086834+00	2024-03-16 20:56:46.086833+00	1219	\N
cf65c2e9-7922-4ece-8b44-08dc45e26a6f	Розетка открытой установки 1 местная 220В, 16А, IP20	ГОСТ 30988.1-2020	bb78f323-6494-41da-b094-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.029825+00	2024-03-16 20:56:40.029824+00	1210	\N
cf78eedf-b9a7-4455-8a07-08dc45e26a6f	Плитка тротуарная 2.П.1.4	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.072545+00	2024-03-16 20:56:36.072545+00	\N	\N
cf84dcbb-a8e7-4aeb-8c2d-08dc45e26a6f	Люки чугунные средние тип С (В125)	\N	9f94a861-2371-45b2-b0c9-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.873378+00	2024-03-16 20:56:42.873377+00	1179	\N
cf8e94d1-f05c-427c-8b6d-08dc45e26a6f	Тройник напорный переходной 90° 100х50 ПВХ	ГОСТ Р 51613-2000	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.846238+00	2024-03-16 20:56:40.846238+00	2204	\N
d013b761-319b-4983-8b1a-08dc45e26a6f	Наконечник медный луженый ТМЛ под опрессовку для ВВГнг(А) 5х35	ГОСТ 7386-80	45815fa3-b793-4114-b07b-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.744227+00	2024-03-16 20:56:38.744226+00	\N	\N
d02765ea-69ee-419a-8b13-08dc45e26a6f	Крышка для лотка 200	ГОСТ Р 52868-2021	a16ff470-035a-47c2-b07a-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.679082+00	2024-03-16 20:56:38.679081+00	\N	\N
d04e92a0-05e3-4c84-8c1b-08dc45e26a6f	Умывальник керамический в комплекте со смесителем и сифоном	ГОСТ 30493-96	892eb7d7-03c5-410a-b0c1-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.508618+00	2024-03-16 20:56:42.508617+00	1069	\N
d05eae03-82ac-4d94-8a0c-08dc45e26a6f	Плитка тротуарная 3.К.5	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.082188+00	2024-03-16 20:56:36.082187+00	\N	\N
d098abe6-6e67-49ce-8c10-08dc45e26a6f	Термометр  (0-160°С) G1/2., ф80, 1,5,  L=100мм.	ГОСТ Р 52931-2008	9610c338-aea2-4c72-b0b8-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.02385+00	2024-03-16 20:56:42.023849+00	1061	\N
d0a2d0f1-d2d4-4ec7-8a26-08dc45e26a6f	Лотки канальные Л 16/2-8	ГОСТ 13015-2012	a0ae6856-57f8-4dde-b048-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.386453+00	2024-03-16 20:56:36.386453+00	\N	\N
d0c1f03c-884e-47a6-8a9f-08dc45e26a6f	Блоки фундаментные ФБС 24.5.6-Т	ГОСТ 13579-78	ad27c4c9-2769-45c7-b055-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.989494+00	2024-03-16 20:56:36.989493+00	1184	\N
d11cf8e2-947c-477d-8946-08dc45e26a6f	Уголок стальной равнополочный 63х4	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.06365+00	2024-03-16 20:56:34.06365+00	1167	\N
d11d91fc-28cd-4be7-8cbb-08dc45e26a6f	Замок электромеханический	ГОСТ 60065-2002	863eabc4-1dc4-4fe3-b109-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.567395+00	2024-03-16 20:56:45.567395+00	1103	\N
d1229a01-865c-4b78-8bb7-08dc45e26a6f	Спускник Dy25/Py16/Tmax130	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.274323+00	2024-03-16 20:56:41.274322+00	2215	\N
d16ab90e-1cd3-4bfb-8be8-08dc45e26a6f	Фильтр кассетный ф160	ГОСТ Р 51232-98	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.504761+00	2024-03-16 20:56:41.504761+00	1244	\N
d18e4a24-054e-49dd-8990-08dc45e26a6f	ИМС-12	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.434785+00	2024-03-16 20:56:34.434785+00	\N	\N
d1f7a150-2be1-4fd6-8c69-08dc45e26a6f	Конвектор электрический настенный мощность 0,5 кВт	ГОСТ 31311-2005	099fe60b-c3fa-4b59-b0e6-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.42661+00	2024-03-16 20:56:44.426609+00	1080	\N
d226c7ad-0126-4337-8d6b-08dc45e26a6f	Саморез 3,5х55мм	ГОСТ 10618-80	1c2b9801-766c-4e95-b12c-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.910042+00	2024-03-16 20:56:46.910041+00	\N	\N
d2b6da73-69fd-4415-8952-08dc45e26a6f	Швеллер 10У	ГОСТ 8240-97	8c8e15d2-84bc-474f-b004-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.119822+00	2024-03-16 20:56:34.119822+00	1169	\N
d34f874e-6287-4170-894d-08dc45e26a6f	Уголок стальной равнополочный 75х7	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.070092+00	2024-03-16 20:56:34.070092+00	1167	\N
d35d5a29-bd37-40d2-8b01-08dc45e26a6f	Клапан оконный приточный Air-Box Comfort	ТУ 4863-001-55227127-03	8b0ac952-1b5a-46e3-b075-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.469848+00	2024-03-16 20:56:38.469848+00	\N	\N
d37d41db-497d-44be-8c80-08dc45e26a6f	Шкаф управления вентилятором с программируемым контроллером ШАУ-ВВ-IP54-380-RS485-1П0,25	ГОСТ Р 54101-2010	b4cf3ce1-0183-42ee-b0f5-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.87751+00	2024-03-16 20:56:44.87751+00	1268	\N
d38c61ee-5b99-4f86-8925-08dc45e26a6f	Лист с чечевичным рифлением толщиной, мм 3 Ст3	ГОСТ 8568-77	5a59190f-3529-4e10-affe-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.861607+00	2024-03-16 20:56:33.861607+00	\N	\N
d3e2cdf1-5420-438e-8a11-08dc45e26a6f	Плитка тротуарная 5.К.6	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.088474+00	2024-03-16 20:56:36.088474+00	\N	\N
d4704b71-e895-4afa-8b55-08dc45e26a6f	Заглушка ПЭ 100 SDR 17 225мм	ГОСТ 32414-2013	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.756846+00	2024-03-16 20:56:40.756845+00	2211	\N
d4a04a67-9f05-439c-8a33-08dc45e26a6f	Перемычки 1 ПБ-16-1 П	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.688667+00	2024-03-16 20:56:36.688667+00	1002	\N
d4b08df4-4862-4b11-8a66-08dc45e26a6f	Перемычки 5ПБ27-27	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.749265+00	2024-03-16 20:56:36.749264+00	1002	\N
d5071c46-0b7d-4af1-8bca-08dc45e26a6f	Клапан балансировочный автоматический Ду15, PN25	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.389099+00	2024-03-16 20:56:41.389099+00	1202	\N
d5440529-be48-4735-8ab9-08dc45e26a6f	Плита перекрытия 1ПП 20-2	ГОСТ 8020-90	979d1a13-d47a-42d3-b05a-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.221023+00	2024-03-16 20:56:37.220998+00	\N	\N
d5cdc213-3a68-401b-8cde-08dc45e26a6f	Удлинитель Ethernet + PoE дополнительно на 100м. 2хRJ-45. PoE удлинитель 10/100 Fast Ethernet	ТУ 4193-007-70239139-03	bee2ddb0-c48e-47c2-b11a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.126581+00	2024-03-16 20:56:46.12658+00	\N	\N
d60b0732-0a35-45ba-8ba4-08dc45e26a6f	Кран шаровый латунный никелированный полнопроходной, Ду20, вн.резьба 3/4", 40бар, Т 15/+110 С	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.238001+00	2024-03-16 20:56:41.238+00	2227	\N
d68487af-f192-4fcd-8a30-08dc45e26a6f	Перемычки 2ПБ17-2п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.685671+00	2024-03-16 20:56:36.68567+00	1002	\N
d6e91416-2066-4782-8c93-08dc45e26a6f	Оповещатель охранно-пожарный световой «Выход влево» ОПОП 1-8	ТУ 4372-017-12215496-05	bcbf3286-9ff5-4bb6-b0fe-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.177146+00	2024-03-16 20:56:45.177145+00	1238	\N
d70850cb-3409-4bdb-8b50-08dc45e26a6f	Диэлектрические коврики размером 800х1500х6мм	ГОСТ 4997-76	ef13516d-1b52-438d-b09f-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.602722+00	2024-03-16 20:56:40.602721+00	\N	\N
d70d2092-d805-4a37-8d40-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 17-355х21,1	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.689202+00	2024-03-16 20:56:46.689201+00	\N	\N
d730355d-a07e-4611-8a4a-08dc45e26a6f	Перемычки 3ПБ16-37	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.719409+00	2024-03-16 20:56:36.719409+00	1002	\N
d74efc1c-2a3b-42c9-89b4-08dc45e26a6f	ИМС-9	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.469616+00	2024-03-16 20:56:34.469615+00	\N	\N
d772c5fe-e128-4706-8c2c-08dc45e26a6f	Люки чугунные средние тип С (В120)	\N	9f94a861-2371-45b2-b0c9-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.866609+00	2024-03-16 20:56:42.866609+00	1178	\N
d7ae46d2-e679-4651-8a08-08dc45e26a6f	Плитка тротуарная 2.П.6	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.073298+00	2024-03-16 20:56:36.073297+00	\N	\N
d7e95057-76a1-4c3f-8d6a-08dc45e26a6f	Саморез 3,5х35мм	ГОСТ 10618-80	1c2b9801-766c-4e95-b12c-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.90847+00	2024-03-16 20:56:46.90847+00	\N	\N
d82a17db-20a7-4329-8aa2-08dc45e26a6f	Блоки фундаментные ФБС 12.5.6-Т	ГОСТ 13579-78	ad27c4c9-2769-45c7-b055-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.991087+00	2024-03-16 20:56:36.991087+00	1184	\N
d82bc02a-d7d1-445e-8c70-08dc45e26a6f	Полотенцесушитель электрический, 64 Вт, 220 В	ГОСТ 31311-2005	af161dca-8b5d-4aa5-b0ed-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.643398+00	2024-03-16 20:56:44.643397+00	1253	\N
d888ed9f-904d-459f-8d98-08dc45e26a6f	Хомут металлический со шпилькой-шурупом и дюбелем 20мм	ГОСТ 24194-80	43c00e8c-7302-4e9e-b134-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.270088+00	2024-03-16 20:56:47.270087+00	\N	\N
d8c481ca-4d56-4db8-8b66-08dc45e26a6f	Муфта соединительная ПВХ 16мм	ГОСТ Р 51613-2000	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.838345+00	2024-03-16 20:56:40.838345+00	2209	\N
d8ed1f0e-6e7e-4e77-8b48-08dc45e26a6f	Рамка 1 местная для розеток	ГОСТ 8594-80	bca10743-1e06-49cd-b096-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.172957+00	2024-03-16 20:56:40.172956+00	1214	\N
d8f48eb0-731d-4919-8c50-08dc45e26a6f	Клапан противодымной вентиляции, "канального" типа П-К-1000х1000-EI60-МВЕ(220)	ГОСТ Р 53301-2013	aaf21552-f82e-4d7f-b0db-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.778725+00	2024-03-16 20:56:43.778725+00	1141	\N
d916663b-979e-4871-8abd-08dc45e26a6f	Брус 100х170мм	ГОСТ 10950-78	f03580ab-1132-4afb-b05d-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.336153+00	2024-03-16 20:56:37.336152+00	\N	\N
d91c773b-a557-4f62-8c06-08dc45e26a6f	Лоток водоотводный ЛВ-10.14,5.08 - пластиковый (усиленный)	ГОСТ 21509-76	5dfb7128-e9fc-4a38-b0b0-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.669157+00	2024-03-16 20:56:41.669156+00	1056	\N
d9603085-78b6-4027-88d1-08dc45e26a6f	Щебень из природного камня для строительных работ марка 800 фракция 20-40	ГОСТ 8267-93	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.146658+00	2024-03-16 20:56:33.146658+00	\N	\N
d99c0bde-0afa-4a94-8cc8-08dc45e26a6f	Патч-панель 19'' 24 порта, RJ-45	ГОСТ IEC 60950-1-2014	ac6d47a6-7d82-466f-b112-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.819273+00	2024-03-16 20:56:45.819272+00	1110	\N
d9a6ed2e-992f-4530-8a70-08dc45e26a6f	Перемычки 5ПБ34-20	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.754896+00	2024-03-16 20:56:36.754895+00	1002	\N
d9b77bbd-ccc3-45ac-8c6c-08dc45e26a6f	Бак мембранный 500 л, 10 бар	ТУ 36-2673-84	31ddd018-65ae-46dc-b0e9-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.508561+00	2024-03-16 20:56:44.50856+00	1083	\N
d9bbe1f3-3cdd-4afd-89d5-08dc45e26a6f	Клей для обоев	ТУ У 24.6-25101682.007-2002	53ffa55e-0ea3-4668-b01f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.108146+00	2024-03-16 20:56:35.108146+00	\N	\N
da753fff-6702-4a00-8916-08dc45e26a6f	Лист горячекатанный толщиной, мм 4 Ст3	ГОСТ 19903-2015	10944fd8-8d1a-4f19-affc-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.795496+00	2024-03-16 20:56:33.795495+00	\N	\N
da8aebf4-7dec-4c5d-8a18-08dc45e26a6f	Плитка тротуарная Ф.2.6	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.102796+00	2024-03-16 20:56:36.102795+00	\N	\N
dad455bb-d040-4270-8d14-08dc45e26a6f	Трубы полипропиленовые РРRC 75 PN10	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.468931+00	2024-03-16 20:56:46.46893+00	\N	\N
db4329b2-9e04-4248-8c33-08dc45e26a6f	Решетка вентиляционная ВР 100x200	ГОСТ 32548-2013	c2786989-eba1-45f9-b0cc-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.023584+00	2024-03-16 20:56:43.023583+00	1276	\N
db473221-1b62-4920-8d94-08dc45e26a6f	Заглушка ST 20	ТУ 2291-001-27178306-2005	68be9bef-8aa8-46e7-b133-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.227844+00	2024-03-16 20:56:47.227844+00	\N	\N
db56cecc-a894-458c-8d3e-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 17-250х14,8	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.683809+00	2024-03-16 20:56:46.683809+00	\N	\N
db589ff5-27d5-4914-8c76-08dc45e26a6f	Компенсатор ПП петлеобразный ф20	ГОСТ 32415-2013	a729e0ac-4545-457f-b0f1-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.761015+00	2024-03-16 20:56:44.761015+00	1089	\N
dba29418-6985-473d-89e0-08dc45e26a6f	Порог одноуровневый 30х900 мм 	ТУ 5275-002-72237363-2004	7c993429-f88e-4dd9-b02c-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.469068+00	2024-03-16 20:56:35.469068+00	1181	\N
dbdadae6-23e9-4f7e-8c41-08dc45e26a6f	Кронштейн водосточной трубы D = 100	\N	3e1f6e1c-d1f9-48a3-b0d2-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.356008+00	2024-03-16 20:56:43.356008+00	1150	\N
dbf08c7d-1902-4b02-8a8c-08dc45e26a6f	Перемычки 9ПБ25-3-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.787616+00	2024-03-16 20:56:36.787616+00	1002	\N
dc26b40c-190d-488a-8b39-08dc45e26a6f	Автоматический выключатель  16А 3Р характеристика С	ГОСТ 9098-78	5b74fcf5-628c-4755-b08b-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.579693+00	2024-03-16 20:56:39.579693+00	1162	\N
dc46ea3e-e10a-4be1-8c18-08dc45e26a6f	Унитаз керамический с низко расположенным бачком и косым выпуском УнТ	ГОСТ 30493-2017	e40ca38e-f1d1-43e9-b0be-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.313446+00	2024-03-16 20:56:42.313445+00	1067	\N
dca1c138-4bc2-4d15-8987-08dc45e26a6f	Арматура стеклопластиковая 5,5-450-2	ТУ 2296-001-20994511-98	4dc75800-844b-4eda-b00d-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.397344+00	2024-03-16 20:56:34.397344+00	\N	\N
dccd23d8-b79e-44bc-897e-08dc45e26a6f	Сетка тяжелая 2С (12А500-200)/(12А500-200)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.350659+00	2024-03-16 20:56:34.350659+00	\N	\N
dcd2d38b-165c-4323-8bc1-08dc45e26a6f	Задвижка клиновая фланцевая чугунная PN25,  DN150	ГОСТ 5762-2002	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.329326+00	2024-03-16 20:56:41.329325+00	1208	\N
dcdd7d00-9885-4513-8be2-08dc45e26a6f	Клапан термостатический прямой Ду=20мм	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.423812+00	2024-03-16 20:56:41.423812+00	1199	\N
dcdddbc3-ada2-4c16-89e2-08dc45e26a6f	Подложка под ламинат	ГОСТ 267-73	7c993429-f88e-4dd9-b02c-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.47271+00	2024-03-16 20:56:35.47271+00	\N	\N
dcf5b7b5-74c4-44a3-8d6f-08dc45e26a6f	Дюбель полимерный распорный М 10х210	ГОСТ Р 57787-2017 	150d0c7f-dd85-4110-b12d-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.960078+00	2024-03-16 20:56:46.960078+00	\N	\N
dd05fa27-293e-4364-8951-08dc45e26a6f	Швеллер 10П	ГОСТ 8240-97	8c8e15d2-84bc-474f-b004-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.119264+00	2024-03-16 20:56:34.119263+00	1168	\N
dd324995-e39f-4f67-8d19-08dc45e26a6f	Труба металлопластиковая PERT/AL/PERT 16х2	ГОСТ Р 53630-2009	d1d8ef93-00c1-4f74-b124-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.520395+00	2024-03-16 20:56:46.520394+00	\N	\N
dd38bfa0-9193-4b12-8905-08dc45e26a6f	Лист оцинкованный окрашенный ОЦ-0,7	ГОСТ 14918-2020	d2cfd871-eef4-4618-affa-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.723383+00	2024-03-16 20:56:33.723381+00	\N	\N
dd6421dd-f0f6-42e6-891d-08dc45e26a6f	Лист перфорированный t=1мм	ГОСТ 58602-2019	023a2783-9a7e-4be7-affd-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.825833+00	2024-03-16 20:56:33.825831+00	\N	\N
dda11051-b322-4f19-8921-08dc45e26a6f	Лист с ромбическим рифлением толщиной, мм 3 Ст3	ГОСТ 8568-77	5a59190f-3529-4e10-affe-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.852882+00	2024-03-16 20:56:33.852881+00	\N	\N
de36f97c-a9c5-4396-8d1d-08dc45e26a6f	Труба из сшитого полиэтилена PEX-a Ду20мм б=2,8мм	ГОСТ Р 53630-2009	243b8f7a-94da-4483-b125-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.565793+00	2024-03-16 20:56:46.565792+00	\N	\N
de3ae58a-cf4d-498f-8ad0-08dc45e26a6f	Металлические кассеты 	ГОСТ Р 59658-2021	46b6b368-4e8a-49fc-b064-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.671982+00	2024-03-16 20:56:37.671981+00	\N	\N
de675c9f-d872-4b23-89dc-08dc45e26a6f	Обои виниловые	ГОСТ 6810-2002	f8e34c63-e4e2-4a7a-b026-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.319959+00	2024-03-16 20:56:35.319958+00	\N	\N
de67946c-f759-42e4-8a79-08dc45e26a6f	Перемычки 8ПБ16-1	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.767745+00	2024-03-16 20:56:36.767745+00	1002	\N
ded164bf-bdc9-4cd4-8d1a-08dc45e26a6f	Труба металлопластиковая PERT/AL/PERT 18х2	ГОСТ Р 53630-2009	d1d8ef93-00c1-4f74-b124-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.526325+00	2024-03-16 20:56:46.526324+00	\N	\N
def5b14e-21bd-4559-8a85-08dc45e26a6f	Перемычки 9ПБ18-8	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.783834+00	2024-03-16 20:56:36.783834+00	1002	\N
df06b122-3761-4d12-8c8e-08dc45e26a6f	Прибор приемно-контрольный и управления охранно-пожарный адресный "РУБЕЖ-2ОП" порт.R3	ГОСТ Р 53325-2012	197c359d-ad6f-4bcf-b0fb-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.089452+00	2024-03-16 20:56:45.089452+00	1093	\N
df28d158-9486-4563-89ba-08dc45e26a6f	Гидрошпонка "Аквастоп" типа Х0-УГЛ-160-6/25	ТУ-5772-001-58093526-11	95d8e924-9f3e-4b34-b010-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.548635+00	2024-03-16 20:56:34.548634+00	\N	\N
df31d351-1d77-4644-8dac-08dc45e26a6f	Крепление полипропиленовых труб для труб Ду=25	ГОСТ 32415-2013	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.370417+00	2024-03-16 20:56:47.370417+00	\N	\N
df3f5475-061e-4457-8b79-08dc45e26a6f	Тройник равнопроходной 90° ПЭ 100 SDR 11 110мм	ГОСТ 18599-2001	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.870748+00	2024-03-16 20:56:40.870748+00	1287	\N
df4ceb70-2194-4db7-8af3-08dc45e26a6f	Дверь металлическая противопожарная ДПСО 02 1800-1340 левая EIS60	ГОСТ Р 57327-2016	368f79bb-710b-4879-b070-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.204595+00	2024-03-16 20:56:38.204594+00	2241	\N
df5a2e93-e25e-4456-89ac-08dc45e26a6f	ИМС-38	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.461274+00	2024-03-16 20:56:34.461273+00	\N	\N
df990ef9-c93f-48d5-8d52-08dc45e26a6f	Пенопакет монтажный для заделки стыков труб в ППУ изоляции 159/250	ГОСТ 30732-2006	4422f14a-bf6c-483c-b128-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.752492+00	2024-03-16 20:56:46.752491+00	\N	\N
e054fc6a-5574-46bb-8cab-08dc45e26a6f	Камера цилиндрическая для уличной установки 5МП, с ИК подсветкой	ГОСТ IEC 60065-2013	712baa53-02e3-4cdf-b103-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.36578+00	2024-03-16 20:56:45.365779+00	1222	\N
e05e4bdb-bb33-47a9-8a0d-08dc45e26a6f	Плитка тротуарная 3Ш.6	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.085001+00	2024-03-16 20:56:36.085+00	\N	\N
e0c71e8b-4a47-436d-8cd4-08dc45e26a6f	Маршрутизатор	ГОСТ IEC 60950-1-2014	1ea490de-5b25-414e-b117-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.009634+00	2024-03-16 20:56:46.009633+00	1115	\N
e109aa65-5e41-4942-8b07-08dc45e26a6f	Кабель силовой ВВГнг(А)-FRLS 3х1,5 660В	ГОСТ 16442-80	5e67bd10-c6a3-4f86-b078-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.559921+00	2024-03-16 20:56:38.559921+00	\N	\N
e12888ee-c9c4-463d-8b32-08dc45e26a6f	Щит автоматического ввода резерва АВР-200-АВ-II-ШхВхГ	ГОСТ 32396-2021	8ecaa294-7e93-42b8-b087-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.350734+00	2024-03-16 20:56:39.350734+00	1158	\N
e1b1ffa6-cb4b-4c7b-8db2-08dc45e26a6f	Крепления для крепления металлопластиковых трубопроводов (клипсы) для Дн28	ГОСТ 32415-2014	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.380541+00	2024-03-16 20:56:47.380541+00	\N	\N
e1d091e8-fea7-436a-8d91-08dc45e26a6f	Болт М10х100	ГОСТ 20700-75	f0617938-2df2-47b8-b131-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.149776+00	2024-03-16 20:56:47.149776+00	\N	\N
e1e46606-64fb-46b1-8d5c-08dc45e26a6f	Труба квадратной формы профиля ПК-50х25х2,0	ГОСТ 32931-2015	59651b32-96bc-4fd9-b12a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.832975+00	2024-03-16 20:56:46.832974+00	\N	\N
e1e9aa5b-5fbf-4340-8d0f-08dc45e26a6f	Трубы полипропиленовые РРRC 40 PN20	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.456283+00	2024-03-16 20:56:46.456282+00	\N	\N
e20ebd45-3efe-455c-8cc1-08dc45e26a6f	Трубка переговорная квартирная ТКП-12М	ТУ 6654-001-39141219-95	5db0cc0e-374b-47f1-b10d-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.67896+00	2024-03-16 20:56:45.67896+00	1105	\N
e216a462-f0be-4a73-8d9b-08dc45e26a6f	Фиксатор угловой 90 град., ф16	ГОСТ 32415-2013	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.349367+00	2024-03-16 20:56:47.349366+00	\N	\N
e25d4df7-933d-419b-8d96-08dc45e26a6f	Заглушка ST 30	ТУ 2291-001-27178306-2005	68be9bef-8aa8-46e7-b133-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.229526+00	2024-03-16 20:56:47.229526+00	\N	\N
e269e50e-d30c-494a-8acf-08dc45e26a6f	Качели	ГОСТ Р 70498-2022	df9f098d-f553-4c64-b062-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.592674+00	2024-03-16 20:56:37.592674+00	1189	\N
e2930a75-408c-4880-8c1e-08dc45e26a6f	Смеситель для душа	ГОСТ 25809-96	44fdffbf-742e-4e9f-b0c2-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.57394+00	2024-03-16 20:56:42.573939+00	1006	\N
e35e06f5-15a3-475b-8ac2-08dc45e26a6f	Доска 120х45	ГОСТ 2695-83	aded3bde-f78b-40cb-b05e-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.385474+00	2024-03-16 20:56:37.385473+00	\N	\N
e375c110-d343-4efb-8c4c-08dc45e26a6f	Установка панельно-каркасная Nуст=11 кВт, n=1579 об/мин, U=380 В, L=23200 м³/ч, P=1100 Па	ГОСТ 10616-2015	e3e35fb9-2c4d-467d-b0d8-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.62569+00	2024-03-16 20:56:43.62569+00	1077	\N
e3a20579-ff46-4a4f-8aac-08dc45e26a6f	Опорные плиты ОП 5.2	ГОСТ  13015-2012	7932f288-6ebe-471c-b059-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.171187+00	2024-03-16 20:56:37.171187+00	1040	\N
e3b71939-d0d1-4e89-8a4d-08dc45e26a6f	Перемычки 3ПБ18-37-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.721022+00	2024-03-16 20:56:36.721022+00	1002	\N
e3e08aa9-cc3b-4f91-8bc3-08dc45e26a6f	Затвор дисковый поворотный чугунный Ду100 PN 1,0 Мпа	ГОСТ 13547-2015	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.331177+00	2024-03-16 20:56:41.331176+00	1209	\N
e3e4f0ed-ea46-4bab-89d2-08dc45e26a6f	Грунтовка ГФ-021	ГОСТ 25129-82	3be6347a-acad-401a-b01e-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.067892+00	2024-03-16 20:56:35.067892+00	\N	\N
e4278e60-cac2-4f18-8d1b-08dc45e26a6f	Труба металлопластиковая PERT/AL/PERT 20х2	ГОСТ Р 53630-2009	d1d8ef93-00c1-4f74-b124-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.530194+00	2024-03-16 20:56:46.530193+00	\N	\N
e42f190d-9a5e-4386-8c3f-08dc45e26a6f	Воронка водосточная 100мм	ГОСТ 15150-69	3e1f6e1c-d1f9-48a3-b0d2-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.350512+00	2024-03-16 20:56:43.350512+00	1072	\N
e4470616-385c-44e6-8bd6-08dc45e26a6f	Клапан запорно-измерительный, Ду20, в комплекте с импульсной трубкой 1/16"	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.398404+00	2024-03-16 20:56:41.398404+00	1050	\N
e46a71b5-8ff3-448e-8c7c-08dc45e26a6f	Датчик температуры наружного воздуха	ГОСТ Р 52931-2008	ce3a1719-e51d-4cec-b0f4-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.841795+00	2024-03-16 20:56:44.841795+00	1280	\N
e47a4a02-89e5-4642-8b86-08dc45e26a6f	Тройник комбинированный с нар. резьбой 32х1/2х32	ГОСТ 32415-2013.	9f18a939-2f32-4798-b0a5-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.926862+00	2024-03-16 20:56:40.926862+00	1285	\N
e481bfed-2b27-4898-8945-08dc45e26a6f	Уголок стальной равнополочный 50х6	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.062962+00	2024-03-16 20:56:34.062961+00	1167	\N
e4846132-0b4c-45be-8b14-08dc45e26a6f	Угол CPO 90 горизонтальный 300х100	ГОСТ Р МЭК 61386.1-2014	a16ff470-035a-47c2-b07a-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.6868+00	2024-03-16 20:56:38.6868+00	\N	\N
e49ad5ed-d63f-47d8-8d3d-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 17-225х13,4	ГОСТ 18599-2001*	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.68311+00	2024-03-16 20:56:46.68311+00	\N	\N
e4db4ec5-7bfe-4595-8c44-08dc45e26a6f	Сливная труба 100мм	\N	3e1f6e1c-d1f9-48a3-b0d2-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.359555+00	2024-03-16 20:56:43.359555+00	1149	\N
e4e28397-b0e8-457b-8a99-08dc45e26a6f	Лестничный марш ЛМ 28.12 Л	серия АБД 9000	089db14d-4bdb-4d8a-b054-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.955914+00	2024-03-16 20:56:36.955914+00	\N	\N
e4e77e2b-7425-424d-893d-08dc45e26a6f	Уголок стальной равнополочный 125х12	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.052798+00	2024-03-16 20:56:34.052797+00	1167	\N
e4f2d012-19f8-4a89-8c3a-08dc45e26a6f	Воздухонагреватель электрический, 160/3, 3 кВт, 1ф 220В	ГОСТ 19108-81	39137cde-acd7-4384-b0cf-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.189861+00	2024-03-16 20:56:43.18986+00	1235	\N
e4fff9ff-b687-4a77-8ad9-08dc45e26a6f	Вертикальный профиль "W"	ГОСТ Р 58154-2018	73160bb9-5526-4799-b065-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.726553+00	2024-03-16 20:56:37.726552+00	\N	\N
e50a78f7-effb-4ad9-8b52-08dc45e26a6f	Заглушка полипропиленовая 32мм	ГОСТ 32415-2013.	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.754174+00	2024-03-16 20:56:40.754173+00	1023	\N
e54ee909-4bb9-4de7-89c0-08dc45e26a6f	Гидрошпонка "Технониколь" типа EM-260/20	СТО 72746455-3.4.4-2015	95d8e924-9f3e-4b34-b010-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.554543+00	2024-03-16 20:56:34.554543+00	\N	\N
e5a9781f-0fb1-4386-8bb4-08dc45e26a6f	Кран шаровый стальной муфтовый, Ду15мм Pn16, Tmax150C	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.265422+00	2024-03-16 20:56:41.265421+00	2232	\N
e5addfd3-743d-4cec-8adc-08dc45e26a6f	Замок для композит кассет	ГОСТ Р 58154-2018	73160bb9-5526-4799-b065-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.732264+00	2024-03-16 20:56:37.732263+00	\N	\N
e5d3cb20-18ac-428a-89cf-08dc45e26a6f	Эмаль ПФ 115	 ГОСТ 6465-76	15e0ab53-c330-4839-b01c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.970429+00	2024-03-16 20:56:34.970428+00	\N	\N
e5fa31a5-f2b4-4b9d-8d2d-08dc45e26a6f	Труба полиэтиленовая "питьевая" ПЭ 100 SDR 11, 225х20,5	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.654408+00	2024-03-16 20:56:46.654407+00	\N	\N
e66948a3-f1f8-4949-89e9-08dc45e26a6f	Кашпо	\N	bcd273a0-a301-4962-b02f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.571024+00	2024-03-16 20:56:35.571024+00	1033	\N
e674d019-36e8-4d83-8d20-08dc45e26a6f	Гофротруба защитная из полиэтилена Ду18, Дн25	ГОСТ 32415-2013	83e611b3-cec5-4510-b126-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.60444+00	2024-03-16 20:56:46.604439+00	\N	\N
e6cf8c4a-4315-4062-8ac6-08dc45e26a6f	Доска 40х150	ГОСТ 8486-86	aded3bde-f78b-40cb-b05e-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.389491+00	2024-03-16 20:56:37.389491+00	\N	\N
e70fd7a1-2e84-403e-8a05-08dc45e26a6f	Плитка тротуарная 2.К.6	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.07+00	2024-03-16 20:56:36.07+00	\N	\N
e76df0b8-9a28-456a-8912-08dc45e26a6f	Лист холоднокатаный толщиной, мм 8 Ст3	ГОСТ 19904-90	f22a50c6-0374-4935-affb-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.764087+00	2024-03-16 20:56:33.764087+00	\N	\N
e7803f68-9197-41e7-8995-08dc45e26a6f	ИМС-17	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.437535+00	2024-03-16 20:56:34.437535+00	\N	\N
e7a5fe45-698f-478d-8c4a-08dc45e26a6f	Вентилятор радиальный L=17448м3/ч, Р=953Па, N=7,5кВт, n=960об/мин, U=380В, Пр.90, У2	ГОСТ 34662-2020	523dee49-e8ce-49f9-b0d6-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.532979+00	2024-03-16 20:56:43.532978+00	1075	\N
e7d35e86-388d-422e-8c6d-08dc45e26a6f	Водонагреватель электрический проточный 3,5кВт, 220В	ТУ 3468-001-97567311-06	5b791af2-fc53-42a7-b0ea-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.542653+00	2024-03-16 20:56:44.542652+00	1084	\N
e80aee00-5987-4918-8c04-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy80/Py16/Tmax200	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.555804+00	2024-03-16 20:56:41.555803+00	1249	\N
e8470253-7ef6-479c-8aaf-08dc45e26a6f	Опорные плиты ОП 5.6	ГОСТ  13015-2012	7932f288-6ebe-471c-b059-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.173612+00	2024-03-16 20:56:37.173611+00	1040	\N
e879e84f-0c42-4ea9-8cb2-08dc45e26a6f	Браслет Mifare силиконовый, без застёжки	ГОСТ Р 51317.3.3-99	9bdb4af7-7ef6-4b13-b106-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.464707+00	2024-03-16 20:56:45.464707+00	\N	\N
e87fdd7f-4f2f-4748-8b4c-08dc45e26a6f	Диэлектрические галоши до 1000 В	ГОСТ 4997-76	e893803d-d93e-4ab2-b09b-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.386213+00	2024-03-16 20:56:40.386212+00	\N	\N
e8d16c84-c64c-4bc1-8a7c-08dc45e26a6f	Перемычки 8ПБ17-2-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.769884+00	2024-03-16 20:56:36.769884+00	1002	\N
e8e00c09-aed7-4a4b-8d56-08dc45e26a6f	Трубы неоцинкованные обыкновенные 32х3,2	ГОСТ 3262-75	42e75951-9bd0-466a-b129-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.793377+00	2024-03-16 20:56:46.793377+00	\N	\N
e900f267-611b-497b-88f1-08dc45e26a6f	Раствор готовый кладочный цементный М 100	ГОСТ 28013-98	72d83129-8d3f-4ae2-aff0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.527781+00	2024-03-16 20:56:33.52778+00	\N	\N
e9d0c879-55c3-4522-88fe-08dc45e26a6f	Фанера березовая влагостойкая ФСФ 8мм	ГОСТ 3916.1-2018	448a4e3c-f3df-47f6-aff8-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.681449+00	2024-03-16 20:56:33.681447+00	\N	\N
ea81fae9-1448-45d4-8a59-08dc45e26a6f	Перемычки 3ПБ34-4-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.735657+00	2024-03-16 20:56:36.735657+00	1002	\N
eae3a628-c4fd-49c0-8bd9-08dc45e26a6f	Клапан запорный радиаторный нижнего подключения, прямой, латунный, G3/4-G1/2, Р=10 бар, Тmax=120 С	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.40641+00	2024-03-16 20:56:41.406409+00	1221	\N
eb0f4285-c572-43b8-8d45-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 21-110х8,1	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.695834+00	2024-03-16 20:56:46.695833+00	\N	\N
eb338e69-f6ef-418b-8dc0-08dc45e26a6f	Изоляция тепловая из базальтовой ваты в виде полых цилиндров без покрытия ф28х20	ГОСТ 9573-2012	3d03985a-26da-4fda-b144-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.777676+00	2024-03-16 20:56:47.777676+00	\N	\N
eb430849-a51b-4492-89b0-08dc45e26a6f	ИМС-5	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.464391+00	2024-03-16 20:56:34.46439+00	\N	\N
eb6623ab-8059-45f4-8b3a-08dc45e26a6f	Автоматический выключатель  32А 3Р характеристика С	ГОСТ 9098-78	5b74fcf5-628c-4755-b08b-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.580691+00	2024-03-16 20:56:39.580691+00	1162	\N
eb75fcf1-67e2-41e5-8c26-08dc45e26a6f	Люки чугунные легкие тип Л (А15) В	\N	9f94a861-2371-45b2-b0c9-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.860446+00	2024-03-16 20:56:42.860446+00	1172	\N
ebdfa281-0532-4c87-8d83-08dc45e26a6f	Анкер распорный M10х133	ГОСТ Р 57787-2017	d6422f1a-8830-42eb-b12f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.061681+00	2024-03-16 20:56:47.061681+00	\N	\N
ebfc97e3-09d8-4715-89b2-08dc45e26a6f	ИМС-7	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.46829+00	2024-03-16 20:56:34.46829+00	\N	\N
ec9c87aa-5a1d-4eb9-8d8f-08dc45e26a6f	Болт М16 с гайкой	ГОСТ 24379.1-2012	f0617938-2df2-47b8-b131-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.148028+00	2024-03-16 20:56:47.148028+00	\N	\N
ed16d272-d830-474d-89e4-08dc45e26a6f	Тумба для сумок	\N	bcd273a0-a301-4962-b02f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.565877+00	2024-03-16 20:56:35.565877+00	1121	\N
ed3738bc-5d12-4c06-8a40-08dc45e26a6f	Перемычки 2ПБ25-3	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.705967+00	2024-03-16 20:56:36.705967+00	1002	\N
ed39c470-d407-4fcd-8c00-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy50/Py16/Tmax200	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.545014+00	2024-03-16 20:56:41.545014+00	1249	\N
ed4adb94-d20a-44f4-88c9-08dc45e26a6f	Щебень из природного камня для строительных работ марка 600 фракция 20-40	ГОСТ 8267-93	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.144025+00	2024-03-16 20:56:33.144025+00	\N	\N
ed4e55c6-339e-413f-898f-08dc45e26a6f	ИМС-11	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.434075+00	2024-03-16 20:56:34.434075+00	\N	\N
ed57e4df-2d40-4fd6-8b5f-08dc45e26a6f	Тройниковое ответвление  Ст 89х4,0-45х3,0-1 ППУ-ПЭ	ГОСТ 30732-2006	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.774806+00	2024-03-16 20:56:40.774805+00	2221	\N
edcd65ce-18fb-4054-8c61-08dc45e26a6f	Утка из тонколистовой оцинкованной стали 100х100	ГОСТ 24751-81	f7e864ef-723c-438a-b0e1-08dc45e26a4c	\N	[]	2024-03-16 20:56:44.210574+00	2024-03-16 20:56:44.210573+00	1134	\N
ee6d4681-a75c-4138-88cf-08dc45e26a6f	Щебень из природного камня для строительных работ марка 600 фракция 60-80	ГОСТ 8267-93	39f76b64-967f-4ef1-afe0-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.145993+00	2024-03-16 20:56:33.145992+00	\N	\N
ee7db069-b2f1-4f2a-89af-08dc45e26a6f	ИМС-40	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.463175+00	2024-03-16 20:56:34.463175+00	\N	\N
eee8a4ae-c155-494f-8b0f-08dc45e26a6f	Лоток лестничный 300х100 L3000	ГОСТ Р 52868-2021	a16ff470-035a-47c2-b07a-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.673564+00	2024-03-16 20:56:38.673564+00	\N	\N
ef46aaea-d29d-4b55-8b5b-08dc45e26a6f	Переход полипропиленовый 110х50	ГОСТ 32415-2013	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.764658+00	2024-03-16 20:56:40.764658+00	1026	\N
ef8eb1a7-8118-46aa-8a64-08dc45e26a6f	Перемычки 5ПБ25-37	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.743329+00	2024-03-16 20:56:36.743329+00	1002	\N
efa5249b-3be8-480c-8a3f-08dc45e26a6f	Перемычки 2ПБ22-3-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.704979+00	2024-03-16 20:56:36.704979+00	1002	\N
efdf42d9-d316-4c88-8af0-08dc45e26a6f	Дверь металлическая противопожарная ДПС 01 1850-1100 правая EI30	ГОСТ Р 57327-2016	368f79bb-710b-4879-b070-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.20212+00	2024-03-16 20:56:38.202119+00	2241	\N
efef0d01-b173-446c-8ba1-08dc45e26a6f	Тройник с шаровым краном воздушника в полиэтиленовой оболочке Ст 133х4-32-1-ППУ-ПЭ	ГОСТ 30732-2006	1c97b81f-3856-413d-b0a8-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.138925+00	2024-03-16 20:56:41.138925+00	\N	\N
f0bed0a3-2ee5-4d5f-8d4e-08dc45e26a6f	Элемент трубопровода концевой с МЗИ в полиэтиленовой оболочке Ст 108-4-1-ППУ-ПЭ	ГОСТ 30732-2006	4422f14a-bf6c-483c-b128-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.749038+00	2024-03-16 20:56:46.749038+00	\N	\N
f0c633d6-9b10-4b50-8d50-08dc45e26a6f	Пенопакет монтажный для заделки стыков труб в ППУ изоляции 108/180	ГОСТ 30732-2006	4422f14a-bf6c-483c-b128-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.750426+00	2024-03-16 20:56:46.750426+00	\N	\N
f0f84b20-762a-470c-8977-08dc45e26a6f	Сетка легкая 4С (4Вр1-50)/(4Вр1-50)	ГОСТ  23279-2015	2997f178-9527-4306-b00c-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.345303+00	2024-03-16 20:56:34.345303+00	\N	\N
f23b555e-7457-412a-8a54-08dc45e26a6f	Перемычки 3ПБ27-8	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.725335+00	2024-03-16 20:56:36.725335+00	1002	\N
f2731bf8-d295-4997-8bde-08dc45e26a6f	Клапан обратный латунный пружинный муфтовый ф32	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.421087+00	2024-03-16 20:56:41.421086+00	1053	\N
f2a27910-2fc3-4bad-8d84-08dc45e26a6f	Анкер распорный M12х100	ГОСТ Р 57787-2017	d6422f1a-8830-42eb-b12f-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.062777+00	2024-03-16 20:56:47.062776+00	\N	\N
f2b84787-f5cb-444a-8a78-08dc45e26a6f	Перемычки 8ПБ13-1-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.767218+00	2024-03-16 20:56:36.767218+00	1002	\N
f2deaadc-f1fd-4334-89a2-08dc45e26a6f	ИМС-29	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.447115+00	2024-03-16 20:56:34.447114+00	\N	\N
f2f6b572-4774-41c7-898e-08dc45e26a6f	ИМС-10	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.433544+00	2024-03-16 20:56:34.433544+00	\N	\N
f3777c3c-89f4-4749-89fa-08dc45e26a6f	Плитка тротуарная 1.П.6	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.048257+00	2024-03-16 20:56:36.048256+00	\N	\N
f38dc45b-40df-4191-8b78-08dc45e26a6f	Тройник равнопроходной 45° ПЭ 100 SDR 21 110мм	ГОСТ 18599-2001	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.865394+00	2024-03-16 20:56:40.865393+00	1287	\N
f3cdae49-9754-4921-89ff-08dc45e26a6f	Плитка тротуарная 1.Ф.21.4.5	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.056534+00	2024-03-16 20:56:36.056533+00	\N	\N
f3d281f6-d310-483a-88e0-08dc45e26a6f	Бетон В25	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.457593+00	2024-03-16 20:56:33.457592+00	\N	\N
f3e675e9-a77c-4a69-8a09-08dc45e26a6f	Плитка тротуарная 2.П.8	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.074073+00	2024-03-16 20:56:36.074072+00	\N	\N
f47cd183-8d0b-43cf-8cf8-08dc45e26a6f	Ответвитель сигнала на 6 отводов для коаксиальных сетей затухания 24 dB TAH-624	ГОСТ Р 513188.20-2012	e28ff662-148c-4072-b120-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.332005+00	2024-03-16 20:56:46.332005+00	\N	\N
f482ebbd-918f-4539-8c43-08dc45e26a6f	Колено нижнее трубы Ø100	\N	3e1f6e1c-d1f9-48a3-b0d2-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.358717+00	2024-03-16 20:56:43.358717+00	1137	\N
f4ad1373-66b0-44d6-8aee-08dc45e26a6f	Дверь металлическая ДСН Г Дп Л Прг Н Псп М1 УЗ, 2100х1310	 ГОСТ 31173-2016 	7edfab7a-8f18-4b1a-b06f-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.160231+00	2024-03-16 20:56:38.160231+00	2242	\N
f4b12391-bc2e-4cfc-8be4-08dc45e26a6f	Клапан термостатический угловой Ду=20мм	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.427126+00	2024-03-16 20:56:41.427126+00	1200	\N
f4c50c8a-58ec-4755-8bfa-08dc45e26a6f	Фильтр сетчатый, чугунный, фланцевый, Dy200/Py16/Tmax200	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.538321+00	2024-03-16 20:56:41.53832+00	1249	\N
f4fd7c76-6980-40ae-8b43-08dc45e26a6f	Датчик движения, 1200Вт, 360град, 8м, IP20	ГОСТ 16703-2022	75d55e1a-004a-4471-b092-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.923237+00	2024-03-16 20:56:39.923236+00	1047	\N
f583eea5-7676-4760-8af4-08dc45e26a6f	Блок дверной  из алюминиевых сплавов ДАВ Оп Бпр Дв Л Р 1460х2100 EIWS30	ГОСТ 23747-2015	dbd7bdda-37eb-4296-b071-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.262767+00	2024-03-16 20:56:38.262766+00	2240	\N
f5b4a2c6-8491-4a23-8b3c-08dc45e26a6f	Светильник светодиодный квадратный, встраиваеый 30Вт 3000Лм IP40	ГОСТ 16703-2022	f4bef6ab-4df6-4204-b08d-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.655614+00	2024-03-16 20:56:39.655614+00	1164	\N
f5d0f284-c529-49ca-8a5e-08dc45e26a6f	Перемычки 5ПБ18-27	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.739519+00	2024-03-16 20:56:36.739519+00	1002	\N
f5d56fe0-3232-49ed-8d9c-08dc45e26a6f	Фиксатор угловой 90 град., ф20	ГОСТ 32415-2013	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.350033+00	2024-03-16 20:56:47.350033+00	\N	\N
f5f29167-337e-4d07-899a-08dc45e26a6f	ИМС-21	серия АБД 9000	c591e79a-a201-4ec3-b00e-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.44067+00	2024-03-16 20:56:34.44067+00	\N	\N
f5f58876-d383-4a5f-8acc-08dc45e26a6f	Спортивный комплекс	ГОСТ Р 70498-2022	935c9f3e-7fe6-4462-b060-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.491237+00	2024-03-16 20:56:37.491237+00	1186	\N
f602f751-dd38-4717-8d57-08dc45e26a6f	Трубы оцинкованные обыкновенные 15х2,8	ГОСТ 3262-75	42e75951-9bd0-466a-b129-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.794384+00	2024-03-16 20:56:46.794384+00	\N	\N
f60ab70a-a881-4bf4-8bbd-08dc45e26a6f	Задвижка клиновая фланцевая чугунная PN16,  DN200	ГОСТ 5762-2002	0b4938e0-764c-4f5a-b0ab-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.326118+00	2024-03-16 20:56:41.326118+00	1207	\N
f66c58a7-60cd-4556-895c-08dc45e26a6f	Прокат стальной  круглый 10 Ст3	ГОСТ 2590-2006	6b38668e-2287-43c9-b008-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.220431+00	2024-03-16 20:56:34.22043+00	\N	\N
f68a8213-58af-4fa2-8d31-08dc45e26a6f	Труба полиэтиленовая "питьевая" ПЭ 100 SDR 13,6, 200х14,7	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.661817+00	2024-03-16 20:56:46.661817+00	\N	\N
f7057ef4-6964-4759-8beb-08dc45e26a6f	Фильтр магнитный фланцевый ФМФ-100	ГОСТ 24856-2014	abe6fac1-287f-4eae-b0ad-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.50818+00	2024-03-16 20:56:41.50818+00	1246	\N
f722b917-2ac0-43d5-8be3-08dc45e26a6f	Клапан термостатический угловой Ду=15мм	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.426436+00	2024-03-16 20:56:41.426435+00	1200	\N
f75d6318-25ac-4b7a-8b2f-08dc45e26a6f	Устройство вводно-рвспределлительное ВРУ-250-ВР-II-2000х800х450	ГОСТ 32396-2021	a00435db-5de4-486f-b085-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.236197+00	2024-03-16 20:56:39.236197+00	1156	\N
f7bb1d53-3c36-42e8-8939-08dc45e26a6f	Уголок стальной равнополочный 100х9	ГОСТ 8509-93	871a4612-1fa6-4a82-b003-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.047886+00	2024-03-16 20:56:34.047886+00	1167	\N
f7d2b2d5-9d1b-4920-8d43-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 17-500х29,7	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.693164+00	2024-03-16 20:56:46.693164+00	\N	\N
f8101d43-6e5b-440c-89fe-08dc45e26a6f	Плитка тротуарная 1.Ф.20.5	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.05539+00	2024-03-16 20:56:36.05539+00	\N	\N
f81dda60-c32a-4edd-8b5e-08dc45e26a6f	Тройник с шаровым краном воздушника в полиэтиленовой оболочке Ст 1020х12-50-1-ППУ-ПЭ	ГОСТ 30732-2006	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.77379+00	2024-03-16 20:56:40.77379+00	2220	\N
f84fa8c7-623f-4c81-8b62-08dc45e26a6f	Металлическая заглушка изоляции  108/180-650 ППУ-ПЭ	ГОСТ 30732-2006	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.778055+00	2024-03-16 20:56:40.778055+00	2224	\N
f8529c23-cec2-451d-8d00-08dc45e26a6f	Трубы полипропиленовые армированные стекловолокном 50х8,4  PN25	ГОСТ 32415-2013	56e303d6-a6cf-473f-b123-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.428096+00	2024-03-16 20:56:46.428096+00	\N	\N
f914a55a-57b2-414a-8b8b-08dc45e26a6f	Крестовина полипропиленовая 20мм	ГОСТ 32415-2013	cd52e951-856f-42bc-b0a7-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.048139+00	2024-03-16 20:56:41.048138+00	2249	\N
fa070da0-c50e-4c28-8b4f-08dc45e26a6f	Перчатки диэлектрические	ГОСТ 4997-76	3c82da1a-db06-4876-b09e-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.555935+00	2024-03-16 20:56:40.555934+00	\N	\N
fa1dea53-fa1b-4e84-8ce0-08dc45e26a6f	Удлинитель Ethernet с PoE по кабелю UTP. Увеличение расстояния передачи данных+ питание на 100м. Не требует дополнительного питания	ТУ 4193-007-70239139-03	bee2ddb0-c48e-47c2-b11a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.128446+00	2024-03-16 20:56:46.128446+00	\N	\N
fa26ebd3-2119-4de0-89cb-08dc45e26a6f	Грунт-краска	ГОСТ 28196-89	41220ef4-a634-4723-b019-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.881718+00	2024-03-16 20:56:34.881718+00	\N	\N
fa2e5405-f5d0-42e3-8dad-08dc45e26a6f	Крепление полипропиленовых труб Ду=32	ГОСТ 32415-2013	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.371428+00	2024-03-16 20:56:47.371427+00	\N	\N
fa804a74-e2be-4801-8aea-08dc45e26a6f	Дверь металлическая ДСУЗ Г Оп Л Прг Н Псп М2, 2210х1050	ГОСТ 31173-2016	7edfab7a-8f18-4b1a-b06f-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.15626+00	2024-03-16 20:56:38.15626+00	2242	\N
faa80366-50da-4e7f-8a65-08dc45e26a6f	Перемычки 5ПБ25-37-п	ГОСТ 948-2016	ce0efe7e-8760-4dcb-b052-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.748723+00	2024-03-16 20:56:36.748723+00	1002	\N
fabc55cb-99e6-4ec2-8c51-08dc45e26a6f	Клапан противодымной вентиляции, "стенового" типа П-С-1100х500-EI60-МВЕ(220)	ГОСТ Р 53301-2013	aaf21552-f82e-4d7f-b0db-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.779657+00	2024-03-16 20:56:43.779656+00	1142	\N
fad1f697-62d7-4f0d-8b57-08dc45e26a6f	Муфта полипропиленовая,  Дн20	ГОСТ 32415-2013	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.758897+00	2024-03-16 20:56:40.758897+00	2214	\N
fafdce19-a1c9-41c8-89ee-08dc45e26a6f	Урна	\N	bcd273a0-a301-4962-b02f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.583815+00	2024-03-16 20:56:35.583814+00	1035	\N
fb1903e8-3ef4-4dde-8c4e-08dc45e26a6f	Вставка гибкая ГКВ-50-30	ТУ 4863-004-04980426-02	d251f293-f347-4620-b0d9-08dc45e26a4c	\N	[]	2024-03-16 20:56:43.689259+00	2024-03-16 20:56:43.689259+00	\N	\N
fb1c822a-6d1f-47f1-8b5d-08dc45e26a6f	Тройник в полиэтиленовой оболочке Ст 32-32-1-ППУ-ПЭ	ГОСТ 30732-2006	af4e43fb-e8c5-4a97-b0a3-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.770773+00	2024-03-16 20:56:40.770773+00	2219	\N
fb33f838-1044-475a-8a2a-08dc45e26a6f	Плита канальная П 9/3-15	ГОСТ 13015-2012	22967abd-4dda-4306-b049-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.43567+00	2024-03-16 20:56:36.435669+00	\N	\N
fb47dfcd-80ea-410d-8ba8-08dc45e26a6f	Кран трехходовой для манометра G1/2 вн-G1/2 вн	ГОСТ Р 52720-2007	7cbbf1b3-eca1-4776-b0aa-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.241835+00	2024-03-16 20:56:41.241835+00	2230	\N
fb54a57b-8814-4318-8cd8-08dc45e26a6f	Коммутатор KKM100	ГОСТ IEC 60950-1-2014	579bc48a-82e6-4b2a-b118-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.049911+00	2024-03-16 20:56:46.049911+00	1118	\N
fb5dd8ad-7d37-46a3-8a24-08dc45e26a6f	Лотки канальные Л 7/2-8	ГОСТ 13015-2012	a0ae6856-57f8-4dde-b048-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.38531+00	2024-03-16 20:56:36.385309+00	\N	\N
fb86cb63-1db7-4c15-8cd0-08dc45e26a6f	Кросс оптический стоечный, 8 портов, полная комплектация ШКОС Л -1U/2 -8 -SC ~8 -SC/APC	ГОСТ Р 9127-94	3d0db1dd-9b1f-4a49-b115-08dc45e26a4c	\N	[]	2024-03-16 20:56:45.94245+00	2024-03-16 20:56:45.94245+00	\N	\N
fb8b2f45-e989-45cd-8b12-08dc45e26a6f	Лоток перфорированный 150x500 L2000	ГОСТ Р 52868-2021	a16ff470-035a-47c2-b07a-08dc45e26a4c	\N	[]	2024-03-16 20:56:38.677297+00	2024-03-16 20:56:38.677296+00	\N	\N
fbcfce54-17a4-4e43-8d62-08dc45e26a6f	Труба прямоугольной формы профиля ПП-15х15х1,5	ГОСТ 32931-2015	59651b32-96bc-4fd9-b12a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.844877+00	2024-03-16 20:56:46.844877+00	\N	\N
fc08578c-a9f5-46bc-88d3-08dc45e26a6f	Песок мелкозернистый	ГОСТ 8736-2014	a3798b12-702e-40fa-afe1-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.176285+00	2024-03-16 20:56:33.176283+00	\N	\N
fc134ff5-13fc-4df9-88d4-08dc45e26a6f	Песок средней крупности	ГОСТ 8736-2014	a3798b12-702e-40fa-afe1-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.176694+00	2024-03-16 20:56:33.176693+00	\N	\N
fc1d1074-9b71-42dc-8bcb-08dc45e26a6f	Клапан балансировочный автоматический Ду20, PN16	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.389773+00	2024-03-16 20:56:41.389773+00	1202	\N
fca1732b-8542-41ba-8dab-08dc45e26a6f	Крепление полипропиленовых труб для труб Ду=20	ГОСТ 32415-2013	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.369593+00	2024-03-16 20:56:47.369593+00	\N	\N
fcc9aa20-12e9-451e-8b6e-08dc45e26a6f	Тройник напорный переходной 90° 160х110 ПВХ	ГОСТ Р 51613-2000	1888d571-7603-4798-b0a4-08dc45e26a4c	\N	[]	2024-03-16 20:56:40.847148+00	2024-03-16 20:56:40.847148+00	2204	\N
fcd2a4d2-0766-40d7-8be1-08dc45e26a6f	Клапан термостатический прямой Ду=15мм	ГОСТ Р 52720-2007	55b2f0a2-4ec4-47eb-b0ac-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.423107+00	2024-03-16 20:56:41.423107+00	1054	\N
fd15b9e9-e740-446d-8d8b-08dc45e26a6f	Винт самонарезающийся М 4,2х19	ГОСТ 10621-80	5c413c9a-f7b3-4f0f-b130-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.108924+00	2024-03-16 20:56:47.108923+00	\N	\N
fd2f39fd-367c-45e9-8b35-08dc45e26a6f	Щит автоматики освещения ЩАО-25-600х600х400	ГОСТ 32396-2021	364632ff-03ba-490e-b088-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.403641+00	2024-03-16 20:56:39.403641+00	1159	\N
fd332481-fa70-477f-8a10-08dc45e26a6f	Плитка тротуарная 4.Ш.8	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.087704+00	2024-03-16 20:56:36.087704+00	\N	\N
fd7e3e72-e8b0-41e4-8d2f-08dc45e26a6f	Труба полиэтиленовая "питьевая" ПЭ 100 SDR 13,6, 125х9,2	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.66035+00	2024-03-16 20:56:46.66035+00	\N	\N
fd879508-5626-40bf-8d36-08dc45e26a6f	Труба полиэтиленовая "техническая" ПЭ 100 SDR 13,6, 110х8,1	ГОСТ 18599-2001	46bdfe5d-e960-4b2d-b127-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.665472+00	2024-03-16 20:56:46.665471+00	\N	\N
fd980ede-ba19-4f4d-898b-08dc45e26a6f	Сетка СКС 1	\N	4dc75800-844b-4eda-b00d-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.39945+00	2024-03-16 20:56:34.39945+00	\N	\N
fde6a3a0-c7ba-4bd8-8da6-08dc45e26a6f	Клипсы для крепления металлопластиковых труб ф20	ГОСТ 32415-2014	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.365046+00	2024-03-16 20:56:47.365045+00	\N	\N
fe04bdfd-930f-4049-8b28-08dc45e26a6f	Кабели витая пара, неэкранированные (U/UTP), категория 5e, 4 пары (24 AWG), одножильные, внутренние UTP CAt 5e. 4х2х0,5	ГОСТ Р 53316-2021	61b5c510-5cb7-485b-b081-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.059986+00	2024-03-16 20:56:39.059986+00	\N	\N
fe335e75-b48d-4250-89f0-08dc45e26a6f	Часы	\N	bcd273a0-a301-4962-b02f-08dc45e26a4c	\N	[]	2024-03-16 20:56:35.586574+00	2024-03-16 20:56:35.586574+00	1037	\N
fe71e5fb-775d-4064-89fd-08dc45e26a6f	Плитка тротуарная 1.Ф.19.5	ГОСТ 17608-91	a59a2250-3e22-4be7-b041-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.054438+00	2024-03-16 20:56:36.054437+00	\N	\N
fe74c8c8-ab7e-4e02-8a23-08dc45e26a6f	Лотки канальные Л 6/2-8	ГОСТ 13015-2012	a0ae6856-57f8-4dde-b048-08dc45e26a4c	\N	[]	2024-03-16 20:56:36.384564+00	2024-03-16 20:56:36.384563+00	\N	\N
fe821554-44ca-4bd9-88ff-08dc45e26a6f	Фанера березовая влагостойкая ФСФ 9мм	ГОСТ 3916.1-2018	448a4e3c-f3df-47f6-aff8-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.68249+00	2024-03-16 20:56:33.68249+00	\N	\N
feb282b7-bbd1-4ec1-8960-08dc45e26a6f	Проволока 1,2-О-Ч	ГОСТ 3282-74	a6da0d8a-c182-4a7c-b009-08dc45e26a4c	\N	[]	2024-03-16 20:56:34.252069+00	2024-03-16 20:56:34.252069+00	\N	\N
ff093b3d-679e-4d99-8b26-08dc45e26a6f	Кабели витая пара, неэкранированные (U/UTP), категория 5e, 25 пар (24 AWG), одножильные, внутренние UTP CAt 5e. 25х2х0,5	ГОСТ Р 53316-2021	61b5c510-5cb7-485b-b081-08dc45e26a4c	\N	[]	2024-03-16 20:56:39.055422+00	2024-03-16 20:56:39.055421+00	\N	\N
ff16fc5f-eda8-4bc3-8aca-08dc45e26a6f	Доска 80х45	ГОСТ 2695-83	aded3bde-f78b-40cb-b05e-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.395823+00	2024-03-16 20:56:37.395822+00	\N	\N
ff1ad8ea-3455-425d-88e3-08dc45e26a6f	Бетон тяжелый B 35 (M450)	ГОСТ 26633-2015	b59131bc-ed75-4fca-afee-08dc45e26a4c	\N	[]	2024-03-16 20:56:33.460776+00	2024-03-16 20:56:33.460775+00	\N	\N
ff2981c8-2c78-4218-8aae-08dc45e26a6f	Опорные плиты ОП 5.5	ГОСТ  13015-2012	7932f288-6ebe-471c-b059-08dc45e26a4c	\N	[]	2024-03-16 20:56:37.172555+00	2024-03-16 20:56:37.172555+00	1040	\N
ff2a7a4b-ab47-43f8-8d9e-08dc45e26a6f	Фиксатор угловой 90 град., ф32	ГОСТ 32415-2013	55f062d7-d948-4487-b136-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.351732+00	2024-03-16 20:56:47.351732+00	\N	\N
ff550e71-68d1-47f1-8ba0-08dc45e26a6f	Тройник в полиэтиленовой оболочке Ст 159х6-45х3-1-ППУ-ПЭ	ГОСТ 30732-2006	1c97b81f-3856-413d-b0a8-08dc45e26a4c	\N	[]	2024-03-16 20:56:41.132507+00	2024-03-16 20:56:41.132506+00	\N	\N
ff99c8f4-d773-485b-8d5d-08dc45e26a6f	Труба квадратной формы профиля ПК-40х40х2,0	ГОСТ 32931-2015	59651b32-96bc-4fd9-b12a-08dc45e26a4c	\N	[]	2024-03-16 20:56:46.833983+00	2024-03-16 20:56:46.833983+00	\N	\N
ffec0bde-9a65-4599-8d97-08dc45e26a6f	Заглушка полипропиленовая 20мм	ГОСТ 32415-2013	68be9bef-8aa8-46e7-b133-08dc45e26a4c	\N	[]	2024-03-16 20:56:47.230727+00	2024-03-16 20:56:47.230726+00	\N	\N
ffec7245-6830-40ae-8c23-08dc45e26a6f	Насос циркуляционный Q=0,91м³/ч, Н=63м, N=0,75 кВт	ГОСТ 31840-2012	0bbb02e8-6f66-42f7-b0c5-08dc45e26a4c	\N	[]	2024-03-16 20:56:42.694354+00	2024-03-16 20:56:42.694353+00	1264	\N
\.


--
-- TOC entry 3468 (class 0 OID 16699)
-- Dependencies: 231
-- Data for Name: HistoryUpdate; Type: TABLE DATA; Schema: public; Owner: b2h
--

COPY public."HistoryUpdate" ("HistoryId", "DataUpdate", "MaterialId") FROM stdin;
4eaa64ac-9b4f-490b-8edb-13c601a36be3	2024-04-05 17:19:34.874748+00	3e4f98f7-129f-42cd-88c1-08dc45e26a6f
\.


--
-- TOC entry 3459 (class 0 OID 16607)
-- Dependencies: 222
-- Data for Name: Images; Type: TABLE DATA; Schema: public; Owner: b2h
--

COPY public."Images" ("ImageId", "Name", "Path", "CreatedAt", "UpdatedAt", "Type") FROM stdin;
1012	22.png	Source/Materials/Images/	2024-03-14 10:26:10.825071+00	2024-03-14 10:26:10.825375+00	image/png
\.


--
-- TOC entry 3470 (class 0 OID 16710)
-- Dependencies: 233
-- Data for Name: MaterialImages; Type: TABLE DATA; Schema: public; Owner: b2h
--

COPY public."MaterialImages" ("MaterialImageId", "ImageId", "MaterialId") FROM stdin;
2	1012	3e4f98f7-129f-42cd-88c1-08dc45e26a6f
\.


--
-- TOC entry 3452 (class 0 OID 16563)
-- Dependencies: 215
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: b2h
--

COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
20240614114224_fix-date-error	8.0.6
\.


--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 223
-- Name: B2HRoleClaims_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2h
--

SELECT pg_catalog.setval('public."B2HRoleClaims_Id_seq"', 1, false);


--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 225
-- Name: B2HUserClaims_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: b2h
--

SELECT pg_catalog.setval('public."B2HUserClaims_Id_seq"', 1, false);


--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 219
-- Name: Filebase_FileId_seq; Type: SEQUENCE SET; Schema: public; Owner: b2h
--

SELECT pg_catalog.setval('public."Filebase_FileId_seq"', 1, false);


--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 221
-- Name: Images_ImageId_seq; Type: SEQUENCE SET; Schema: public; Owner: b2h
--

SELECT pg_catalog.setval('public."Images_ImageId_seq"', 1, false);


--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 232
-- Name: MaterialImages_MaterialImageId_seq; Type: SEQUENCE SET; Schema: public; Owner: b2h
--

SELECT pg_catalog.setval('public."MaterialImages_MaterialImageId_seq"', 1, false);


-- Completed on 2024-06-14 14:58:37

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.3

-- Started on 2024-06-14 14:58:37

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

-- Completed on 2024-06-14 14:58:39

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-06-14 14:58:39

--
-- PostgreSQL database cluster dump complete
--

