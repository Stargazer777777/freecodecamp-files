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
    name character varying(20),
    int1 integer NOT NULL,
    int2 integer NOT NULL,
    galaxy_id integer NOT NULL,
    uni1 integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20),
    bool1 boolean NOT NULL,
    bool2 boolean NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    uni1 integer
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
    name character varying(20),
    text1 text NOT NULL,
    planet_id integer NOT NULL,
    star_id integer,
    uni1 integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20),
    num1 numeric NOT NULL,
    num2 numeric NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    uni1 integer
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
-- Name: temp; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.temp (
    no1 integer NOT NULL,
    no2 integer NOT NULL,
    uni1 integer,
    name character varying(30),
    temp_id integer NOT NULL
);


ALTER TABLE public.temp OWNER TO freecodecamp;

--
-- Name: temp_temp_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.temp_temp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_temp_id_seq OWNER TO freecodecamp;

--
-- Name: temp_temp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.temp_temp_id_seq OWNED BY public.temp.temp_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: temp temp_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp ALTER COLUMN temp_id SET DEFAULT nextval('public.temp_temp_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (NULL, 1, 1, 1, NULL);
INSERT INTO public.galaxy VALUES (NULL, 1, 1, 2, NULL);
INSERT INTO public.galaxy VALUES (NULL, 1, 1, 3, NULL);
INSERT INTO public.galaxy VALUES (NULL, 1, 1, 4, NULL);
INSERT INTO public.galaxy VALUES (NULL, 1, 1, 5, NULL);
INSERT INTO public.galaxy VALUES (NULL, 1, 1, 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (NULL, true, true, 1, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 2, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 3, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 4, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 5, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 6, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 7, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 8, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 9, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 10, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 11, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 12, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 13, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 14, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 15, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 16, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 17, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 18, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 19, 1, NULL);
INSERT INTO public.moon VALUES (NULL, true, true, 20, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (NULL, '1', 1, 1, NULL);
INSERT INTO public.planet VALUES (NULL, '1', 2, 1, NULL);
INSERT INTO public.planet VALUES (NULL, '1', 3, 1, NULL);
INSERT INTO public.planet VALUES (NULL, '1', 4, 1, NULL);
INSERT INTO public.planet VALUES (NULL, '1', 5, 1, NULL);
INSERT INTO public.planet VALUES (NULL, '1', 6, 1, NULL);
INSERT INTO public.planet VALUES (NULL, '1', 7, 1, NULL);
INSERT INTO public.planet VALUES (NULL, '1', 8, 1, NULL);
INSERT INTO public.planet VALUES (NULL, '1', 9, 1, NULL);
INSERT INTO public.planet VALUES (NULL, '1', 10, 1, NULL);
INSERT INTO public.planet VALUES (NULL, '1', 11, 1, NULL);
INSERT INTO public.planet VALUES (NULL, '1', 12, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (NULL, 1, 1, 1, 1, NULL);
INSERT INTO public.star VALUES (NULL, 1, 1, 2, 1, NULL);
INSERT INTO public.star VALUES (NULL, 1, 1, 3, 1, NULL);
INSERT INTO public.star VALUES (NULL, 1, 1, 4, 1, NULL);
INSERT INTO public.star VALUES (NULL, 1, 1, 5, 1, NULL);
INSERT INTO public.star VALUES (NULL, 1, 1, 6, 1, NULL);


--
-- Data for Name: temp; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.temp VALUES (1, 1, NULL, NULL, 1);
INSERT INTO public.temp VALUES (1, 1, NULL, NULL, 2);
INSERT INTO public.temp VALUES (1, 1, NULL, NULL, 3);
INSERT INTO public.temp VALUES (1, 1, NULL, NULL, 4);
INSERT INTO public.temp VALUES (1, 1, NULL, NULL, 5);
INSERT INTO public.temp VALUES (1, 1, NULL, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: temp_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.temp_temp_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_uni1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_uni1_key UNIQUE (uni1);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_uni1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_uni1_key UNIQUE (uni1);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_uni1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_uni1_key UNIQUE (uni1);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_uni1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_uni1_key UNIQUE (uni1);


--
-- Name: temp temp_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp
    ADD CONSTRAINT temp_pkey PRIMARY KEY (temp_id);


--
-- Name: temp temp_uni1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp
    ADD CONSTRAINT temp_uni1_key UNIQUE (uni1);


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

