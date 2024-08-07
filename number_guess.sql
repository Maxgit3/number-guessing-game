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
-- Name: player; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.player (
    username character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.player OWNER TO freecodecamp;

--
-- Data for Name: player; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.player VALUES ('user_1723001475455', 1, 364);
INSERT INTO public.player VALUES ('user_1723001475456', 4, 42);
INSERT INTO public.player VALUES ('user_1723004502206', 1, 946);
INSERT INTO public.player VALUES ('user_1723001660541', 1, 722);
INSERT INTO public.player VALUES ('user_1723001660542', 4, 127);
INSERT INTO public.player VALUES ('user_1723004502207', 4, 1);
INSERT INTO public.player VALUES ('Bob', 3, 1);
INSERT INTO public.player VALUES ('user_1723002170501', 1, 696);
INSERT INTO public.player VALUES ('user_1723002170502', 4, 69);
INSERT INTO public.player VALUES ('user_1723006472709', 1, 612);
INSERT INTO public.player VALUES ('user_1723002271318', 1, 580);
INSERT INTO public.player VALUES ('user_1723002271319', 4, 343);
INSERT INTO public.player VALUES ('user_1723002541105', 1, 205);
INSERT INTO public.player VALUES ('user_1723006472710', 4, 1);
INSERT INTO public.player VALUES ('Tom', 0, 1000);
INSERT INTO public.player VALUES ('user_1723002541106', 4, 124);
INSERT INTO public.player VALUES ('John', 0, 1000);
INSERT INTO public.player VALUES ('user_1723002604381', 1, 885);
INSERT INTO public.player VALUES ('user_1723002604382', 4, 61);
INSERT INTO public.player VALUES ('user_1723002637654', 1, 144);
INSERT INTO public.player VALUES ('user_1723002637655', 4, 144);
INSERT INTO public.player VALUES ('user_1723006954691', 2, 762);
INSERT INTO public.player VALUES ('user_1723002668074', 1, 712);
INSERT INTO public.player VALUES ('user_1723002668075', 4, 239);
INSERT INTO public.player VALUES ('user_1723002723604', 1, 890);
INSERT INTO public.player VALUES ('user_1723006954692', 5, 67);
INSERT INTO public.player VALUES ('user_1723002723605', 4, 190);
INSERT INTO public.player VALUES ('user_1723002746701', 1, 192);
INSERT INTO public.player VALUES ('user_1723007008999', 1, 595);
INSERT INTO public.player VALUES ('user_1723002746702', 4, 431);
INSERT INTO public.player VALUES ('user_1723003692719', 1, 875);
INSERT INTO public.player VALUES ('user_1723003692720', 4, 29);
INSERT INTO public.player VALUES ('user_1723007009000', 4, 1);
INSERT INTO public.player VALUES ('user_1723007050461', 1, 40);
INSERT INTO public.player VALUES ('user_1723007050462', 4, 1);
INSERT INTO public.player VALUES ('user_1723007171741', 1, 480);
INSERT INTO public.player VALUES ('user_1723007171742', 4, 585);
INSERT INTO public.player VALUES ('Ted', 0, 1000);
INSERT INTO public.player VALUES ('Tony', 1, 4);
INSERT INTO public.player VALUES ('user_1723007475185', 2, 254);
INSERT INTO public.player VALUES ('user_1723007475186', 5, 1);
INSERT INTO public.player VALUES ('user_1723007545431', 2, 65);
INSERT INTO public.player VALUES ('user_1723007545432', 5, 1);


--
-- PostgreSQL database dump complete
--

