--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

INSERT INTO public.games VALUES (1, 15, 1);
INSERT INTO public.games VALUES (2, 15, 1);
INSERT INTO public.games VALUES (3, 16, 1);
INSERT INTO public.games VALUES (4, 16, 1);
INSERT INTO public.games VALUES (5, 15, 1);
INSERT INTO public.games VALUES (6, 15, 1);
INSERT INTO public.games VALUES (7, 15, 1);
INSERT INTO public.games VALUES (8, 8, 1);
INSERT INTO public.games VALUES (9, 8, 1);
INSERT INTO public.games VALUES (10, 17, 1);
INSERT INTO public.games VALUES (11, 17, 1);
INSERT INTO public.games VALUES (12, 18, 1);
INSERT INTO public.games VALUES (13, 18, 1);
INSERT INTO public.games VALUES (14, 17, 1);
INSERT INTO public.games VALUES (15, 17, 1);
INSERT INTO public.games VALUES (16, 17, 1);
INSERT INTO public.games VALUES (17, 8, 1);
INSERT INTO public.games VALUES (18, 19, 1);
INSERT INTO public.games VALUES (19, 19, 1);
INSERT INTO public.games VALUES (20, 20, 1);
INSERT INTO public.games VALUES (21, 20, 1);
INSERT INTO public.games VALUES (22, 19, 1);
INSERT INTO public.games VALUES (23, 19, 1);
INSERT INTO public.games VALUES (24, 19, 1);
INSERT INTO public.games VALUES (25, 21, 1);
INSERT INTO public.games VALUES (26, 21, 1);
INSERT INTO public.games VALUES (27, 22, 1);
INSERT INTO public.games VALUES (28, 22, 1);
INSERT INTO public.games VALUES (29, 21, 1);
INSERT INTO public.games VALUES (30, 21, 1);
INSERT INTO public.games VALUES (31, 21, 1);
INSERT INTO public.games VALUES (32, 24, 1);
INSERT INTO public.games VALUES (33, 24, 1);
INSERT INTO public.games VALUES (34, 25, 1);
INSERT INTO public.games VALUES (35, 25, 1);
INSERT INTO public.games VALUES (36, 24, 1);
INSERT INTO public.games VALUES (37, 24, 1);
INSERT INTO public.games VALUES (38, 24, 1);
INSERT INTO public.games VALUES (39, 8, 1);
INSERT INTO public.games VALUES (40, 26, 1);
INSERT INTO public.games VALUES (41, 26, 1);
INSERT INTO public.games VALUES (42, 27, 1);
INSERT INTO public.games VALUES (43, 26, 1);
INSERT INTO public.games VALUES (44, 30, 1);
INSERT INTO public.games VALUES (45, 30, 1);
INSERT INTO public.games VALUES (46, 32, 103);
INSERT INTO public.games VALUES (47, 32, 436);
INSERT INTO public.games VALUES (48, 33, 679);
INSERT INTO public.games VALUES (49, 33, 156);
INSERT INTO public.games VALUES (50, 32, 563);
INSERT INTO public.games VALUES (51, 32, 481);
INSERT INTO public.games VALUES (52, 32, 938);
INSERT INTO public.games VALUES (53, 23, 21);
INSERT INTO public.games VALUES (54, 34, 9);
INSERT INTO public.games VALUES (55, 34, 11);
INSERT INTO public.games VALUES (56, 35, 248);
INSERT INTO public.games VALUES (57, 35, 612);
INSERT INTO public.games VALUES (58, 36, 394);
INSERT INTO public.games VALUES (59, 36, 791);
INSERT INTO public.games VALUES (60, 35, 740);
INSERT INTO public.games VALUES (61, 35, 870);
INSERT INTO public.games VALUES (62, 35, 654);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'john');
INSERT INTO public.users VALUES (2, 'mike');
INSERT INTO public.users VALUES (3, 'user_1687852755488');
INSERT INTO public.users VALUES (4, 'user_1687852755487');
INSERT INTO public.users VALUES (5, 'user_1687854804793');
INSERT INTO public.users VALUES (6, 'user_1687854804792');
INSERT INTO public.users VALUES (7, 'Anna');
INSERT INTO public.users VALUES (8, 'anna');
INSERT INTO public.users VALUES (9, 'user_1687855157807');
INSERT INTO public.users VALUES (10, 'user_1687855157806');
INSERT INTO public.users VALUES (11, 'user_1687856753771');
INSERT INTO public.users VALUES (12, 'user_1687856753770');
INSERT INTO public.users VALUES (13, 'user_1687857076627');
INSERT INTO public.users VALUES (14, 'user_1687857076626');
INSERT INTO public.users VALUES (15, 'user_1687857557332');
INSERT INTO public.users VALUES (16, 'user_1687857557331');
INSERT INTO public.users VALUES (17, 'user_1687857729229');
INSERT INTO public.users VALUES (18, 'user_1687857729228');
INSERT INTO public.users VALUES (19, 'user_1687857953570');
INSERT INTO public.users VALUES (20, 'user_1687857953569');
INSERT INTO public.users VALUES (21, 'user_1687858716617');
INSERT INTO public.users VALUES (22, 'user_1687858716616');
INSERT INTO public.users VALUES (23, 'ANNA');
INSERT INTO public.users VALUES (24, 'user_1687859362279');
INSERT INTO public.users VALUES (25, 'user_1687859362278');
INSERT INTO public.users VALUES (26, 'user_1687859504249');
INSERT INTO public.users VALUES (27, 'user_1687859504248');
INSERT INTO public.users VALUES (28, 'user_1687860391395');
INSERT INTO public.users VALUES (29, 'user_1687860391394');
INSERT INTO public.users VALUES (30, 'user_1687861089469');
INSERT INTO public.users VALUES (31, 'user_1687861089468');
INSERT INTO public.users VALUES (32, 'user_1687861701889');
INSERT INTO public.users VALUES (33, 'user_1687861701888');
INSERT INTO public.users VALUES (34, 'MIKE');
INSERT INTO public.users VALUES (35, 'user_1687861887010');
INSERT INTO public.users VALUES (36, 'user_1687861887009');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 62, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 36, true);


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

