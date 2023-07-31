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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (63, 2018, 'Final', 435, 436, 4, 2);
INSERT INTO public.games VALUES (64, 2018, 'Third Place', 437, 438, 2, 0);
INSERT INTO public.games VALUES (65, 2018, 'Semi-Final', 436, 438, 2, 1);
INSERT INTO public.games VALUES (66, 2018, 'Semi-Final', 435, 437, 1, 0);
INSERT INTO public.games VALUES (67, 2018, 'Quarter-Final', 436, 439, 3, 2);
INSERT INTO public.games VALUES (68, 2018, 'Quarter-Final', 438, 440, 2, 0);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 437, 441, 2, 1);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 435, 442, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Eighth-Final', 438, 443, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Eighth-Final', 440, 444, 1, 0);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 437, 445, 3, 2);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 441, 446, 2, 0);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 436, 447, 2, 1);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 439, 448, 2, 1);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 442, 449, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 435, 450, 4, 3);
INSERT INTO public.games VALUES (79, 2014, 'Final', 451, 450, 1, 0);
INSERT INTO public.games VALUES (80, 2014, 'Third Place', 452, 441, 3, 0);
INSERT INTO public.games VALUES (81, 2014, 'Semi-Final', 450, 452, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Semi-Final', 451, 441, 7, 1);
INSERT INTO public.games VALUES (83, 2014, 'Quarter-Final', 452, 453, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Quarter-Final', 450, 437, 1, 0);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 441, 443, 2, 1);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 451, 435, 1, 0);
INSERT INTO public.games VALUES (87, 2014, 'Eighth-Final', 441, 454, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Eighth-Final', 443, 442, 2, 0);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 435, 455, 2, 0);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 451, 456, 2, 1);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 452, 446, 2, 1);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 453, 457, 2, 1);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 450, 444, 1, 0);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 437, 458, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (435, 'France');
INSERT INTO public.teams VALUES (436, 'Croatia');
INSERT INTO public.teams VALUES (437, 'Belgium');
INSERT INTO public.teams VALUES (438, 'England');
INSERT INTO public.teams VALUES (439, 'Russia');
INSERT INTO public.teams VALUES (440, 'Sweden');
INSERT INTO public.teams VALUES (441, 'Brazil');
INSERT INTO public.teams VALUES (442, 'Uruguay');
INSERT INTO public.teams VALUES (443, 'Colombia');
INSERT INTO public.teams VALUES (444, 'Switzerland');
INSERT INTO public.teams VALUES (445, 'Japan');
INSERT INTO public.teams VALUES (446, 'Mexico');
INSERT INTO public.teams VALUES (447, 'Denmark');
INSERT INTO public.teams VALUES (448, 'Spain');
INSERT INTO public.teams VALUES (449, 'Portugal');
INSERT INTO public.teams VALUES (450, 'Argentina');
INSERT INTO public.teams VALUES (451, 'Germany');
INSERT INTO public.teams VALUES (452, 'Netherlands');
INSERT INTO public.teams VALUES (453, 'Costa Rica');
INSERT INTO public.teams VALUES (454, 'Chile');
INSERT INTO public.teams VALUES (455, 'Nigeria');
INSERT INTO public.teams VALUES (456, 'Algeria');
INSERT INTO public.teams VALUES (457, 'Greece');
INSERT INTO public.teams VALUES (458, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 94, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 458, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

