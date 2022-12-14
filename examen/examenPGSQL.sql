PGDMP         -            	    z           examen    14.4    14.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    57354    examen    DATABASE     c   CREATE DATABASE examen WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE examen;
                postgres    false            ?            1259    65546    c_sala_id_sala_seq    SEQUENCE     ?   CREATE SEQUENCE public.c_sala_id_sala_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999999999
    CACHE 1;
 )   DROP SEQUENCE public.c_sala_id_sala_seq;
       public          postgres    false            ?            1259    57355    c_sala    TABLE     '  CREATE TABLE public.c_sala (
    id_sala integer DEFAULT nextval('public.c_sala_id_sala_seq'::regclass) NOT NULL,
    numero_sala smallint,
    total_asientos integer,
    fecha_alta timestamp without time zone,
    fecha_modificacion timestamp without time zone,
    registro_activo boolean
);
    DROP TABLE public.c_sala;
       public         heap    postgres    false    212            ?            1259    65547    m_cine_id_cine_seq    SEQUENCE     ?   CREATE SEQUENCE public.m_cine_id_cine_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999999999
    CACHE 1;
 )   DROP SEQUENCE public.m_cine_id_cine_seq;
       public          postgres    false            ?            1259    57360    m_cine    TABLE       CREATE TABLE public.m_cine (
    id_cine integer DEFAULT nextval('public.m_cine_id_cine_seq'::regclass) NOT NULL,
    nombre character varying(45),
    fecha_alta timestamp without time zone,
    fecha_modificacion timestamp without time zone,
    registro_activo boolean
);
    DROP TABLE public.m_cine;
       public         heap    postgres    false    213            ?            1259    65548    r_cine_sala_id_cine_sala_seq    SEQUENCE     ?   CREATE SEQUENCE public.r_cine_sala_id_cine_sala_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.r_cine_sala_id_cine_sala_seq;
       public          postgres    false            ?            1259    57365    r_cine_sala    TABLE     /  CREATE TABLE public.r_cine_sala (
    id_cine_sala integer DEFAULT nextval('public.r_cine_sala_id_cine_sala_seq'::regclass) NOT NULL,
    id_cine integer,
    id_sala integer,
    fecha_alta timestamp without time zone,
    fecha_modificacion timestamp without time zone,
    registro_activo boolean
);
    DROP TABLE public.r_cine_sala;
       public         heap    postgres    false    214            ?          0    57355    c_sala 
   TABLE DATA           w   COPY public.c_sala (id_sala, numero_sala, total_asientos, fecha_alta, fecha_modificacion, registro_activo) FROM stdin;
    public          postgres    false    209   L       ?          0    57360    m_cine 
   TABLE DATA           b   COPY public.m_cine (id_cine, nombre, fecha_alta, fecha_modificacion, registro_activo) FROM stdin;
    public          postgres    false    210   ?       ?          0    57365    r_cine_sala 
   TABLE DATA           v   COPY public.r_cine_sala (id_cine_sala, id_cine, id_sala, fecha_alta, fecha_modificacion, registro_activo) FROM stdin;
    public          postgres    false    211                     0    0    c_sala_id_sala_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.c_sala_id_sala_seq', 1, false);
          public          postgres    false    212            	           0    0    m_cine_id_cine_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.m_cine_id_cine_seq', 1, false);
          public          postgres    false    213            
           0    0    r_cine_sala_id_cine_sala_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.r_cine_sala_id_cine_sala_seq', 1, false);
          public          postgres    false    214            j           2606    57359    c_sala c_sala_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.c_sala
    ADD CONSTRAINT c_sala_pkey PRIMARY KEY (id_sala);
 <   ALTER TABLE ONLY public.c_sala DROP CONSTRAINT c_sala_pkey;
       public            postgres    false    209            l           2606    57364    m_cine m_cine_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.m_cine
    ADD CONSTRAINT m_cine_pkey PRIMARY KEY (id_cine);
 <   ALTER TABLE ONLY public.m_cine DROP CONSTRAINT m_cine_pkey;
       public            postgres    false    210            n           2606    57369    r_cine_sala r_cine_sala_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.r_cine_sala
    ADD CONSTRAINT r_cine_sala_pkey PRIMARY KEY (id_cine_sala);
 F   ALTER TABLE ONLY public.r_cine_sala DROP CONSTRAINT r_cine_sala_pkey;
       public            postgres    false    211            o           2606    57370    r_cine_sala fk_c_sala    FK CONSTRAINT     z   ALTER TABLE ONLY public.r_cine_sala
    ADD CONSTRAINT fk_c_sala FOREIGN KEY (id_sala) REFERENCES public.c_sala(id_sala);
 ?   ALTER TABLE ONLY public.r_cine_sala DROP CONSTRAINT fk_c_sala;
       public          postgres    false    211    3178    209            p           2606    57375    r_cine_sala fk_m_cine    FK CONSTRAINT     z   ALTER TABLE ONLY public.r_cine_sala
    ADD CONSTRAINT fk_m_cine FOREIGN KEY (id_cine) REFERENCES public.m_cine(id_cine);
 ?   ALTER TABLE ONLY public.r_cine_sala DROP CONSTRAINT fk_m_cine;
       public          postgres    false    3180    210    211            ?   C   x?3?4?45?420??50"C#+ ?*V?e?i?iN?N?4?r?r?????Ӑ4???qqq ??,*      ?   V   x?3?L??K-???,N#C]C R04?20 "?b%\F`???@y##]C]Cs+#+c?b%\Ɯ? =?E?$X???? ??$#      ?   2   x?3?4B#C]C R04?20 "?b%\F@??$?7?7%A}? ??      