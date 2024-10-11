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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mass bigint
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(30),
    mass bigint,
    diameter numeric(12,4),
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    diameter numeric(10,2),
    orbital_period numeric(6,2)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    has_life boolean,
    distance_from_star bigint
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    mass integer,
    radius integer,
    is_dead boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', NULL);
INSERT INTO public.black_hole VALUES (2, 'Cygnus X-1', NULL);
INSERT INTO public.black_hole VALUES (3, 'V404 Cygni', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 300000000, 105700.0000, 'The galaxy that contains our Solar System, a barred spiral galaxy.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2500000000, 28000.0000, 'The nearest spiral galaxy to the Milky Way, part of the Local Group.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 500000000, 60000.0000, 'A smaller spiral galaxy in the Local Group, near Andromeda.');
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'Irregular', 100000000, 800.0000, 'A satellite galaxy of the Milky Way, one of the Magellanic Clouds.');
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'Irregular', 70000000, 7000.0000, 'A smaller satellite galaxy of the Milky Way, also part of the Magellanic Clouds.');
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'Spiral', 800000000, 49000.0000, 'A spiral galaxy that resembles a sombrero due to its bright core and dust ring.');
INSERT INTO public.galaxy VALUES (7, 'Whirlpool Galaxy', 'Spiral', 800000000, 76000.0000, 'A face-on spiral galaxy interacting with a smaller companion galaxy.');
INSERT INTO public.galaxy VALUES (8, 'Centaurus A', 'Lenticular', 1000000000, 60000.0000, 'A peculiar lenticular galaxy with a supermassive black hole at its center.');
INSERT INTO public.galaxy VALUES (9, 'Messier 87', 'Elliptical', 3000000000, 18000.0000, 'A giant elliptical galaxy known for its supermassive black hole and powerful jets.');
INSERT INTO public.galaxy VALUES (10, 'Pinwheel Galaxy', 'Spiral', 180000000, 50000.0000, 'A large spiral galaxy in the constellation Ursa Major, known for its symmetrical arms.');
INSERT INTO public.galaxy VALUES (11, 'NGC 100', 'Barred Spiral', 1000000000, 110000.0000, 'A barred spiral galaxy with a well-defined bar and central region.');
INSERT INTO public.galaxy VALUES (12, 'Cartwheel Galaxy', 'Ring', 900000000, 30000.0000, 'A ring galaxy formed by a collision, creating a bright ring of star formation.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 4, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 4, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 6, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Rhea', 6, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Triton', 9, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Charon', 7, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Mimas', 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Enceladus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Hyperion', 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Miranda', 9, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Umbriel', 9, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Oberon', 9, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Titania', 9, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Iapetus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Dione', 6, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', 1, false, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', 1, false, NULL);
INSERT INTO public.planet VALUES (4, 'Jupiter', 1, false, NULL);
INSERT INTO public.planet VALUES (5, 'Saturn', 1, false, NULL);
INSERT INTO public.planet VALUES (6, 'Proxima b', 2, true, NULL);
INSERT INTO public.planet VALUES (7, 'Kepler-66f', 4, true, NULL);
INSERT INTO public.planet VALUES (8, 'Gliese 581g', 2, true, NULL);
INSERT INTO public.planet VALUES (9, 'HD 89458 b', 5, false, NULL);
INSERT INTO public.planet VALUES (10, '51 Pegasi b', 6, false, NULL);
INSERT INTO public.planet VALUES (11, 'Kepler-10b', 7, false, NULL);
INSERT INTO public.planet VALUES (12, 'LHS 18 b', 9, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 789000, 696340, false);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 2, 111000, 9900, false);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, 5850000, 76400, false);
INSERT INTO public.star VALUES (4, 'Rigel', 3, 9000000, 78500, false);
INSERT INTO public.star VALUES (5, 'Sirius A', 1, 4011000, 169640, false);
INSERT INTO public.star VALUES (6, 'Vega', 1, 870000, 117500, false);
INSERT INTO public.star VALUES (7, 'Antares', 1, 1800000, 88300, false);
INSERT INTO public.star VALUES (8, 'Pollux', 1, 810000, 88000, false);
INSERT INTO public.star VALUES (9, 'Alpha Centauri A', 2, 1115000, 696342, false);
INSERT INTO public.star VALUES (10, 'UY Scuti', 1, 25000000, 508000, false);
INSERT INTO public.star VALUES (11, 'Spica', 1, 1080000, 73500, false);
INSERT INTO public.star VALUES (12, 'Wolf 359', 1, 100000, 7000, true);


--
-- Name: black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_id_seq', 1, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, true);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


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
-- Name: black_hole unique_black_hole_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT unique_black_hole_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

