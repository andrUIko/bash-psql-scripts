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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    age_in_millions_years integer,
    age_distance_from_earth integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_universe_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_universe_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    planet_id integer,
    is_spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    star_id integer,
    has_life boolean,
    weight numeric(4,1),
    distance_from_star integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    galaxy_id integer,
    planets_count integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_universe_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 'Our homeland', NULL, NULL);
INSERT INTO public.galaxy VALUES (22, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (23, 'b', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (24, 'c', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (25, 'd', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (26, 'e', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (27, 'f', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (28, 'g', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (29, 'h', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (30, 'i', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (31, 'j', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (32, 'k', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (33, 'l', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Aliens...', 1, NULL);
INSERT INTO public.moon VALUES (2, 'a', NULL, 1, NULL);
INSERT INTO public.moon VALUES (3, 'b', NULL, 1, NULL);
INSERT INTO public.moon VALUES (4, 'c', NULL, 1, NULL);
INSERT INTO public.moon VALUES (5, 'd', NULL, 1, NULL);
INSERT INTO public.moon VALUES (6, 'e', NULL, 1, NULL);
INSERT INTO public.moon VALUES (7, 'f', NULL, 1, NULL);
INSERT INTO public.moon VALUES (8, 'g', NULL, 1, NULL);
INSERT INTO public.moon VALUES (9, 'h', NULL, 1, NULL);
INSERT INTO public.moon VALUES (10, 'i', NULL, 1, NULL);
INSERT INTO public.moon VALUES (11, 'j', NULL, 1, NULL);
INSERT INTO public.moon VALUES (12, 'k', NULL, 1, NULL);
INSERT INTO public.moon VALUES (13, 'l', NULL, 1, NULL);
INSERT INTO public.moon VALUES (14, 'm', NULL, 1, NULL);
INSERT INTO public.moon VALUES (15, 'n', NULL, 1, NULL);
INSERT INTO public.moon VALUES (16, 'o', NULL, 1, NULL);
INSERT INTO public.moon VALUES (17, 'p', NULL, 1, NULL);
INSERT INTO public.moon VALUES (18, 'q', NULL, 1, NULL);
INSERT INTO public.moon VALUES (19, 'r', NULL, 1, NULL);
INSERT INTO public.moon VALUES (20, 's', NULL, 1, NULL);
INSERT INTO public.moon VALUES (21, 't', NULL, 1, NULL);
INSERT INTO public.moon VALUES (22, 'u', NULL, 1, NULL);
INSERT INTO public.moon VALUES (23, 'v', NULL, 1, NULL);
INSERT INTO public.moon VALUES (24, 'w', NULL, 1, NULL);
INSERT INTO public.moon VALUES (25, 'x', NULL, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Humans...', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'a', NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'b', NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'c', NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'd', NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'e', NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'f', NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'g', NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'h', NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'i', NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'j', NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'k', NULL, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'l', NULL, 1, NULL, NULL, NULL);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'gas', NULL);
INSERT INTO public.planet_types VALUES (2, 'solid', NULL);
INSERT INTO public.planet_types VALUES (3, 'liquid', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Shining brightly', 1, NULL);
INSERT INTO public.star VALUES (4, 'a', NULL, 1, NULL);
INSERT INTO public.star VALUES (5, 'b', NULL, 1, NULL);
INSERT INTO public.star VALUES (6, 'c', NULL, 1, NULL);
INSERT INTO public.star VALUES (7, 'd', NULL, 1, NULL);
INSERT INTO public.star VALUES (8, 'e', NULL, 1, NULL);
INSERT INTO public.star VALUES (9, 'f', NULL, 1, NULL);
INSERT INTO public.star VALUES (10, 'g', NULL, 1, NULL);
INSERT INTO public.star VALUES (11, 'h', NULL, 1, NULL);
INSERT INTO public.star VALUES (12, 'i', NULL, 1, NULL);
INSERT INTO public.star VALUES (13, 'j', NULL, 1, NULL);
INSERT INTO public.star VALUES (14, 'k', NULL, 1, NULL);
INSERT INTO public.star VALUES (15, 'l', NULL, 1, NULL);
INSERT INTO public.star VALUES (16, 'm', NULL, 1, NULL);
INSERT INTO public.star VALUES (17, 'n', NULL, 1, NULL);
INSERT INTO public.star VALUES (18, 'o', NULL, 1, NULL);
INSERT INTO public.star VALUES (19, 'p', NULL, 1, NULL);
INSERT INTO public.star VALUES (20, 'q', NULL, 1, NULL);
INSERT INTO public.star VALUES (21, 'r', NULL, 1, NULL);
INSERT INTO public.star VALUES (22, 's', NULL, 1, NULL);
INSERT INTO public.star VALUES (23, 't', NULL, 1, NULL);
INSERT INTO public.star VALUES (24, 'u', NULL, 1, NULL);
INSERT INTO public.star VALUES (25, 'v', NULL, 1, NULL);
INSERT INTO public.star VALUES (26, 'w', NULL, 1, NULL);
INSERT INTO public.star VALUES (27, 'x', NULL, 1, NULL);


--
-- Name: galaxy_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_universe_id_seq', 33, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 27, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


