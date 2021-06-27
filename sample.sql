--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.22
-- Dumped by pg_dump version 9.6.22

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: doctor; Type: TABLE; Schema: public; Owner: refurb
--

CREATE TABLE public.doctor (
    id integer NOT NULL,
    lastname character varying(255) NOT NULL,
    firstname character varying(255) NOT NULL,
    street character varying(255) NOT NULL,
    postcode character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    phone character varying(255) NOT NULL
);


ALTER TABLE public.doctor OWNER TO refurb;

--
-- Name: doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: refurb
--

CREATE SEQUENCE public.doctor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doctor_id_seq OWNER TO refurb;

--
-- Name: postcode; Type: TABLE; Schema: public; Owner: refurb
--

CREATE TABLE public.postcode (
    id integer NOT NULL,
    postcode character varying(255) NOT NULL
);


ALTER TABLE public.postcode OWNER TO refurb;

--
-- Name: postcode_id_seq; Type: SEQUENCE; Schema: public; Owner: refurb
--

CREATE SEQUENCE public.postcode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.postcode_id_seq OWNER TO refurb;

--
-- Data for Name: doctor; Type: TABLE DATA; Schema: public; Owner: refurb
--

COPY public.doctor (id, lastname, firstname, street, postcode, city, phone) FROM stdin;
1	BARDCEL	Bruno	29 C, rue Lutun	59116	HOUPLINES	03 20 74 91 34
2	BLANCKAERT	Patrick	3, rue Jean Jaurès	59113	SECLIN	03 20 74 91 34
3	BOUCLY	Patrick	2, rue de Thionville	59000	LILLE	03 20 74 91 34
4	BOUNGUA	Hervé	152, rue de Douai	59000	LILLE	03 20 74 91 34
5	BURO	Robert	166, rue de Paris	59800	LILLE	03 20 74 91 34
6	CHOUARBI	Fadila	43, rue d'Angleterre	59000	LILLE	03 20 74 91 34
7	COCQUEËEL	Patrice	415, rue du Général De gauile	59110	LA MADELEINE	03 20 74 91 34
8	COUTER	Jean-Pierre	108 B rue de Tourcoing	59960	Neuville-en-Ferrain	03 20 74 91 34
9	CRUYPENNINCK	Hervé	99, rue Sadi Carnot	59320	HAUBOURDIN	03 20 74 91 34
10	COUSIN	Denis	77, rue du Caire	59100	ROUBAIX	03 20 74 91 34
11	DABLEMONT	Yves	96, rue du Collège	59100	ROUBAIX	03 20 74 91 34
12	DEBOISSY	Luc	Cité administrative 17e étage, Rue de Tournai BP 2012	59012	LILLE CEDEX	03 20 74 91 34
13	DEBOU	Didier	56 bis, boulevard du Général Leclerc	59071	ROUBAIX CEDEX	03 20 74 91 34
14	DELANNOY	Jean-Christophe	75, rue de Mouvaux	59200	TOURCOING	03 20 74 91 34
15	DELBERGHE	Dany	118, rue Decrême	58100	ROUBAIX	03 20 74 91 34
16	DENIS	Philippe	52, rue du Buisson	59800	LILLE	03 20 74 91 34
17	DESHORGUE	Jacques	25, Grand Place BP 60623	59100	ROUBAIX	03 20 74 91 34
18	DUDENKO	Pascal	1038 À Avenue de la République	59700	MARCQ EN BAROEUL	03 20 74 91 34
19	DYMNY	François	452 rue de Doual	59000	LILLE	03 20 74 91 34
20	FROMONT	Anne-Catherine	67, Boulevard Vauban	58000	LILLE	03 20 74 91 34
21	GHEERAERT	Pierre	4, allée des Blés d'Or	59115	LEERS	03 20 74 91 34
22	KELLY	Frédérique	27 rue Pierre de Roubaix	59100	ROUBAIX	03 20 74 91 34
38	HUYGHE	Dominique	104, Grande Rue	59138	PONT-SUR-SAMBRE	03 20 74 91 34
39	KARKOUTLY	Walid	146, route de Feignies	59600	MAUBEUGE	03 20 74 91 34
40	DEVAUX	Alain	1, place de la Mairie	59267	PROVILLE	03 20 74 91 34
41	DUCHANGE	Amédée	10, rue Nationale	59540	INCHY	03 20 74 91 34
42	DURIEZ	Marc-Henri	84, rue Sadi Carnot	59129	AVESNES LES AUBERT	03 20 74 91 34
45	DUCOURANT	Sébastien	293 rue de Flers	59600	DOUAI	03 20 74 91 34
48	ANDRES	Frédéric	1507, rue d'Armentières	59850	NIEPPE	03 20 74 91 34
49	CLAYES	Benoit	30 rue du musee	59270	BAILLEUL	03 20 74 91 34
50	DUBOIS	Bernard	62, rue de Bergues	59470	WORMHOUT	03 20 74 91 34
51	GOIDIN	Pierre	20, rue de l'Abbé Choquet	59140	DUNKERQUE	03 20 74 91 34
57	BAUMAN	Didier	6, rue Jean Jaurès	59410	ANZIN	03 20 74 91 34
58	DÉVOTTE	Franck	116, rue Henri Barbusse	59220	DENAIN	03 20 74 91 34
65	GALAND	Christophe	392 rue Jean Jaurès	59860	BRAY-SUR-L'ESCAUT	03 20 74 91 34
47	SOULARY	Jean-Claude	1, rue À et G Martel	50187	DECHY	03.20.74.91.34
46	SAIMI	Rachid	Résidence d'Artois, 519 Boulevard de la République	59500	DOUAI	03.20.74.91.34
44	ROESCH	Gliles	28, Avenue du Marechal Foch	59142	VILLERS-OUTREAUX	03.20.74.91.34
35	WAROQUIER	Alain Roger	110, rue du Général de Gaulle	59211	SANTES	03.20.74.91.34
34	VOGEL	Marc	1, rue des Déportés	59390	TOUFFLERS	03.20.74.91.34
33	VELUT	Xavier	271B04, rue Marceau	59420	MOUVAUX	03.20.74.91.34
32	VANDAMME	Pierre	27, rue des Déportés	59280	ARMENTIERES	03.20.74.91.34
37	WILLEMS	Thierry	115, ruë du Général Leclerc	59510	HEM	03.20.74.91.34
36	WELSCHBILLIG	Marc	4, rue d'Alembert	59000	LILLE	03.20.74.91.34
59	LEJAY	Dominique	200, rue Jean Jaurès	59690	VIEUX CONDE	03.20.74.91.34
56	VERNIEST	Laurent	Maison de santé, 20 avenue de la République	59114	STEENVOORDE	03.20.74.91.34
63	ROBILLARD	Dominique	392, rue Jean Jaurès	59860	BRAY-SUR-L'ESCAUT	03.20.74.91.34
62	MERCIER	Gilles	3, rue du Maréchal Soult	59970	FRESNES SUR ESCAUT	03.20.74.91.34
61	LISSE	Henri-Jean	406, rue du Grand Sart	59226	LECELLES	03.20.74.91.34
60	LENFANT	Jean-Pierre	5 rue Mathieu Dumoulin	59230	ST AMAND LES EAUX	03.20.74.91.34
55	RANDRIAMIHAMINA	Rij	26 rue de Bourgogne	59140	DUNKERQUE	03.20.74.91.34
54	PLATEVOET	Céline	58, rue Nationale	59270	METEREN	03.20.74.91.34
53	LEFEVER	Jean-Marie	12, rue David d'Angers	59140	DUNKERQUE	03.20.74.91.34
52	LALLEMAN	Philippe	15, chemin de ta Rose	59380	BIÈRNE	03.20.74.91.34
27	RELIQUET	Vincent	108 BIS, rue de Tourcoing	59960	NEUVILLE-EN-FERRAIN	03.20.74.91.34
26	MASSET	Cécile	67, Boulevard Vauban	56000	LILLE	03.20.74.91.34
25	LOUVET	Rémy	41, avenue du Docteur Albert Schweltzer	59510	HEM	03.20.74.91.34
24	LEROUX	Patrick	28, rue Maurice Bouchery	50480	LA BASSEE	03.20.74.91.34
31	TILMAN-ROBVEILLE	Fabienne	27, rue Roger Salengro	59112	ANNOEULLIN	03.20.74.91.34
30	SINGER	Philippe	293, rue du Saut du Loup	59170	MERIGNIES	03.20.74.91.34
29	SEGUIN	Bruno	27, rue Pierre de Roubaix	59100	ROUBAIX	03.20.74.91.34
28	ROLLET	Marc	15, rue de l'Apothicaire	59560	COMINES	03.20.74.91.34
64	RIDON	Marc	382, rue Jean Jaurès	59860	BRAY-SUR-L'ESCAUT	03.20.74.91.34
23	LECLERCQ	Fabien	3, rue Roger Salengro	59112	ANNOEULLIN	03.20.74.91.34
43	MAGDZIAREK	Alain	62, rue Gauthier	59400	CAMBRAI	03.20.74.91.34
66	CHOUKRI	Jamal	Maison Médicale, 47 Bd d’Andenne	02300	CHAUNY	03.23.56.25.40
67	BONNAUD	Xavier	Route de Liez	02800	BEAUTOR	03.23.56.38.45
68	TILLY	Jean-Marie	9 Rue du Général Patton	02270	CRECY SUR SERRE	03.23.80.80.34
69	HAGE	Joseph	Cabinet Médical 7 Rue Mortier	02670	FOLEMBRAY	03.23.52.74.32
70	DESRUELLE	Yves	3 Remparts du Midi	02800	LA FERE	03.23.56.66.22
71	BOUFFETEAU	Florence	3 Rempart du Midi	02800	LA FERE	03.23.56.66.20
72	BERNARDEAU	Hervé	20 Rue Lalouette	02250	MARLE	03.23.20.01.14
73	BARDON	Philippe	26 Rue de Reims	02150	SISSONNE	03.23.80.47.75
74	ZEHOUF	Zoubida	Cabinet Médical 2T Rue Victor Hugo	02300	VIRY NOUREUIL	03.23.38.30.04
75	DUGLEUX	Eric	5 Place de la Mairie	02690	ESSIGNY LE GRAND	03.23.63.39.55
76	GILLOT	Jean-François	2, Rue Roosevelt	02520	FLAVY LE MARTEL	03.23.52.51.01
77	BELLENGUEZ	Jean-Etienne	36 Rue Chantrelle	02100	SAINT-QUENTIN	03.23.08.16.92
78	BRILLEMAN	Fabrice	36, Rue Chantrelle	02100	SAINT-QUENTIN	03.23.08.16.92
79	DEVENDEVILLE	Joël	38 Bd Henri Martin	02100	SAINT-QUENTIN	03.23.05.32.03
80	LANTEZ	Jérôme	9 Boulevard Richelieu	02100	SAINT-QUENTIN	03.23.64.73.90
81	SANDEVOIR	Luc	6, Place du 87ème Régiment d’Infanterie	02100	SAINT-QUENTIN	03.23.68.20.74
82	FLAMANT	Catherine	15, Avenue Essomes	02400	CHATEAU-THIERRY	03.23.83.04.04
83	LANGRAND	Jérôme	41, Rue André Godin	02120	GUISE	03.23.05.75.80
84	BIDAUX	Michel	9, Rue Charles De Gaulle	02500	HIRSON	03.23.58.15.19
85	LAPERSONNE	Frédéric	8 bis, Rue de la Gare	02200	MERCIN ET VAUX	06.07.32.88.26
86	DINICHERT	Michel	Espace Gouraud Bât. 12	02200	SOISSONS	03.23.76.23.15
87	FENIANOS	Elie	8, Boulevard de Presles	02200	SOISSONS	03.23.53.61.61
88	GRAFFAN	Bernard	6, Rue Porte Crouy	02200	SOISSONS	03.23.55.80.80
89	LEBEAU	Francis	11, Rue de la Buerie	02200	SOISSONS	03.23.53.61.65
90	MOUTON	Luc	2 Bis Boulevard Jeanne d’Arc	02200	SOISSONS	03.23.53.02.95
91	RIOU	Yan	2, Place. Lamartine	02200	SOISSONS	03.23.76.48.00
92	LIAGRE	Philippe	8 Place Jehan Bodel	62223	ANZIN SAINT AUBIN	03.21.71.04.37
93	BODIOU	Pierre-Jean	Résidence Voltaire	62000	ARRAS	03.21.58.27.09
94	GODRON	Alexis	120 Rue du Temple	62000	ARRAS	03.21.71.29.29
95	LECAILLE	Philippe	59 Grand'Place	62000	ARRAS	03.21.50.34.70
96	TACYNIAK-LEGAY	M-C	134 Rue de Saint quentin	62000	ARRAS	03.21.73.15.03
97	ROBIQUET	Philippe	26 rue Gustave Delory	62210	AVION	03.21.67.16.80
98	DEBOUT	Philippe	14 Avenue Lavoisier	62000	DAINVILLE	03.21.51.43.13
99	PATTE	Fabrice	35 rue d'En Bas	62000	DAINVILLE	03.21.71.10.57
100	RUBIO	Frédéric	14 Avenue Lavoisier	62000	DAINVILLE	03.21.51.43.13
101	MEURIN	Francis	2 place Louis Hermant	62232	ANNEZIN	03.21.56.31.38
102	LEFEBVRE	Grégory	78 Bis Rue Florent Evrard	62260	AUCHEL	03.21.54.12.12
103	GRUCHALA	Pascal	Cabinet Médical	62138	AUCHY LES MINES	03.21.27.63.63
104	BOUVRY	Jean François	271 Rue des Charitables	62700	BRUAY LA BUISSIERE	06.80.02.94.04
105	BUYSSCHAERT	Arnaud	616 Avenue de la Libération	62700	BRUAY LA BUISSIERE	03.21.53.47.20
106	MOREL	Serge	Centre de Gestion de la FPT du Pas de Calais	62700	BRUAY LA BUISSIERE	06.83.89.82.57
107	WIART	Laurent	616 Avenue de la Libération	62700	BRUAY LA BUISSIERE	03.21.53.47.20
108	BERNARD	Edmond	45 Rue Principale	62920	CHOCQUES	03.21.57.37.09
109	ATCHRIMI	Rodrigue	16 Rue de Marquise	62164	AMBLETEUSE	03.21.32.60.39
110	ACCARY	Pierre	Rés St James	62200	BOULOGNE SUR MER	03.21.31.99.54
111	ARMIGNIES	Philippe	45 Tour Notre Dame	62200	BOULOGNE SUR MER	03.21.31.09.00
112	CHOCHOIS	Stéphane	Unité Médico Judiciaire	62200	BOULOGNE SUR MER	03.21.99.31.59
113	DUCANDAS	Franck	Résidence Saint James	62200	BOULOGNE SUR MER	03.21.31.99.54
114	GROSBETY	Jean-Yves	55 Boulevard Clocheville	62200	BOULOGNE SUR MER	03.21.92.97.98
115	LAURENT	Jean Jacques	87 Grande Rue	62200	BOULOGNE SUR MER	03.21.31.81.81
116	NAULLEAU	Guy	10 Rue Leullieux	62200	BOULOGNE SUR MER	06.81.45.22.93
117	DEMARS	Yann	1083 Route Nationale	62360	HESDIN L'ABBE	03.61.13.74.30
118	VANNELLE	Elisabeth	Espace Santé Terre d'Opale	62250	MARQUISE	06.72.01.80.39
119	ROCHOY	Michaël	20 Rue André Pantigny	62230	OUTREAU	09.81.75.51.27
120	D HEM	Pierre	3 Rue Georges Romain	62930	WIMEREUX	03.21.83.41.51
121	DELPIERRE	Jean Pierre	117 Rue Carnot	62930	WIMEREUX	03.21.32.42.45
122	ARCHER	Valérie	Résidence du Parc Saint Pierre	62100	CALAIS	03.21.34.37.02
123	PERSIAUX	Luc	110 rue Mollien	62100	CALAIS	03.21.82.01.28
124	DECAESTECKER	Xavier	8 Place Foch	62340	GUINES	03.21.82.94.48
125	CAMBIER	Eric	43 Rue des Fusillés	62440	HARNES	03.21.75.53.09
126	NOWICKI	Bernard	19 Grand Place	62440	HARNES	03.21.20.09.09
127	COURCOL	Pascal	41 rue du Temple	62300	LENS	07.70.22.50.39
128	DAMIANI	Luigi	172 Av Alfred Maës	62300	LENS	03.21.42.10.55
129	CHOUARBI	Kamel	5 Boulevard Darchicourt	62820	LIBERCOURT	03.21.37.10.62
130	CUVELETTE	Philippe	12 Rue J.B Défernez	62800	LIEVIN	03.21.44.68.55
131	FRARIN	Denis	1 Rue Fénélon	62800	LIEVIN	03.21.28.08.30
132	RESENDE	Didier	35 Route de Lens	62218	LOISON SOUS LENS	03.21.78.13.11
133	BRUNELLE	Emmanuel	203 Place de la République	62750	LOOS EN GOHELLE	03.21.43.89.95
134	LEDDA	Raphaël	133 Route d'Harnes	62640	MONTIGNY EN GOHELLE	03.21.75.71.17
135	PARMENTIER	Thierry	18 Boulevard Salvador Allende	62640	MONTIGNY EN GOHELLE	03.21.20.22.85
136	BOURNAILLIE	Hervey	29 Rue Rothschild	62600	BERCK	03.21.09.27.67
137	BAUDIN	Jean-Pierre	17 Place du Général de Gaulle	62630	ETAPLES	06.09.62.21.68
138	DENIS	Philippe	Clinique les Drags	62520	LE TOUQUET PARIS PLAGE	06.12.83.06.06
139	SAUVAGE	Nicolas	56 Route d'Etaples	62155	MERLIMONT	03.21.94.66.59
140	HEMBERT	François	7 Bis Boulevard De Gaulle	62120	AIRE SUR LA LYS	03.21.12.95.95
141	LEFEBVRE	Nicolas	70 Rue Léon Delacre	62610	ARDRES	03.21.35.41.65
142	RUSSEL	Olivier	5 Place de l'Hôtel de Ville	62219	LONGUENESSE	03.21.95.17.73
143	DACQUIGNY	René	Claude 47 Rue Pasteur	62500	SAINT OMER	03.21.38.96.01
144	ROMAND	Bruno	1765 Rue de Bourbourg	62162	VIEILLE EGLISE	03.21.82.91.58
146	BOUCHE	Jean Jacques	4, Rue Raoul Lafagette	09000	FOIX	03.20.74.91.34
150	GUINTOLI	Catherine	2 Ter Avenue du Cardié	09000	FOIX	03.20.74.91.34
149	GRAELLS	Daniel	4, Rue Raoul Lafagette	09000	FOIX	03 20 74 91 34
148	DURAND	Didier	35 Rue Gabriel Fauré	09000	FOIX	03.20.74.91.34
160	SAURAT	Jean Luc	FAM de Guilhot	09100	BENAGUES	03.20.74.91.34
147	DUFOUR	Marc	7 Ter Rue de I’Ariége	09330	MONTGAILHARD	03 20 74 91 34
162	CASTERA	Frangois	CHAC	09200	SAINT-GIRONS	03.20.74.91.34
157	NICOLAZIC	Pascal	36 Rue Frédéric Soulié	09100	PAMIERS	03 20 74 91 34
155	LAVABRE	William	48 Rue du Mouret	09290	LE MAS D'AZIL	03 20 74 91 34
151	HADDIOUI	Taoufig	1 Bis, Rue des Evadés de France	09400	TARASCON-SUR-ARIEGE	03 20 74 91 34
159	PUJOL AMARDEILH	Laura	29 C Rue du 8 mai 1945	09100	LA TOUR-DU-CRIEU	03 20 74 91 34
161	JACQUET	Jacques	22 Rue Gambette	09200	SAINT-GIRONS	03 20 74 91 34
145	ARAGON	Christophe	49 Avenue Léo Blum	09300	LAVELANET	03 20 74 91 34
156	MARGALEJO	Gérard	11 Rue des Commerces	09100	LES PUJOLS	03.20.74.91.34
153	CALLEJA	Philippe	5 Rue Louis Pasteur	09700	SAVERDUN	03 20 74 91 34
152	Tarricq	Jean Michel	4, Rue Raoul Lafagette	09000	FOIX	03.20.74.91.34
154	GOUNOT	Cyrille	3, Rue Francois Jacob	09500	MIREPOIX	03.20.74.91.34
158	PALUSCI	Jacques	8 Rue Droite	09190	LE MAS D’AZIL	03.20.74.91.34
\.


