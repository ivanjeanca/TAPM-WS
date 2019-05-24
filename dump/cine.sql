toc.dat                                                                                             0000600 0004000 0002000 00000065021 13471704511 0014446 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       3                    w           cine    10.4 (Debian 10.4-2)    10.4 (Debian 10.4-2) `    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         �           1262    49285    cine    DATABASE     v   CREATE DATABASE cine WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_ES.UTF-8' LC_CTYPE = 'es_ES.UTF-8';
    DROP DATABASE cine;
             postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false         �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                     3079    13007    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false         �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1         �            1259    49433    asiento    TABLE     c   CREATE TABLE public.asiento (
    id_asiento integer NOT NULL,
    asiento character varying(4)
);
    DROP TABLE public.asiento;
       public      	   el_palomo    false    3         �            1259    49431    asiento_id_asiento_seq    SEQUENCE     �   CREATE SEQUENCE public.asiento_id_asiento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.asiento_id_asiento_seq;
       public    	   el_palomo    false    3    213         �           0    0    asiento_id_asiento_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.asiento_id_asiento_seq OWNED BY public.asiento.id_asiento;
            public    	   el_palomo    false    212         �            1259    49289    clasificacion    TABLE     w   CREATE TABLE public.clasificacion (
    id_clasificacion integer NOT NULL,
    clasificacion character varying(120)
);
 !   DROP TABLE public.clasificacion;
       public      	   el_palomo    false    3         �            1259    49287 "   clasificacion_id_clasificacion_seq    SEQUENCE     �   CREATE SEQUENCE public.clasificacion_id_clasificacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.clasificacion_id_clasificacion_seq;
       public    	   el_palomo    false    197    3         �           0    0 "   clasificacion_id_clasificacion_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.clasificacion_id_clasificacion_seq OWNED BY public.clasificacion.id_clasificacion;
            public    	   el_palomo    false    196         �            1259    49394    funcion    TABLE     �   CREATE TABLE public.funcion (
    id_funcion integer NOT NULL,
    id_pelicula integer,
    id_sala integer,
    id_horario integer,
    id_idioma integer,
    precio numeric(10,2)
);
    DROP TABLE public.funcion;
       public      	   el_palomo    false    3         �            1259    49392    funcion_id_funcion_seq    SEQUENCE     �   CREATE SEQUENCE public.funcion_id_funcion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.funcion_id_funcion_seq;
       public    	   el_palomo    false    209    3         �           0    0    funcion_id_funcion_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.funcion_id_funcion_seq OWNED BY public.funcion.id_funcion;
            public    	   el_palomo    false    208         �            1259    49297    genero    TABLE     b   CREATE TABLE public.genero (
    id_genero integer NOT NULL,
    genero character varying(120)
);
    DROP TABLE public.genero;
       public      	   el_palomo    false    3         �            1259    49295    genero_id_genero_seq    SEQUENCE     �   CREATE SEQUENCE public.genero_id_genero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.genero_id_genero_seq;
       public    	   el_palomo    false    199    3         �           0    0    genero_id_genero_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.genero_id_genero_seq OWNED BY public.genero.id_genero;
            public    	   el_palomo    false    198         �            1259    49368    horario    TABLE     e   CREATE TABLE public.horario (
    id_horario integer NOT NULL,
    horario time without time zone
);
    DROP TABLE public.horario;
       public      	   el_palomo    false    3         �            1259    49366    horario_id_horario_seq    SEQUENCE     �   CREATE SEQUENCE public.horario_id_horario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.horario_id_horario_seq;
       public    	   el_palomo    false    207    3         �           0    0    horario_id_horario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.horario_id_horario_seq OWNED BY public.horario.id_horario;
            public    	   el_palomo    false    206         �            1259    49342    idioma    TABLE     b   CREATE TABLE public.idioma (
    id_idioma integer NOT NULL,
    idioma character varying(100)
);
    DROP TABLE public.idioma;
       public      	   el_palomo    false    3         �            1259    49340    idioma_id_idioma_seq    SEQUENCE     �   CREATE SEQUENCE public.idioma_id_idioma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.idioma_id_idioma_seq;
       public    	   el_palomo    false    3    205         �           0    0    idioma_id_idioma_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.idioma_id_idioma_seq OWNED BY public.idioma.id_idioma;
            public    	   el_palomo    false    204         �            1259    49305    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    titulo character varying(120),
    sinopsis text,
    duracion integer,
    id_genero integer,
    id_clasificacion integer
);
    DROP TABLE public.pelicula;
       public      	   el_palomo    false    3         �            1259    49303    pelicula_id_pelicula_seq    SEQUENCE     �   CREATE SEQUENCE public.pelicula_id_pelicula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.pelicula_id_pelicula_seq;
       public    	   el_palomo    false    3    201         �           0    0    pelicula_id_pelicula_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pelicula_id_pelicula_seq OWNED BY public.pelicula.id_pelicula;
            public    	   el_palomo    false    200         �            1259    49441    reservacion    TABLE     �   CREATE TABLE public.reservacion (
    id_reservacion integer NOT NULL,
    id_usuario integer,
    id_funcion integer,
    id_asiento integer
);
    DROP TABLE public.reservacion;
       public      	   el_palomo    false    3         �            1259    49439    reservacion_id_reservacion_seq    SEQUENCE     �   CREATE SEQUENCE public.reservacion_id_reservacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.reservacion_id_reservacion_seq;
       public    	   el_palomo    false    215    3         �           0    0    reservacion_id_reservacion_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.reservacion_id_reservacion_seq OWNED BY public.reservacion.id_reservacion;
            public    	   el_palomo    false    214         �            1259    49334    sala    TABLE     [   CREATE TABLE public.sala (
    id_sala integer NOT NULL,
    sala character varying(20)
);
    DROP TABLE public.sala;
       public      	   el_palomo    false    3         �            1259    49332    sala_id_sala_seq    SEQUENCE     �   CREATE SEQUENCE public.sala_id_sala_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.sala_id_sala_seq;
       public    	   el_palomo    false    203    3         �           0    0    sala_id_sala_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.sala_id_sala_seq OWNED BY public.sala.id_sala;
            public    	   el_palomo    false    202         �            1259    49422    usuario    TABLE     �   CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre character varying(100),
    apaterno character varying(100),
    amaterno character varying(100),
    correo character varying(100),
    contrasena character varying(100)
);
    DROP TABLE public.usuario;
       public      	   el_palomo    false    3         �            1259    49420    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public    	   el_palomo    false    3    211         �           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
            public    	   el_palomo    false    210         �            1259    49464    venta    TABLE     m   CREATE TABLE public.venta (
    id_venta integer NOT NULL,
    id_usuario integer,
    id_funcion integer
);
    DROP TABLE public.venta;
       public      	   el_palomo    false    3         �            1259    49462    venta_id_venta_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.venta_id_venta_seq;
       public    	   el_palomo    false    217    3         �           0    0    venta_id_venta_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.venta_id_venta_seq OWNED BY public.venta.id_venta;
            public    	   el_palomo    false    216                    2604    49436    asiento id_asiento    DEFAULT     x   ALTER TABLE ONLY public.asiento ALTER COLUMN id_asiento SET DEFAULT nextval('public.asiento_id_asiento_seq'::regclass);
 A   ALTER TABLE public.asiento ALTER COLUMN id_asiento DROP DEFAULT;
       public    	   el_palomo    false    213    212    213         �
           2604    49292    clasificacion id_clasificacion    DEFAULT     �   ALTER TABLE ONLY public.clasificacion ALTER COLUMN id_clasificacion SET DEFAULT nextval('public.clasificacion_id_clasificacion_seq'::regclass);
 M   ALTER TABLE public.clasificacion ALTER COLUMN id_clasificacion DROP DEFAULT;
       public    	   el_palomo    false    196    197    197                    2604    49397    funcion id_funcion    DEFAULT     x   ALTER TABLE ONLY public.funcion ALTER COLUMN id_funcion SET DEFAULT nextval('public.funcion_id_funcion_seq'::regclass);
 A   ALTER TABLE public.funcion ALTER COLUMN id_funcion DROP DEFAULT;
       public    	   el_palomo    false    209    208    209         �
           2604    49300    genero id_genero    DEFAULT     t   ALTER TABLE ONLY public.genero ALTER COLUMN id_genero SET DEFAULT nextval('public.genero_id_genero_seq'::regclass);
 ?   ALTER TABLE public.genero ALTER COLUMN id_genero DROP DEFAULT;
       public    	   el_palomo    false    199    198    199                    2604    49371    horario id_horario    DEFAULT     x   ALTER TABLE ONLY public.horario ALTER COLUMN id_horario SET DEFAULT nextval('public.horario_id_horario_seq'::regclass);
 A   ALTER TABLE public.horario ALTER COLUMN id_horario DROP DEFAULT;
       public    	   el_palomo    false    207    206    207                    2604    49345    idioma id_idioma    DEFAULT     t   ALTER TABLE ONLY public.idioma ALTER COLUMN id_idioma SET DEFAULT nextval('public.idioma_id_idioma_seq'::regclass);
 ?   ALTER TABLE public.idioma ALTER COLUMN id_idioma DROP DEFAULT;
       public    	   el_palomo    false    204    205    205                     2604    49308    pelicula id_pelicula    DEFAULT     |   ALTER TABLE ONLY public.pelicula ALTER COLUMN id_pelicula SET DEFAULT nextval('public.pelicula_id_pelicula_seq'::regclass);
 C   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula DROP DEFAULT;
       public    	   el_palomo    false    200    201    201                    2604    49444    reservacion id_reservacion    DEFAULT     �   ALTER TABLE ONLY public.reservacion ALTER COLUMN id_reservacion SET DEFAULT nextval('public.reservacion_id_reservacion_seq'::regclass);
 I   ALTER TABLE public.reservacion ALTER COLUMN id_reservacion DROP DEFAULT;
       public    	   el_palomo    false    215    214    215                    2604    49337    sala id_sala    DEFAULT     l   ALTER TABLE ONLY public.sala ALTER COLUMN id_sala SET DEFAULT nextval('public.sala_id_sala_seq'::regclass);
 ;   ALTER TABLE public.sala ALTER COLUMN id_sala DROP DEFAULT;
       public    	   el_palomo    false    203    202    203                    2604    49425    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public    	   el_palomo    false    211    210    211                    2604    49467    venta id_venta    DEFAULT     p   ALTER TABLE ONLY public.venta ALTER COLUMN id_venta SET DEFAULT nextval('public.venta_id_venta_seq'::regclass);
 =   ALTER TABLE public.venta ALTER COLUMN id_venta DROP DEFAULT;
       public    	   el_palomo    false    217    216    217         �          0    49433    asiento 
   TABLE DATA               6   COPY public.asiento (id_asiento, asiento) FROM stdin;
    public    	   el_palomo    false    213       2996.dat �          0    49289    clasificacion 
   TABLE DATA               H   COPY public.clasificacion (id_clasificacion, clasificacion) FROM stdin;
    public    	   el_palomo    false    197       2980.dat �          0    49394    funcion 
   TABLE DATA               b   COPY public.funcion (id_funcion, id_pelicula, id_sala, id_horario, id_idioma, precio) FROM stdin;
    public    	   el_palomo    false    209       2992.dat �          0    49297    genero 
   TABLE DATA               3   COPY public.genero (id_genero, genero) FROM stdin;
    public    	   el_palomo    false    199       2982.dat �          0    49368    horario 
   TABLE DATA               6   COPY public.horario (id_horario, horario) FROM stdin;
    public    	   el_palomo    false    207       2990.dat �          0    49342    idioma 
   TABLE DATA               3   COPY public.idioma (id_idioma, idioma) FROM stdin;
    public    	   el_palomo    false    205       2988.dat �          0    49305    pelicula 
   TABLE DATA               h   COPY public.pelicula (id_pelicula, titulo, sinopsis, duracion, id_genero, id_clasificacion) FROM stdin;
    public    	   el_palomo    false    201       2984.dat �          0    49441    reservacion 
   TABLE DATA               Y   COPY public.reservacion (id_reservacion, id_usuario, id_funcion, id_asiento) FROM stdin;
    public    	   el_palomo    false    215       2998.dat �          0    49334    sala 
   TABLE DATA               -   COPY public.sala (id_sala, sala) FROM stdin;
    public    	   el_palomo    false    203       2986.dat �          0    49422    usuario 
   TABLE DATA               ]   COPY public.usuario (id_usuario, nombre, apaterno, amaterno, correo, contrasena) FROM stdin;
    public    	   el_palomo    false    211       2994.dat �          0    49464    venta 
   TABLE DATA               A   COPY public.venta (id_venta, id_usuario, id_funcion) FROM stdin;
    public    	   el_palomo    false    217       3000.dat �           0    0    asiento_id_asiento_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.asiento_id_asiento_seq', 37, true);
            public    	   el_palomo    false    212         �           0    0 "   clasificacion_id_clasificacion_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.clasificacion_id_clasificacion_seq', 7, true);
            public    	   el_palomo    false    196         �           0    0    funcion_id_funcion_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.funcion_id_funcion_seq', 11, true);
            public    	   el_palomo    false    208         �           0    0    genero_id_genero_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.genero_id_genero_seq', 9, true);
            public    	   el_palomo    false    198         �           0    0    horario_id_horario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.horario_id_horario_seq', 7, true);
            public    	   el_palomo    false    206         �           0    0    idioma_id_idioma_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.idioma_id_idioma_seq', 6, true);
            public    	   el_palomo    false    204         �           0    0    pelicula_id_pelicula_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 5, true);
            public    	   el_palomo    false    200         �           0    0    reservacion_id_reservacion_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.reservacion_id_reservacion_seq', 3, true);
            public    	   el_palomo    false    214         �           0    0    sala_id_sala_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sala_id_sala_seq', 13, true);
            public    	   el_palomo    false    202         �           0    0    usuario_id_usuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 3, true);
            public    	   el_palomo    false    210         �           0    0    venta_id_venta_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.venta_id_venta_seq', 1, false);
            public    	   el_palomo    false    216                    2606    49438    asiento asiento_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.asiento
    ADD CONSTRAINT asiento_pkey PRIMARY KEY (id_asiento);
 >   ALTER TABLE ONLY public.asiento DROP CONSTRAINT asiento_pkey;
       public      	   el_palomo    false    213         
           2606    49294     clasificacion clasificacion_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.clasificacion
    ADD CONSTRAINT clasificacion_pkey PRIMARY KEY (id_clasificacion);
 J   ALTER TABLE ONLY public.clasificacion DROP CONSTRAINT clasificacion_pkey;
       public      	   el_palomo    false    197                    2606    49399    funcion funcion_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_pkey PRIMARY KEY (id_funcion);
 >   ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_pkey;
       public      	   el_palomo    false    209                    2606    49302    genero genero_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (id_genero);
 <   ALTER TABLE ONLY public.genero DROP CONSTRAINT genero_pkey;
       public      	   el_palomo    false    199                    2606    49373    horario horario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_pkey PRIMARY KEY (id_horario);
 >   ALTER TABLE ONLY public.horario DROP CONSTRAINT horario_pkey;
       public      	   el_palomo    false    207                    2606    49347    idioma idioma_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.idioma
    ADD CONSTRAINT idioma_pkey PRIMARY KEY (id_idioma);
 <   ALTER TABLE ONLY public.idioma DROP CONSTRAINT idioma_pkey;
       public      	   el_palomo    false    205                    2606    49313    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public      	   el_palomo    false    201                    2606    49446    reservacion reservacion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_pkey PRIMARY KEY (id_reservacion);
 F   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_pkey;
       public      	   el_palomo    false    215                    2606    49339    sala sala_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT sala_pkey PRIMARY KEY (id_sala);
 8   ALTER TABLE ONLY public.sala DROP CONSTRAINT sala_pkey;
       public      	   el_palomo    false    203                    2606    49430    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public      	   el_palomo    false    211                    2606    49469    venta venta_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id_venta);
 :   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pkey;
       public      	   el_palomo    false    217         #           2606    49410    funcion funcion_id_horario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_id_horario_fkey FOREIGN KEY (id_horario) REFERENCES public.horario(id_horario);
 I   ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_id_horario_fkey;
       public    	   el_palomo    false    207    209    2836         $           2606    49415    funcion funcion_id_idioma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_id_idioma_fkey FOREIGN KEY (id_idioma) REFERENCES public.idioma(id_idioma);
 H   ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_id_idioma_fkey;
       public    	   el_palomo    false    205    2834    209         !           2606    49400     funcion funcion_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 J   ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_id_pelicula_fkey;
       public    	   el_palomo    false    201    209    2830         "           2606    49405    funcion funcion_id_sala_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_id_sala_fkey FOREIGN KEY (id_sala) REFERENCES public.sala(id_sala);
 F   ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_id_sala_fkey;
       public    	   el_palomo    false    209    203    2832                     2606    49319 $   pelicula pelicula_clasificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_clasificacion_fkey FOREIGN KEY (id_clasificacion) REFERENCES public.clasificacion(id_clasificacion);
 N   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_clasificacion_fkey;
       public    	   el_palomo    false    2826    201    197                    2606    49314    pelicula pelicula_genero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_genero_fkey FOREIGN KEY (id_genero) REFERENCES public.genero(id_genero);
 G   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_genero_fkey;
       public    	   el_palomo    false    199    2828    201         '           2606    49457 '   reservacion reservacion_id_asiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_id_asiento_fkey FOREIGN KEY (id_asiento) REFERENCES public.asiento(id_asiento);
 Q   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_id_asiento_fkey;
       public    	   el_palomo    false    213    215    2842         &           2606    49452 '   reservacion reservacion_id_funcion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_id_funcion_fkey FOREIGN KEY (id_funcion) REFERENCES public.funcion(id_funcion);
 Q   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_id_funcion_fkey;
       public    	   el_palomo    false    209    2838    215         %           2606    49447 '   reservacion reservacion_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 Q   ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_id_usuario_fkey;
       public    	   el_palomo    false    215    211    2840         )           2606    49475    venta venta_id_funcion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_id_funcion_fkey FOREIGN KEY (id_funcion) REFERENCES public.funcion(id_funcion);
 E   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_id_funcion_fkey;
       public    	   el_palomo    false    217    2838    209         (           2606    49470    venta venta_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 E   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_id_usuario_fkey;
       public    	   el_palomo    false    217    2840    211                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       2996.dat                                                                                            0000600 0004000 0002000 00000000346 13471704511 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	A1
2	A2
3	A3
4	A4
5	A5
6	A6
7	A7
8	A8
9	A9
10	A10
11	A11
12	A12
13	A13
14	A14
15	A15
16	B1
17	B2
18	B3
19	B4
20	B5
21	B6
22	B7
23	B8
24	B9
25	B10
26	B11
27	B12
28	B13
29	B14
30	B15
31	C1
32	C2
33	C3
34	C4
35	C5
36	C6
37	C7
\.


                                                                                                                                                                                                                                                                                          2980.dat                                                                                            0000600 0004000 0002000 00000000040 13471704511 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	A
2	B
3	B15
4	C
5	D
6	AA
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                2992.dat                                                                                            0000600 0004000 0002000 00000000252 13471704511 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	3	6	2	4	65.00
2	3	12	2	4	120.00
3	1	2	6	1	55.00
4	1	7	7	1	55.00
5	1	9	6	1	55.00
6	2	5	3	4	60.00
7	2	1	3	4	60.00
8	2	8	2	5	60.00
9	4	10	5	4	70.00
10	4	11	7	4	70.00
\.


                                                                                                                                                                                                                                                                                                                                                      2982.dat                                                                                            0000600 0004000 0002000 00000000150 13471704511 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Terror
2	Comedia
3	Comedia romantica
4	Fantasia
5	Accion
6	Suspenso
7	Infantil
8	Drama
9	Animada
\.


                                                                                                                                                                                                                                                                                                                                                                                                                        2990.dat                                                                                            0000600 0004000 0002000 00000000122 13471704511 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	20:00:00
2	13:40:00
3	15:30:00
4	16:10:00
5	17:30:00
6	19:45:00
7	21:00:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                              2988.dat                                                                                            0000600 0004000 0002000 00000000164 13471704511 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Español
2	Inglés
3	Doblado (Castellano)
4	Doblado (Latino)
5	Inglés (Subtitulado)
6	Frances (Subtitulado)
\.


                                                                                                                                                                                                                                                                                                                                                                                                            2984.dat                                                                                            0000600 0004000 0002000 00000001174 13471704511 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Tres lancheros picudos	Tres lancheros en la ciudad de Acapulco se meten en problemas y tienen que huir hacia la gran ciudad, buscandose la manera de vivir.	92	2	4
2	La cruda verdad	Una chica cree saber todo sobre su vida, descubre que hay algo mas al enredarse con su nuevo presentador de un programa.	97	3	3
3	Mulan	Una chica descubre que puede hacer mas de lo que creyó para salvar a su familia, y asi salva a todo su pais.	88	9	6
4	Harry Potter y el cáliz de fuego	Harry se encuentra envuelto en otro aprieto al quedar seleccionado misteriosamente en los juegos de los tres magos y se entrena para la batalla final.	157	4	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                    2998.dat                                                                                            0000600 0004000 0002000 00000000027 13471704511 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	3	22
2	1	3	23
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         2986.dat                                                                                            0000600 0004000 0002000 00000000127 13471704511 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	Macro XE 1
11	Macro XE 2
12	4DX 1
13	4DX 2
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                         2994.dat                                                                                            0000600 0004000 0002000 00000000262 13471704511 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Ivan Jeancarlo	Tirado	Morales	15030104@itcelaya.edu.mx	c4ca4238a0b923820dcc509a6f75849b
2	Tania	Fernandez	Conde	tania._.conde@hotmail.com	c20ad4d76fe97759aa27a0c99bff6710
\.


                                                                                                                                                                                                                                                                                                                                              3000.dat                                                                                            0000600 0004000 0002000 00000000005 13471704511 0014232 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000056634 13471704511 0015405 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4 (Debian 10.4-2)
-- Dumped by pg_dump version 10.4 (Debian 10.4-2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_id_usuario_fkey;
ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_id_funcion_fkey;
ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_id_usuario_fkey;
ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_id_funcion_fkey;
ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_id_asiento_fkey;
ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_genero_fkey;
ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_clasificacion_fkey;
ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_id_sala_fkey;
ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_id_pelicula_fkey;
ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_id_idioma_fkey;
ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_id_horario_fkey;
ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pkey;
ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
ALTER TABLE ONLY public.sala DROP CONSTRAINT sala_pkey;
ALTER TABLE ONLY public.reservacion DROP CONSTRAINT reservacion_pkey;
ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
ALTER TABLE ONLY public.idioma DROP CONSTRAINT idioma_pkey;
ALTER TABLE ONLY public.horario DROP CONSTRAINT horario_pkey;
ALTER TABLE ONLY public.genero DROP CONSTRAINT genero_pkey;
ALTER TABLE ONLY public.funcion DROP CONSTRAINT funcion_pkey;
ALTER TABLE ONLY public.clasificacion DROP CONSTRAINT clasificacion_pkey;
ALTER TABLE ONLY public.asiento DROP CONSTRAINT asiento_pkey;
ALTER TABLE public.venta ALTER COLUMN id_venta DROP DEFAULT;
ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
ALTER TABLE public.sala ALTER COLUMN id_sala DROP DEFAULT;
ALTER TABLE public.reservacion ALTER COLUMN id_reservacion DROP DEFAULT;
ALTER TABLE public.pelicula ALTER COLUMN id_pelicula DROP DEFAULT;
ALTER TABLE public.idioma ALTER COLUMN id_idioma DROP DEFAULT;
ALTER TABLE public.horario ALTER COLUMN id_horario DROP DEFAULT;
ALTER TABLE public.genero ALTER COLUMN id_genero DROP DEFAULT;
ALTER TABLE public.funcion ALTER COLUMN id_funcion DROP DEFAULT;
ALTER TABLE public.clasificacion ALTER COLUMN id_clasificacion DROP DEFAULT;
ALTER TABLE public.asiento ALTER COLUMN id_asiento DROP DEFAULT;
DROP SEQUENCE public.venta_id_venta_seq;
DROP TABLE public.venta;
DROP SEQUENCE public.usuario_id_usuario_seq;
DROP TABLE public.usuario;
DROP SEQUENCE public.sala_id_sala_seq;
DROP TABLE public.sala;
DROP SEQUENCE public.reservacion_id_reservacion_seq;
DROP TABLE public.reservacion;
DROP SEQUENCE public.pelicula_id_pelicula_seq;
DROP TABLE public.pelicula;
DROP SEQUENCE public.idioma_id_idioma_seq;
DROP TABLE public.idioma;
DROP SEQUENCE public.horario_id_horario_seq;
DROP TABLE public.horario;
DROP SEQUENCE public.genero_id_genero_seq;
DROP TABLE public.genero;
DROP SEQUENCE public.funcion_id_funcion_seq;
DROP TABLE public.funcion;
DROP SEQUENCE public.clasificacion_id_clasificacion_seq;
DROP TABLE public.clasificacion;
DROP SEQUENCE public.asiento_id_asiento_seq;
DROP TABLE public.asiento;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


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
-- Name: asiento; Type: TABLE; Schema: public; Owner: el_palomo
--

CREATE TABLE public.asiento (
    id_asiento integer NOT NULL,
    asiento character varying(4)
);


ALTER TABLE public.asiento OWNER TO el_palomo;

--
-- Name: asiento_id_asiento_seq; Type: SEQUENCE; Schema: public; Owner: el_palomo
--

CREATE SEQUENCE public.asiento_id_asiento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asiento_id_asiento_seq OWNER TO el_palomo;

--
-- Name: asiento_id_asiento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: el_palomo
--

ALTER SEQUENCE public.asiento_id_asiento_seq OWNED BY public.asiento.id_asiento;


--
-- Name: clasificacion; Type: TABLE; Schema: public; Owner: el_palomo
--

CREATE TABLE public.clasificacion (
    id_clasificacion integer NOT NULL,
    clasificacion character varying(120)
);


ALTER TABLE public.clasificacion OWNER TO el_palomo;

--
-- Name: clasificacion_id_clasificacion_seq; Type: SEQUENCE; Schema: public; Owner: el_palomo
--

CREATE SEQUENCE public.clasificacion_id_clasificacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clasificacion_id_clasificacion_seq OWNER TO el_palomo;

--
-- Name: clasificacion_id_clasificacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: el_palomo
--

ALTER SEQUENCE public.clasificacion_id_clasificacion_seq OWNED BY public.clasificacion.id_clasificacion;


--
-- Name: funcion; Type: TABLE; Schema: public; Owner: el_palomo
--

CREATE TABLE public.funcion (
    id_funcion integer NOT NULL,
    id_pelicula integer,
    id_sala integer,
    id_horario integer,
    id_idioma integer,
    precio numeric(10,2)
);


ALTER TABLE public.funcion OWNER TO el_palomo;

--
-- Name: funcion_id_funcion_seq; Type: SEQUENCE; Schema: public; Owner: el_palomo
--

CREATE SEQUENCE public.funcion_id_funcion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.funcion_id_funcion_seq OWNER TO el_palomo;

--
-- Name: funcion_id_funcion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: el_palomo
--

ALTER SEQUENCE public.funcion_id_funcion_seq OWNED BY public.funcion.id_funcion;


--
-- Name: genero; Type: TABLE; Schema: public; Owner: el_palomo
--

CREATE TABLE public.genero (
    id_genero integer NOT NULL,
    genero character varying(120)
);


ALTER TABLE public.genero OWNER TO el_palomo;

--
-- Name: genero_id_genero_seq; Type: SEQUENCE; Schema: public; Owner: el_palomo
--

CREATE SEQUENCE public.genero_id_genero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genero_id_genero_seq OWNER TO el_palomo;

--
-- Name: genero_id_genero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: el_palomo
--

ALTER SEQUENCE public.genero_id_genero_seq OWNED BY public.genero.id_genero;


--
-- Name: horario; Type: TABLE; Schema: public; Owner: el_palomo
--

CREATE TABLE public.horario (
    id_horario integer NOT NULL,
    horario time without time zone
);


ALTER TABLE public.horario OWNER TO el_palomo;

--
-- Name: horario_id_horario_seq; Type: SEQUENCE; Schema: public; Owner: el_palomo
--

CREATE SEQUENCE public.horario_id_horario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.horario_id_horario_seq OWNER TO el_palomo;

--
-- Name: horario_id_horario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: el_palomo
--

ALTER SEQUENCE public.horario_id_horario_seq OWNED BY public.horario.id_horario;


--
-- Name: idioma; Type: TABLE; Schema: public; Owner: el_palomo
--

CREATE TABLE public.idioma (
    id_idioma integer NOT NULL,
    idioma character varying(100)
);


ALTER TABLE public.idioma OWNER TO el_palomo;

--
-- Name: idioma_id_idioma_seq; Type: SEQUENCE; Schema: public; Owner: el_palomo
--

CREATE SEQUENCE public.idioma_id_idioma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.idioma_id_idioma_seq OWNER TO el_palomo;

--
-- Name: idioma_id_idioma_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: el_palomo
--

ALTER SEQUENCE public.idioma_id_idioma_seq OWNED BY public.idioma.id_idioma;


--
-- Name: pelicula; Type: TABLE; Schema: public; Owner: el_palomo
--

CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    titulo character varying(120),
    sinopsis text,
    duracion integer,
    id_genero integer,
    id_clasificacion integer
);


ALTER TABLE public.pelicula OWNER TO el_palomo;

--
-- Name: pelicula_id_pelicula_seq; Type: SEQUENCE; Schema: public; Owner: el_palomo
--

CREATE SEQUENCE public.pelicula_id_pelicula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pelicula_id_pelicula_seq OWNER TO el_palomo;

--
-- Name: pelicula_id_pelicula_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: el_palomo
--

ALTER SEQUENCE public.pelicula_id_pelicula_seq OWNED BY public.pelicula.id_pelicula;


--
-- Name: reservacion; Type: TABLE; Schema: public; Owner: el_palomo
--

CREATE TABLE public.reservacion (
    id_reservacion integer NOT NULL,
    id_usuario integer,
    id_funcion integer,
    id_asiento integer
);


ALTER TABLE public.reservacion OWNER TO el_palomo;

--
-- Name: reservacion_id_reservacion_seq; Type: SEQUENCE; Schema: public; Owner: el_palomo
--

CREATE SEQUENCE public.reservacion_id_reservacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reservacion_id_reservacion_seq OWNER TO el_palomo;

--
-- Name: reservacion_id_reservacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: el_palomo
--

ALTER SEQUENCE public.reservacion_id_reservacion_seq OWNED BY public.reservacion.id_reservacion;


--
-- Name: sala; Type: TABLE; Schema: public; Owner: el_palomo
--

CREATE TABLE public.sala (
    id_sala integer NOT NULL,
    sala character varying(20)
);


ALTER TABLE public.sala OWNER TO el_palomo;

--
-- Name: sala_id_sala_seq; Type: SEQUENCE; Schema: public; Owner: el_palomo
--

CREATE SEQUENCE public.sala_id_sala_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sala_id_sala_seq OWNER TO el_palomo;

--
-- Name: sala_id_sala_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: el_palomo
--

ALTER SEQUENCE public.sala_id_sala_seq OWNED BY public.sala.id_sala;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: el_palomo
--

CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre character varying(100),
    apaterno character varying(100),
    amaterno character varying(100),
    correo character varying(100),
    contrasena character varying(100)
);


ALTER TABLE public.usuario OWNER TO el_palomo;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: el_palomo
--

CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_usuario_seq OWNER TO el_palomo;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: el_palomo
--

ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;


--
-- Name: venta; Type: TABLE; Schema: public; Owner: el_palomo
--

CREATE TABLE public.venta (
    id_venta integer NOT NULL,
    id_usuario integer,
    id_funcion integer
);


ALTER TABLE public.venta OWNER TO el_palomo;

--
-- Name: venta_id_venta_seq; Type: SEQUENCE; Schema: public; Owner: el_palomo
--

CREATE SEQUENCE public.venta_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venta_id_venta_seq OWNER TO el_palomo;

--
-- Name: venta_id_venta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: el_palomo
--

ALTER SEQUENCE public.venta_id_venta_seq OWNED BY public.venta.id_venta;


--
-- Name: asiento id_asiento; Type: DEFAULT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.asiento ALTER COLUMN id_asiento SET DEFAULT nextval('public.asiento_id_asiento_seq'::regclass);


--
-- Name: clasificacion id_clasificacion; Type: DEFAULT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.clasificacion ALTER COLUMN id_clasificacion SET DEFAULT nextval('public.clasificacion_id_clasificacion_seq'::regclass);


--
-- Name: funcion id_funcion; Type: DEFAULT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.funcion ALTER COLUMN id_funcion SET DEFAULT nextval('public.funcion_id_funcion_seq'::regclass);


--
-- Name: genero id_genero; Type: DEFAULT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.genero ALTER COLUMN id_genero SET DEFAULT nextval('public.genero_id_genero_seq'::regclass);


--
-- Name: horario id_horario; Type: DEFAULT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.horario ALTER COLUMN id_horario SET DEFAULT nextval('public.horario_id_horario_seq'::regclass);


--
-- Name: idioma id_idioma; Type: DEFAULT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.idioma ALTER COLUMN id_idioma SET DEFAULT nextval('public.idioma_id_idioma_seq'::regclass);


--
-- Name: pelicula id_pelicula; Type: DEFAULT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.pelicula ALTER COLUMN id_pelicula SET DEFAULT nextval('public.pelicula_id_pelicula_seq'::regclass);


--
-- Name: reservacion id_reservacion; Type: DEFAULT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.reservacion ALTER COLUMN id_reservacion SET DEFAULT nextval('public.reservacion_id_reservacion_seq'::regclass);


--
-- Name: sala id_sala; Type: DEFAULT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.sala ALTER COLUMN id_sala SET DEFAULT nextval('public.sala_id_sala_seq'::regclass);


--
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);


--
-- Name: venta id_venta; Type: DEFAULT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.venta ALTER COLUMN id_venta SET DEFAULT nextval('public.venta_id_venta_seq'::regclass);


--
-- Data for Name: asiento; Type: TABLE DATA; Schema: public; Owner: el_palomo
--

COPY public.asiento (id_asiento, asiento) FROM stdin;
\.
COPY public.asiento (id_asiento, asiento) FROM '$$PATH$$/2996.dat';

--
-- Data for Name: clasificacion; Type: TABLE DATA; Schema: public; Owner: el_palomo
--

COPY public.clasificacion (id_clasificacion, clasificacion) FROM stdin;
\.
COPY public.clasificacion (id_clasificacion, clasificacion) FROM '$$PATH$$/2980.dat';

--
-- Data for Name: funcion; Type: TABLE DATA; Schema: public; Owner: el_palomo
--

COPY public.funcion (id_funcion, id_pelicula, id_sala, id_horario, id_idioma, precio) FROM stdin;
\.
COPY public.funcion (id_funcion, id_pelicula, id_sala, id_horario, id_idioma, precio) FROM '$$PATH$$/2992.dat';

--
-- Data for Name: genero; Type: TABLE DATA; Schema: public; Owner: el_palomo
--

COPY public.genero (id_genero, genero) FROM stdin;
\.
COPY public.genero (id_genero, genero) FROM '$$PATH$$/2982.dat';

--
-- Data for Name: horario; Type: TABLE DATA; Schema: public; Owner: el_palomo
--

COPY public.horario (id_horario, horario) FROM stdin;
\.
COPY public.horario (id_horario, horario) FROM '$$PATH$$/2990.dat';

--
-- Data for Name: idioma; Type: TABLE DATA; Schema: public; Owner: el_palomo
--

COPY public.idioma (id_idioma, idioma) FROM stdin;
\.
COPY public.idioma (id_idioma, idioma) FROM '$$PATH$$/2988.dat';

--
-- Data for Name: pelicula; Type: TABLE DATA; Schema: public; Owner: el_palomo
--

COPY public.pelicula (id_pelicula, titulo, sinopsis, duracion, id_genero, id_clasificacion) FROM stdin;
\.
COPY public.pelicula (id_pelicula, titulo, sinopsis, duracion, id_genero, id_clasificacion) FROM '$$PATH$$/2984.dat';

--
-- Data for Name: reservacion; Type: TABLE DATA; Schema: public; Owner: el_palomo
--

COPY public.reservacion (id_reservacion, id_usuario, id_funcion, id_asiento) FROM stdin;
\.
COPY public.reservacion (id_reservacion, id_usuario, id_funcion, id_asiento) FROM '$$PATH$$/2998.dat';

--
-- Data for Name: sala; Type: TABLE DATA; Schema: public; Owner: el_palomo
--

COPY public.sala (id_sala, sala) FROM stdin;
\.
COPY public.sala (id_sala, sala) FROM '$$PATH$$/2986.dat';

--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: el_palomo
--

COPY public.usuario (id_usuario, nombre, apaterno, amaterno, correo, contrasena) FROM stdin;
\.
COPY public.usuario (id_usuario, nombre, apaterno, amaterno, correo, contrasena) FROM '$$PATH$$/2994.dat';

--
-- Data for Name: venta; Type: TABLE DATA; Schema: public; Owner: el_palomo
--

COPY public.venta (id_venta, id_usuario, id_funcion) FROM stdin;
\.
COPY public.venta (id_venta, id_usuario, id_funcion) FROM '$$PATH$$/3000.dat';

--
-- Name: asiento_id_asiento_seq; Type: SEQUENCE SET; Schema: public; Owner: el_palomo
--

SELECT pg_catalog.setval('public.asiento_id_asiento_seq', 37, true);


--
-- Name: clasificacion_id_clasificacion_seq; Type: SEQUENCE SET; Schema: public; Owner: el_palomo
--

SELECT pg_catalog.setval('public.clasificacion_id_clasificacion_seq', 7, true);


--
-- Name: funcion_id_funcion_seq; Type: SEQUENCE SET; Schema: public; Owner: el_palomo
--

SELECT pg_catalog.setval('public.funcion_id_funcion_seq', 11, true);


--
-- Name: genero_id_genero_seq; Type: SEQUENCE SET; Schema: public; Owner: el_palomo
--

SELECT pg_catalog.setval('public.genero_id_genero_seq', 9, true);


--
-- Name: horario_id_horario_seq; Type: SEQUENCE SET; Schema: public; Owner: el_palomo
--

SELECT pg_catalog.setval('public.horario_id_horario_seq', 7, true);


--
-- Name: idioma_id_idioma_seq; Type: SEQUENCE SET; Schema: public; Owner: el_palomo
--

SELECT pg_catalog.setval('public.idioma_id_idioma_seq', 6, true);


--
-- Name: pelicula_id_pelicula_seq; Type: SEQUENCE SET; Schema: public; Owner: el_palomo
--

SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 5, true);


--
-- Name: reservacion_id_reservacion_seq; Type: SEQUENCE SET; Schema: public; Owner: el_palomo
--

SELECT pg_catalog.setval('public.reservacion_id_reservacion_seq', 3, true);


--
-- Name: sala_id_sala_seq; Type: SEQUENCE SET; Schema: public; Owner: el_palomo
--

SELECT pg_catalog.setval('public.sala_id_sala_seq', 13, true);


--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: el_palomo
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 3, true);


--
-- Name: venta_id_venta_seq; Type: SEQUENCE SET; Schema: public; Owner: el_palomo
--

SELECT pg_catalog.setval('public.venta_id_venta_seq', 1, false);


--
-- Name: asiento asiento_pkey; Type: CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.asiento
    ADD CONSTRAINT asiento_pkey PRIMARY KEY (id_asiento);


--
-- Name: clasificacion clasificacion_pkey; Type: CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.clasificacion
    ADD CONSTRAINT clasificacion_pkey PRIMARY KEY (id_clasificacion);


--
-- Name: funcion funcion_pkey; Type: CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_pkey PRIMARY KEY (id_funcion);


--
-- Name: genero genero_pkey; Type: CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (id_genero);


--
-- Name: horario horario_pkey; Type: CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_pkey PRIMARY KEY (id_horario);


--
-- Name: idioma idioma_pkey; Type: CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.idioma
    ADD CONSTRAINT idioma_pkey PRIMARY KEY (id_idioma);


--
-- Name: pelicula pelicula_pkey; Type: CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);


--
-- Name: reservacion reservacion_pkey; Type: CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_pkey PRIMARY KEY (id_reservacion);


--
-- Name: sala sala_pkey; Type: CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.sala
    ADD CONSTRAINT sala_pkey PRIMARY KEY (id_sala);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- Name: venta venta_pkey; Type: CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id_venta);


--
-- Name: funcion funcion_id_horario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_id_horario_fkey FOREIGN KEY (id_horario) REFERENCES public.horario(id_horario);


--
-- Name: funcion funcion_id_idioma_fkey; Type: FK CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_id_idioma_fkey FOREIGN KEY (id_idioma) REFERENCES public.idioma(id_idioma);


--
-- Name: funcion funcion_id_pelicula_fkey; Type: FK CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);


--
-- Name: funcion funcion_id_sala_fkey; Type: FK CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.funcion
    ADD CONSTRAINT funcion_id_sala_fkey FOREIGN KEY (id_sala) REFERENCES public.sala(id_sala);


--
-- Name: pelicula pelicula_clasificacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_clasificacion_fkey FOREIGN KEY (id_clasificacion) REFERENCES public.clasificacion(id_clasificacion);


--
-- Name: pelicula pelicula_genero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_genero_fkey FOREIGN KEY (id_genero) REFERENCES public.genero(id_genero);


--
-- Name: reservacion reservacion_id_asiento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_id_asiento_fkey FOREIGN KEY (id_asiento) REFERENCES public.asiento(id_asiento);


--
-- Name: reservacion reservacion_id_funcion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_id_funcion_fkey FOREIGN KEY (id_funcion) REFERENCES public.funcion(id_funcion);


--
-- Name: reservacion reservacion_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.reservacion
    ADD CONSTRAINT reservacion_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- Name: venta venta_id_funcion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_id_funcion_fkey FOREIGN KEY (id_funcion) REFERENCES public.funcion(id_funcion);


--
-- Name: venta venta_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: el_palomo
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    