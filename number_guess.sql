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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 405, 1);
INSERT INTO public.games VALUES (2, 814, 1);
INSERT INTO public.games VALUES (3, 92, 2);
INSERT INTO public.games VALUES (4, 394, 2);
INSERT INTO public.games VALUES (5, 586, 1);
INSERT INTO public.games VALUES (6, 716, 1);
INSERT INTO public.games VALUES (7, 479, 1);
INSERT INTO public.games VALUES (8, 922, 3);
INSERT INTO public.games VALUES (9, 759, 3);
INSERT INTO public.games VALUES (10, 168, 4);
INSERT INTO public.games VALUES (11, 383, 4);
INSERT INTO public.games VALUES (12, 378, 3);
INSERT INTO public.games VALUES (13, 343, 3);
INSERT INTO public.games VALUES (14, 365, 3);
INSERT INTO public.games VALUES (15, 748, 5);
INSERT INTO public.games VALUES (16, 479, 5);
INSERT INTO public.games VALUES (17, 640, 6);
INSERT INTO public.games VALUES (18, 246, 6);
INSERT INTO public.games VALUES (19, 120, 5);
INSERT INTO public.games VALUES (20, 939, 5);
INSERT INTO public.games VALUES (21, 161, 5);
INSERT INTO public.games VALUES (22, 974, 7);
INSERT INTO public.games VALUES (23, 21, 7);
INSERT INTO public.games VALUES (24, 443, 8);
INSERT INTO public.games VALUES (25, 756, 8);
INSERT INTO public.games VALUES (26, 409, 7);
INSERT INTO public.games VALUES (27, 616, 7);
INSERT INTO public.games VALUES (28, 330, 7);
INSERT INTO public.games VALUES (29, 457, 9);
INSERT INTO public.games VALUES (30, 247, 9);
INSERT INTO public.games VALUES (31, 926, 10);
INSERT INTO public.games VALUES (32, 835, 10);
INSERT INTO public.games VALUES (33, 458, 9);
INSERT INTO public.games VALUES (34, 25, 9);
INSERT INTO public.games VALUES (35, 529, 9);
INSERT INTO public.games VALUES (36, 62, 11);
INSERT INTO public.games VALUES (37, 5, 11);
INSERT INTO public.games VALUES (38, 199, 12);
INSERT INTO public.games VALUES (39, 594, 12);
INSERT INTO public.games VALUES (40, 935, 11);
INSERT INTO public.games VALUES (41, 745, 11);
INSERT INTO public.games VALUES (42, 994, 11);
INSERT INTO public.games VALUES (43, 632, 13);
INSERT INTO public.games VALUES (44, 770, 13);
INSERT INTO public.games VALUES (45, 850, 14);
INSERT INTO public.games VALUES (46, 889, 14);
INSERT INTO public.games VALUES (47, 249, 13);
INSERT INTO public.games VALUES (48, 485, 13);
INSERT INTO public.games VALUES (49, 406, 13);
INSERT INTO public.games VALUES (50, 834, 15);
INSERT INTO public.games VALUES (51, 23, 15);
INSERT INTO public.games VALUES (52, 426, 16);
INSERT INTO public.games VALUES (53, 154, 16);
INSERT INTO public.games VALUES (54, 909, 15);
INSERT INTO public.games VALUES (55, 34, 15);
INSERT INTO public.games VALUES (56, 831, 15);
INSERT INTO public.games VALUES (57, 676, 17);
INSERT INTO public.games VALUES (58, 751, 17);
INSERT INTO public.games VALUES (59, 445, 18);
INSERT INTO public.games VALUES (60, 131, 18);
INSERT INTO public.games VALUES (61, 671, 17);
INSERT INTO public.games VALUES (62, 415, 17);
INSERT INTO public.games VALUES (63, 162, 17);
INSERT INTO public.games VALUES (64, 73, 19);
INSERT INTO public.games VALUES (65, 519, 19);
INSERT INTO public.games VALUES (66, 263, 20);
INSERT INTO public.games VALUES (67, 633, 20);
INSERT INTO public.games VALUES (68, 141, 19);
INSERT INTO public.games VALUES (69, 523, 19);
INSERT INTO public.games VALUES (70, 639, 19);
INSERT INTO public.games VALUES (71, 764, 21);
INSERT INTO public.games VALUES (72, 361, 21);
INSERT INTO public.games VALUES (73, 405, 22);
INSERT INTO public.games VALUES (74, 37, 22);
INSERT INTO public.games VALUES (75, 264, 21);
INSERT INTO public.games VALUES (76, 14, 21);
INSERT INTO public.games VALUES (77, 896, 21);
INSERT INTO public.games VALUES (78, 181, 23);
INSERT INTO public.games VALUES (79, 827, 23);
INSERT INTO public.games VALUES (80, 466, 24);
INSERT INTO public.games VALUES (81, 578, 24);
INSERT INTO public.games VALUES (82, 207, 23);
INSERT INTO public.games VALUES (83, 822, 23);
INSERT INTO public.games VALUES (84, 763, 23);
INSERT INTO public.games VALUES (85, 776, 25);
INSERT INTO public.games VALUES (86, 941, 25);
INSERT INTO public.games VALUES (87, 487, 26);
INSERT INTO public.games VALUES (88, 845, 26);
INSERT INTO public.games VALUES (89, 163, 25);
INSERT INTO public.games VALUES (90, 629, 25);
INSERT INTO public.games VALUES (91, 92, 25);
INSERT INTO public.games VALUES (92, 53, 27);
INSERT INTO public.games VALUES (93, 492, 27);
INSERT INTO public.games VALUES (94, 153, 28);
INSERT INTO public.games VALUES (95, 795, 28);
INSERT INTO public.games VALUES (96, 761, 27);
INSERT INTO public.games VALUES (97, 263, 27);
INSERT INTO public.games VALUES (98, 516, 27);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1730896330762');
INSERT INTO public.users VALUES (2, 'user_1730896330761');
INSERT INTO public.users VALUES (3, 'user_1730896453611');
INSERT INTO public.users VALUES (4, 'user_1730896453610');
INSERT INTO public.users VALUES (5, 'user_1730896461574');
INSERT INTO public.users VALUES (6, 'user_1730896461573');
INSERT INTO public.users VALUES (7, 'user_1730896528259');
INSERT INTO public.users VALUES (8, 'user_1730896528258');
INSERT INTO public.users VALUES (9, 'user_1730896570753');
INSERT INTO public.users VALUES (10, 'user_1730896570752');
INSERT INTO public.users VALUES (11, 'user_1730896667026');
INSERT INTO public.users VALUES (12, 'user_1730896667025');
INSERT INTO public.users VALUES (13, 'user_1730896789181');
INSERT INTO public.users VALUES (14, 'user_1730896789180');
INSERT INTO public.users VALUES (15, 'user_1730896820215');
INSERT INTO public.users VALUES (16, 'user_1730896820214');
INSERT INTO public.users VALUES (17, 'user_1730896922420');
INSERT INTO public.users VALUES (18, 'user_1730896922419');
INSERT INTO public.users VALUES (19, 'user_1730896946973');
INSERT INTO public.users VALUES (20, 'user_1730896946972');
INSERT INTO public.users VALUES (21, 'user_1730896985680');
INSERT INTO public.users VALUES (22, 'user_1730896985679');
INSERT INTO public.users VALUES (23, 'user_1730897065081');
INSERT INTO public.users VALUES (24, 'user_1730897065080');
INSERT INTO public.users VALUES (25, 'user_1730897203950');
INSERT INTO public.users VALUES (26, 'user_1730897203949');
INSERT INTO public.users VALUES (27, 'user_1730897217360');
INSERT INTO public.users VALUES (28, 'user_1730897217358');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 98, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 28, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

