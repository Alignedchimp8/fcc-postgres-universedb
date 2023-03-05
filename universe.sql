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
    velocidad integer,
    descripcion text,
    name character varying(255) NOT NULL,
    rotacion integer DEFAULT 10000 NOT NULL
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
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    habitable boolean NOT NULL,
    planet_id integer NOT NULL,
    codigo_lunar character varying(255) NOT NULL
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
    name character varying(255),
    poblacion numeric,
    horario boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL
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
-- Name: rovers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rovers (
    rovers_id integer NOT NULL,
    poblacion integer,
    numero_serie integer NOT NULL,
    manual boolean DEFAULT false NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.rovers OWNER TO freecodecamp;

--
-- Name: rovers_rovers_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rovers_rovers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rovers_rovers_id_seq OWNER TO freecodecamp;

--
-- Name: rovers_rovers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rovers_rovers_id_seq OWNED BY public.rovers.rovers_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    radio integer NOT NULL,
    color character varying(255) NOT NULL,
    galaxy_id integer,
    name character varying(255) NOT NULL
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
-- Name: rovers rovers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rovers ALTER COLUMN rovers_id SET DEFAULT nextval('public.rovers_rovers_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'Andromeda', 10000);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'Andromeda A', 10000);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'Andromeda B', 10000);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'Andromeda C', 10000);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'Andromeda D', 10000);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'Andromeda E', 10000);
INSERT INTO public.galaxy VALUES (7, NULL, NULL, 'Andromeda F', 10000);
INSERT INTO public.galaxy VALUES (8, NULL, NULL, 'Andromeda G', 10000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'LUNA1', true, 2, 'LUUNA1');
INSERT INTO public.moon VALUES (2, 'LUNA2', true, 3, 'LUUNA2');
INSERT INTO public.moon VALUES (3, 'LUNA4', true, 4, 'LUUNA4');
INSERT INTO public.moon VALUES (4, 'LUNA5', true, 5, 'LUUNA5');
INSERT INTO public.moon VALUES (5, 'LUNA6', true, 6, 'LUUNA6');
INSERT INTO public.moon VALUES (6, 'LUNA7', true, 7, 'LUUNA7');
INSERT INTO public.moon VALUES (7, 'LUNA8', true, 8, 'LUUNA8');
INSERT INTO public.moon VALUES (8, 'LUNA9', true, 9, 'LUUNA9');
INSERT INTO public.moon VALUES (9, 'LUNA10', true, 10, 'LUUNA10');
INSERT INTO public.moon VALUES (10, 'LUNA11', true, 10, 'LUUNA11');
INSERT INTO public.moon VALUES (11, 'LUNA12', true, 12, 'LUUNA12');
INSERT INTO public.moon VALUES (12, 'LUNA13', true, 13, 'LUUNA13');
INSERT INTO public.moon VALUES (16, 'LUNA16', true, 1, 'LUUNA16');
INSERT INTO public.moon VALUES (17, 'LUNA17', true, 1, 'LUUNA17');
INSERT INTO public.moon VALUES (18, 'LUNA18', true, 1, 'LUUNA18');
INSERT INTO public.moon VALUES (19, 'LUNA19', true, 1, 'LUUNA19');
INSERT INTO public.moon VALUES (20, 'LUNA20', true, 1, 'LUUNA20');
INSERT INTO public.moon VALUES (21, 'LUNA21', true, 1, 'LUUNA21');
INSERT INTO public.moon VALUES (22, 'LUNA22', true, 1, 'LUUNA22');
INSERT INTO public.moon VALUES (23, 'LUNA23', true, 1, 'LUUNA23');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'TIERRA', NULL, false, 1);
INSERT INTO public.planet VALUES (2, 'MARTE', NULL, false, 1);
INSERT INTO public.planet VALUES (3, 'JUPITER', NULL, false, 1);
INSERT INTO public.planet VALUES (4, 'VENUS', NULL, false, 1);
INSERT INTO public.planet VALUES (5, 'SATURNO', NULL, false, 1);
INSERT INTO public.planet VALUES (6, 'URANO', NULL, false, 1);
INSERT INTO public.planet VALUES (7, 'PLUTON', NULL, false, 1);
INSERT INTO public.planet VALUES (8, 'NEPTUNO', NULL, false, 1);
INSERT INTO public.planet VALUES (9, 'SB12', NULL, false, 1);
INSERT INTO public.planet VALUES (10, 'SBCZ2', NULL, false, 2);
INSERT INTO public.planet VALUES (11, 'ZFDCZ2', NULL, false, 2);
INSERT INTO public.planet VALUES (12, 'ZFDCZ2-12', NULL, false, 2);
INSERT INTO public.planet VALUES (13, 'TARTARUS', NULL, false, 3);


--
-- Data for Name: rovers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rovers VALUES (2, NULL, 1234, false, 'Curiosity');
INSERT INTO public.rovers VALUES (4, NULL, 123, false, 'Curiosity2');
INSERT INTO public.rovers VALUES (5, NULL, 1623, false, 'Curiosity3');
INSERT INTO public.rovers VALUES (6, NULL, 1673, false, 'Curiosity4');
INSERT INTO public.rovers VALUES (7, NULL, 1679, false, 'Curiosity5');
INSERT INTO public.rovers VALUES (8, NULL, 16700, false, 'Curiosity6');
INSERT INTO public.rovers VALUES (9, NULL, 16709, false, 'Curiosity7');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 123, 'cafe', 1, 'osa mayor');
INSERT INTO public.star VALUES (2, 123, 'cafe', 1, 'osa mayor A');
INSERT INTO public.star VALUES (3, 123, 'cafe', 1, 'osa mayor B');
INSERT INTO public.star VALUES (4, 123, 'cafe', 1, 'osa mayor C');
INSERT INTO public.star VALUES (5, 123, 'cafe', 1, 'osa mayor D');
INSERT INTO public.star VALUES (6, 123, 'roja', 2, 'osa mayor F');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: rovers_rovers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rovers_rovers_id_seq', 9, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_codigo_lunar_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_codigo_lunar_key UNIQUE (codigo_lunar);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet name_unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unique_planet UNIQUE (name);


--
-- Name: star name_unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique_star UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: rovers rovers_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rovers
    ADD CONSTRAINT rovers_name_key UNIQUE (name);


--
-- Name: rovers rovers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rovers
    ADD CONSTRAINT rovers_pkey PRIMARY KEY (rovers_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

