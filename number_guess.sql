--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 1);
INSERT INTO public.games VALUES (2, 1, 13);
INSERT INTO public.games VALUES (3, 1, 1);
INSERT INTO public.games VALUES (4, 2, 515);
INSERT INTO public.games VALUES (5, 2, 213);
INSERT INTO public.games VALUES (6, 3, 143);
INSERT INTO public.games VALUES (7, 3, 885);
INSERT INTO public.games VALUES (8, 2, 228);
INSERT INTO public.games VALUES (9, 2, 1);
INSERT INTO public.games VALUES (10, 2, 678);
INSERT INTO public.games VALUES (11, 4, 648);
INSERT INTO public.games VALUES (12, 4, 967);
INSERT INTO public.games VALUES (13, 5, 514);
INSERT INTO public.games VALUES (14, 5, 28);
INSERT INTO public.games VALUES (15, 4, 45);
INSERT INTO public.games VALUES (16, 4, 1);
INSERT INTO public.games VALUES (17, 4, 344);
INSERT INTO public.games VALUES (18, 6, 17);
INSERT INTO public.games VALUES (19, 6, 10);
INSERT INTO public.games VALUES (20, 6, 1);
INSERT INTO public.games VALUES (21, 1, 1);
INSERT INTO public.games VALUES (22, 1, 1);
INSERT INTO public.games VALUES (23, 1, 11);
INSERT INTO public.games VALUES (24, 1, 1);
INSERT INTO public.games VALUES (25, 1, 11);
INSERT INTO public.games VALUES (26, 7, 625);
INSERT INTO public.games VALUES (27, 7, 911);
INSERT INTO public.games VALUES (28, 8, 967);
INSERT INTO public.games VALUES (29, 8, 209);
INSERT INTO public.games VALUES (30, 7, 639);
INSERT INTO public.games VALUES (31, 7, 378);
INSERT INTO public.games VALUES (32, 7, 535);
INSERT INTO public.games VALUES (33, 1, 11);
INSERT INTO public.games VALUES (34, 1, 13);
INSERT INTO public.games VALUES (35, 9, 472);
INSERT INTO public.games VALUES (36, 9, 8);
INSERT INTO public.games VALUES (37, 10, 257);
INSERT INTO public.games VALUES (38, 10, 763);
INSERT INTO public.games VALUES (39, 9, 870);
INSERT INTO public.games VALUES (40, 9, 149);
INSERT INTO public.games VALUES (41, 9, 854);
INSERT INTO public.games VALUES (42, 11, 807);
INSERT INTO public.games VALUES (43, 11, 603);
INSERT INTO public.games VALUES (44, 12, 148);
INSERT INTO public.games VALUES (45, 12, 875);
INSERT INTO public.games VALUES (46, 11, 698);
INSERT INTO public.games VALUES (47, 11, 299);
INSERT INTO public.games VALUES (48, 11, 575);
INSERT INTO public.games VALUES (49, 13, 769);
INSERT INTO public.games VALUES (50, 13, 997);
INSERT INTO public.games VALUES (51, 14, 383);
INSERT INTO public.games VALUES (52, 14, 156);
INSERT INTO public.games VALUES (53, 13, 966);
INSERT INTO public.games VALUES (54, 13, 658);
INSERT INTO public.games VALUES (55, 13, 190);
INSERT INTO public.games VALUES (56, 15, 619);
INSERT INTO public.games VALUES (57, 15, 675);
INSERT INTO public.games VALUES (58, 16, 193);
INSERT INTO public.games VALUES (59, 16, 349);
INSERT INTO public.games VALUES (60, 15, 612);
INSERT INTO public.games VALUES (61, 15, 586);
INSERT INTO public.games VALUES (62, 15, 338);
INSERT INTO public.games VALUES (63, 1, 12);
INSERT INTO public.games VALUES (64, 17, 860);
INSERT INTO public.games VALUES (65, 17, 328);
INSERT INTO public.games VALUES (66, 18, 817);
INSERT INTO public.games VALUES (67, 18, 891);
INSERT INTO public.games VALUES (68, 17, 818);
INSERT INTO public.games VALUES (69, 17, 178);
INSERT INTO public.games VALUES (70, 17, 729);
INSERT INTO public.games VALUES (71, 19, 297);
INSERT INTO public.games VALUES (72, 19, 509);
INSERT INTO public.games VALUES (73, 20, 467);
INSERT INTO public.games VALUES (74, 20, 667);
INSERT INTO public.games VALUES (75, 19, 721);
INSERT INTO public.games VALUES (76, 19, 611);
INSERT INTO public.games VALUES (77, 19, 436);
INSERT INTO public.games VALUES (78, 21, 483);
INSERT INTO public.games VALUES (79, 21, 895);
INSERT INTO public.games VALUES (80, 22, 820);
INSERT INTO public.games VALUES (81, 22, 819);
INSERT INTO public.games VALUES (82, 21, 493);
INSERT INTO public.games VALUES (83, 21, 206);
INSERT INTO public.games VALUES (84, 21, 628);
INSERT INTO public.games VALUES (85, 23, 376);
INSERT INTO public.games VALUES (86, 23, 551);
INSERT INTO public.games VALUES (87, 24, 814);
INSERT INTO public.games VALUES (88, 24, 102);
INSERT INTO public.games VALUES (89, 23, 923);
INSERT INTO public.games VALUES (90, 23, 693);
INSERT INTO public.games VALUES (91, 23, 120);
INSERT INTO public.games VALUES (92, 25, 989);
INSERT INTO public.games VALUES (93, 25, 213);
INSERT INTO public.games VALUES (94, 26, 78);
INSERT INTO public.games VALUES (95, 26, 23);
INSERT INTO public.games VALUES (96, 25, 645);
INSERT INTO public.games VALUES (97, 25, 440);
INSERT INTO public.games VALUES (98, 25, 729);
INSERT INTO public.games VALUES (99, 27, 411);
INSERT INTO public.games VALUES (100, 27, 575);
INSERT INTO public.games VALUES (101, 28, 918);
INSERT INTO public.games VALUES (102, 28, 475);
INSERT INTO public.games VALUES (103, 27, 533);
INSERT INTO public.games VALUES (104, 27, 407);
INSERT INTO public.games VALUES (105, 27, 406);
INSERT INTO public.games VALUES (106, 29, 283);
INSERT INTO public.games VALUES (107, 29, 391);
INSERT INTO public.games VALUES (108, 30, 276);
INSERT INTO public.games VALUES (109, 30, 229);
INSERT INTO public.games VALUES (110, 29, 495);
INSERT INTO public.games VALUES (111, 29, 867);
INSERT INTO public.games VALUES (112, 29, 72);
INSERT INTO public.games VALUES (113, 31, 682);
INSERT INTO public.games VALUES (114, 31, 487);
INSERT INTO public.games VALUES (115, 32, 311);
INSERT INTO public.games VALUES (116, 32, 847);
INSERT INTO public.games VALUES (117, 31, 832);
INSERT INTO public.games VALUES (118, 31, 499);
INSERT INTO public.games VALUES (119, 31, 281);
INSERT INTO public.games VALUES (120, 33, 428);
INSERT INTO public.games VALUES (121, 33, 733);
INSERT INTO public.games VALUES (122, 34, 561);
INSERT INTO public.games VALUES (123, 34, 579);
INSERT INTO public.games VALUES (124, 33, 456);
INSERT INTO public.games VALUES (125, 33, 693);
INSERT INTO public.games VALUES (126, 33, 31);
INSERT INTO public.games VALUES (127, 35, 514);
INSERT INTO public.games VALUES (128, 35, 799);
INSERT INTO public.games VALUES (129, 36, 7);
INSERT INTO public.games VALUES (130, 36, 568);
INSERT INTO public.games VALUES (131, 35, 786);
INSERT INTO public.games VALUES (132, 35, 571);
INSERT INTO public.games VALUES (133, 35, 854);
INSERT INTO public.games VALUES (134, 37, 761);
INSERT INTO public.games VALUES (135, 37, 175);
INSERT INTO public.games VALUES (136, 38, 422);
INSERT INTO public.games VALUES (137, 38, 427);
INSERT INTO public.games VALUES (138, 37, 770);
INSERT INTO public.games VALUES (139, 37, 83);
INSERT INTO public.games VALUES (140, 37, 797);
INSERT INTO public.games VALUES (141, 39, 364);
INSERT INTO public.games VALUES (142, 39, 406);
INSERT INTO public.games VALUES (143, 40, 261);
INSERT INTO public.games VALUES (144, 40, 606);
INSERT INTO public.games VALUES (145, 39, 130);
INSERT INTO public.games VALUES (146, 39, 1000);
INSERT INTO public.games VALUES (147, 39, 80);
INSERT INTO public.games VALUES (148, 41, 185);
INSERT INTO public.games VALUES (149, 41, 119);
INSERT INTO public.games VALUES (150, 42, 111);
INSERT INTO public.games VALUES (151, 42, 571);
INSERT INTO public.games VALUES (152, 41, 830);
INSERT INTO public.games VALUES (153, 41, 362);
INSERT INTO public.games VALUES (154, 41, 26);
INSERT INTO public.games VALUES (155, 43, 6);
INSERT INTO public.games VALUES (156, 43, 442);
INSERT INTO public.games VALUES (157, 44, 804);
INSERT INTO public.games VALUES (158, 44, 787);
INSERT INTO public.games VALUES (159, 43, 872);
INSERT INTO public.games VALUES (160, 43, 788);
INSERT INTO public.games VALUES (161, 43, 231);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Landon');
INSERT INTO public.users VALUES (2, 'user_1730701195261');
INSERT INTO public.users VALUES (3, 'user_1730701195260');
INSERT INTO public.users VALUES (4, 'user_1730701320413');
INSERT INTO public.users VALUES (5, 'user_1730701320412');
INSERT INTO public.users VALUES (6, 'Dom');
INSERT INTO public.users VALUES (7, 'user_1730703874695');
INSERT INTO public.users VALUES (8, 'user_1730703874694');
INSERT INTO public.users VALUES (9, 'user_1730705377220');
INSERT INTO public.users VALUES (10, 'user_1730705377219');
INSERT INTO public.users VALUES (11, 'user_1730705541151');
INSERT INTO public.users VALUES (12, 'user_1730705541150');
INSERT INTO public.users VALUES (13, 'user_1730705567453');
INSERT INTO public.users VALUES (14, 'user_1730705567452');
INSERT INTO public.users VALUES (15, 'user_1730707171152');
INSERT INTO public.users VALUES (16, 'user_1730707171151');
INSERT INTO public.users VALUES (17, 'user_1730707271749');
INSERT INTO public.users VALUES (18, 'user_1730707271748');
INSERT INTO public.users VALUES (19, 'user_1730707320711');
INSERT INTO public.users VALUES (20, 'user_1730707320710');
INSERT INTO public.users VALUES (21, 'user_1730707345427');
INSERT INTO public.users VALUES (22, 'user_1730707345426');
INSERT INTO public.users VALUES (23, 'user_1730707714068');
INSERT INTO public.users VALUES (24, 'user_1730707714067');
INSERT INTO public.users VALUES (25, 'user_1730707742298');
INSERT INTO public.users VALUES (26, 'user_1730707742297');
INSERT INTO public.users VALUES (27, 'user_1730707751846');
INSERT INTO public.users VALUES (28, 'user_1730707751845');
INSERT INTO public.users VALUES (29, 'user_1730707758094');
INSERT INTO public.users VALUES (30, 'user_1730707758093');
INSERT INTO public.users VALUES (31, 'user_1730707761182');
INSERT INTO public.users VALUES (32, 'user_1730707761181');
INSERT INTO public.users VALUES (33, 'user_1730707779169');
INSERT INTO public.users VALUES (34, 'user_1730707779168');
INSERT INTO public.users VALUES (35, 'user_1730707823816');
INSERT INTO public.users VALUES (36, 'user_1730707823815');
INSERT INTO public.users VALUES (37, 'user_1730707846881');
INSERT INTO public.users VALUES (38, 'user_1730707846880');
INSERT INTO public.users VALUES (39, 'user_1730707938926');
INSERT INTO public.users VALUES (40, 'user_1730707938925');
INSERT INTO public.users VALUES (41, 'user_1730707942644');
INSERT INTO public.users VALUES (42, 'user_1730707942643');
INSERT INTO public.users VALUES (43, 'user_1730707945584');
INSERT INTO public.users VALUES (44, 'user_1730707945583');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 161, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 44, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

