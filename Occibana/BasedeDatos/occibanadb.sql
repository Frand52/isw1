PGDMP             	            x            Occibana    12.4    12.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            	           1262    32861    Occibana    DATABASE     �   CREATE DATABASE "Occibana" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Latin America.utf8' LC_CTYPE = 'Spanish_Latin America.utf8';
    DROP DATABASE "Occibana";
                postgres    false                        2615    32862    login    SCHEMA        CREATE SCHEMA login;
    DROP SCHEMA login;
                postgres    false            �            1259    32876    usuario    TABLE       CREATE TABLE login.usuario (
    id integer NOT NULL,
    nombre text NOT NULL,
    apellido text NOT NULL,
    correo text NOT NULL,
    telefono integer,
    usuario text NOT NULL,
    contrasena text NOT NULL,
    idestado integer NOT NULL,
    fotoperfil text
);
    DROP TABLE login.usuario;
       login         heap    postgres    false    6            �            1259    32874    registro_id_seq    SEQUENCE     �   CREATE SEQUENCE login.registro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE login.registro_id_seq;
       login          postgres    false    204    6            
           0    0    registro_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE login.registro_id_seq OWNED BY login.usuario.id;
          login          postgres    false    203            �
           2604    32879 
   usuario id    DEFAULT     g   ALTER TABLE ONLY login.usuario ALTER COLUMN id SET DEFAULT nextval('login.registro_id_seq'::regclass);
 8   ALTER TABLE login.usuario ALTER COLUMN id DROP DEFAULT;
       login          postgres    false    204    203    204                      0    32876    usuario 
   TABLE DATA           s   COPY login.usuario (id, nombre, apellido, correo, telefono, usuario, contrasena, idestado, fotoperfil) FROM stdin;
    login          postgres    false    204   �                  0    0    registro_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('login.registro_id_seq', 14, true);
          login          postgres    false    203            �
           2606    32884    usuario registro_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY login.usuario
    ADD CONSTRAINT registro_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY login.usuario DROP CONSTRAINT registro_pkey;
       login            postgres    false    204               �   x�M�;�0E�z��P�C,��*�d{�?бv qAy���{��I,�b����-�g/�9�������oBwv0��6�1��M=�Z7�]���u�&��b_����b"�j�g.lg;�?x����B| ��7�     