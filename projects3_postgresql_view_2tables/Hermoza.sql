PGDMP     ;                    w            datama2_mi182 %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)    12.0     x           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false            y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            {           1262    16388    datama2_mi182    DATABASE     p   CREATE DATABASE datama2_mi182 WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE datama2_mi182;
                datama2mi182    false                         2615    19056 	   hahermoza    SCHEMA        CREATE SCHEMA hahermoza;
    DROP SCHEMA hahermoza;
                datama2mi182    false            �           1259    29187    customer    TABLE       CREATE TABLE hahermoza.customer (
    id character varying(3) NOT NULL,
    cus_fname character varying(20),
    cus_lname character varying(20),
    cus_cnum character varying(20),
    cus_count character varying(20),
    cus_type character varying(20)
);
    DROP TABLE hahermoza.customer;
    	   hahermoza            datama2mi182    false    32            u          0    29187    customer 
   TABLE DATA           ^   COPY hahermoza.customer (id, cus_fname, cus_lname, cus_cnum, cus_count, cus_type) FROM stdin;
 	   hahermoza          datama2mi182    false    650            u      x������ � �          x           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false            y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            {           1262    16388    datama2_mi182    DATABASE     p   CREATE DATABASE datama2_mi182 WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE datama2_mi182;
                datama2mi182    false                         2615    19056 	   hahermoza    SCHEMA        CREATE SCHEMA hahermoza;
    DROP SCHEMA hahermoza;
                datama2mi182    false            �           1259    29187    customer    TABLE       CREATE TABLE hahermoza.customer (
    id character varying(3) NOT NULL,
    cus_fname character varying(20),
    cus_lname character varying(20),
    cus_cnum character varying(20),
    cus_count character varying(20),
    cus_type character varying(20)
);
    DROP TABLE hahermoza.customer;
    	   hahermoza            datama2mi182    false    32            u          0    29187    customer 
   TABLE DATA           ^   COPY hahermoza.customer (id, cus_fname, cus_lname, cus_cnum, cus_count, cus_type) FROM stdin;
 	   hahermoza          datama2mi182    false    650   �      