--
-- Name: doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: refurb
--

SELECT pg_catalog.setval('public.doctor_id_seq', 1, false);


--
-- Data for Name: postcode; Type: TABLE DATA; Schema: public; Owner: refurb
--

COPY public.postcode (id, postcode) FROM stdin;
1	59700
2	02200
3	59600
4	59470
5	59110
6	02800
7	59115
8	62232
9	09190
10	62300
11	09330
12	59850
13	09400
14	02270
15	09500
16	58100
17	58000
18	02120
19	59380
20	59116
21	09290
22	59390
23	59960
24	02690
25	62800
26	62930
27	62100
28	59140
29	62210
30	59142
31	59012
32	62200
33	02300
34	62155
35	59690
36	59420
37	50480
38	62218
39	59113
40	62500
41	62340
42	59220
43	02670
44	59100
45	50187
46	09700
47	59320
48	02500
49	02520
50	59200
51	59500
52	62820
53	62162
54	09000
55	59970
56	59860
57	62250
58	02250
59	62120
60	62360
61	62600
62	59800
63	62440
64	59560
65	02150
66	09100
67	59000
68	59129
69	59211
70	59226
71	62138
72	59071
73	59270
74	62610
75	62260
76	09300
77	62219
78	02400
79	62230
80	62640
81	62630
82	62750
83	59540
84	59510
85	59400
86	62000
87	59230
88	62164
89	62223
90	59114
91	62700
92	02100
93	59280
94	56000
95	59267
96	62920
97	59410
98	62520
99	59112
100	59138
101	59170
102	09200
\.


--
-- Name: postcode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: refurb
--

SELECT pg_catalog.setval('public.postcode_id_seq', 1, false);


--
-- Name: doctor doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: refurb
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (id);


--
-- Name: postcode postcode_pkey; Type: CONSTRAINT; Schema: public; Owner: refurb
--

ALTER TABLE ONLY public.postcode
    ADD CONSTRAINT postcode_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

