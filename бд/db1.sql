PGDMP                      |            plants    15.4    16.0 -    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16388    plants    DATABASE     z   CREATE DATABASE plants WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE plants;
                postgres    false            �            1259    16535    Растения    TABLE     �  CREATE TABLE public."Растения" (
    "id_растения" integer NOT NULL,
    "id_типа" integer NOT NULL,
    "id_семейства" integer NOT NULL,
    "название" character varying,
    "стоимость" integer,
    "место_происхождения" character varying,
    CONSTRAINT "Растения_стоимость_check" CHECK (("стоимость" > 0))
);
 &   DROP TABLE public."Растения";
       public         heap    postgres    false            �            1259    16534 (   Растения_id_растения_seq    SEQUENCE     �   CREATE SEQUENCE public."Растения_id_растения_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."Растения_id_растения_seq";
       public          postgres    false    219            �           0    0 (   Растения_id_растения_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."Растения_id_растения_seq" OWNED BY public."Растения"."id_растения";
          public          postgres    false    218            �            1259    16522    Семейства    TABLE     �   CREATE TABLE public."Семейства" (
    "id_семейства" integer NOT NULL,
    "название" character varying,
    "особенности" text
);
 (   DROP TABLE public."Семейства";
       public         heap    postgres    false            �            1259    16521 ,   Семейства_id_семейства_seq    SEQUENCE     �   CREATE SEQUENCE public."Семейства_id_семейства_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."Семейства_id_семейства_seq";
       public          postgres    false    217            �           0    0 ,   Семейства_id_семейства_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Семейства_id_семейства_seq" OWNED BY public."Семейства"."id_семейства";
          public          postgres    false    216            �            1259    16513    Типы_растений    TABLE     �   CREATE TABLE public."Типы_растений" (
    "id_типа" integer NOT NULL,
    "название" character varying,
    "описание" text
);
 /   DROP TABLE public."Типы_растений";
       public         heap    postgres    false            �            1259    16512 )   Типы_растений_id_типа_seq    SEQUENCE     �   CREATE SEQUENCE public."Типы_растений_id_типа_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."Типы_растений_id_типа_seq";
       public          postgres    false    215            �           0    0 )   Типы_растений_id_типа_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."Типы_растений_id_типа_seq" OWNED BY public."Типы_растений"."id_типа";
          public          postgres    false    214            �            1259    16569    Уход    TABLE     �   CREATE TABLE public."Уход" (
    "id_ухода" integer NOT NULL,
    "id_растения" integer NOT NULL,
    "дата" date,
    "операция" character varying,
    "комментарий" text
);
    DROP TABLE public."Уход";
       public         heap    postgres    false            �            1259    16568    Уход_id_ухода_seq    SEQUENCE     �   CREATE SEQUENCE public."Уход_id_ухода_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Уход_id_ухода_seq";
       public          postgres    false    223            �           0    0    Уход_id_ухода_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."Уход_id_ухода_seq" OWNED BY public."Уход"."id_ухода";
          public          postgres    false    222            �            1259    16555    Характеристики    TABLE     �   CREATE TABLE public."Характеристики" (
    "id_характеристики" integer NOT NULL,
    "id_растения" integer NOT NULL,
    "особенность" character varying,
    "значение" text
);
 2   DROP TABLE public."Характеристики";
       public         heap    postgres    false            �            1259    16554 >   Характеристики_id_характеристик_seq    SEQUENCE     �   CREATE SEQUENCE public."Характеристики_id_характеристик_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 W   DROP SEQUENCE public."Характеристики_id_характеристик_seq";
       public          postgres    false    221            �           0    0 >   Характеристики_id_характеристик_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Характеристики_id_характеристик_seq" OWNED BY public."Характеристики"."id_характеристики";
          public          postgres    false    220            "           2604    16538 $   Растения id_растения    DEFAULT     �   ALTER TABLE ONLY public."Растения" ALTER COLUMN "id_растения" SET DEFAULT nextval('public."Растения_id_растения_seq"'::regclass);
 W   ALTER TABLE public."Растения" ALTER COLUMN "id_растения" DROP DEFAULT;
       public          postgres    false    218    219    219            !           2604    16525 (   Семейства id_семейства    DEFAULT     �   ALTER TABLE ONLY public."Семейства" ALTER COLUMN "id_семейства" SET DEFAULT nextval('public."Семейства_id_семейства_seq"'::regclass);
 [   ALTER TABLE public."Семейства" ALTER COLUMN "id_семейства" DROP DEFAULT;
       public          postgres    false    217    216    217                        2604    16516 %   Типы_растений id_типа    DEFAULT     �   ALTER TABLE ONLY public."Типы_растений" ALTER COLUMN "id_типа" SET DEFAULT nextval('public."Типы_растений_id_типа_seq"'::regclass);
 X   ALTER TABLE public."Типы_растений" ALTER COLUMN "id_типа" DROP DEFAULT;
       public          postgres    false    214    215    215            $           2604    16572    Уход id_ухода    DEFAULT     �   ALTER TABLE ONLY public."Уход" ALTER COLUMN "id_ухода" SET DEFAULT nextval('public."Уход_id_ухода_seq"'::regclass);
 I   ALTER TABLE public."Уход" ALTER COLUMN "id_ухода" DROP DEFAULT;
       public          postgres    false    223    222    223            #           2604    16558 <   Характеристики id_характеристики    DEFAULT     �   ALTER TABLE ONLY public."Характеристики" ALTER COLUMN "id_характеристики" SET DEFAULT nextval('public."Характеристики_id_характеристик_seq"'::regclass);
 o   ALTER TABLE public."Характеристики" ALTER COLUMN "id_характеристики" DROP DEFAULT;
       public          postgres    false    220    221    221            �          0    16535    Растения 
   TABLE DATA           �   COPY public."Растения" ("id_растения", "id_типа", "id_семейства", "название", "стоимость", "место_происхождения") FROM stdin;
    public          postgres    false    219   �@       �          0    16522    Семейства 
   TABLE DATA           u   COPY public."Семейства" ("id_семейства", "название", "особенности") FROM stdin;
    public          postgres    false    217   /B       �          0    16513    Типы_растений 
   TABLE DATA           l   COPY public."Типы_растений" ("id_типа", "название", "описание") FROM stdin;
    public          postgres    false    215   �D       �          0    16569    Уход 
   TABLE DATA           �   COPY public."Уход" ("id_ухода", "id_растения", "дата", "операция", "комментарий") FROM stdin;
    public          postgres    false    223   H       �          0    16555    Характеристики 
   TABLE DATA           �   COPY public."Характеристики" ("id_характеристики", "id_растения", "особенность", "значение") FROM stdin;
    public          postgres    false    221   �I       �           0    0 (   Растения_id_растения_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."Растения_id_растения_seq"', 17, true);
          public          postgres    false    218            �           0    0 ,   Семейства_id_семейства_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."Семейства_id_семейства_seq"', 17, true);
          public          postgres    false    216            �           0    0 )   Типы_растений_id_типа_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."Типы_растений_id_типа_seq"', 16, true);
          public          postgres    false    214            �           0    0    Уход_id_ухода_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Уход_id_ухода_seq"', 29, true);
          public          postgres    false    222            �           0    0 >   Характеристики_id_характеристик_seq    SEQUENCE SET     o   SELECT pg_catalog.setval('public."Характеристики_id_характеристик_seq"', 45, true);
          public          postgres    false    220            /           2606    16543 &   Растения Растения_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public."Растения"
    ADD CONSTRAINT "Растения_pkey" PRIMARY KEY ("id_растения");
 T   ALTER TABLE ONLY public."Растения" DROP CONSTRAINT "Растения_pkey";
       public            postgres    false    219            +           2606    16529 *   Семейства Семейства_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Семейства"
    ADD CONSTRAINT "Семейства_pkey" PRIMARY KEY ("id_семейства");
 X   ALTER TABLE ONLY public."Семейства" DROP CONSTRAINT "Семейства_pkey";
       public            postgres    false    217            '           2606    16520 8   Типы_растений Типы_растений_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Типы_растений"
    ADD CONSTRAINT "Типы_растений_pkey" PRIMARY KEY ("id_типа");
 f   ALTER TABLE ONLY public."Типы_растений" DROP CONSTRAINT "Типы_растений_pkey";
       public            postgres    false    215            3           2606    16576    Уход Уход_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."Уход"
    ADD CONSTRAINT "Уход_pkey" PRIMARY KEY ("id_ухода", "id_растения");
 D   ALTER TABLE ONLY public."Уход" DROP CONSTRAINT "Уход_pkey";
       public            postgres    false    223    223            1           2606    16562 >   Характеристики Характеристики_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Характеристики"
    ADD CONSTRAINT "Характеристики_pkey" PRIMARY KEY ("id_характеристики", "id_растения");
 l   ALTER TABLE ONLY public."Характеристики" DROP CONSTRAINT "Характеристики_pkey";
       public            postgres    false    221    221            -           2606    16531 K   Семейства семейства_уникальное_название 
   CONSTRAINT     �   ALTER TABLE ONLY public."Семейства"
    ADD CONSTRAINT "семейства_уникальное_название" UNIQUE ("название");
 y   ALTER TABLE ONLY public."Семейства" DROP CONSTRAINT "семейства_уникальное_название";
       public            postgres    false    217            )           2606    16533 H   Типы_растений типы_уникальное_название 
   CONSTRAINT     �   ALTER TABLE ONLY public."Типы_растений"
    ADD CONSTRAINT "типы_уникальное_название" UNIQUE ("название");
 v   ALTER TABLE ONLY public."Типы_растений" DROP CONSTRAINT "типы_уникальное_название";
       public            postgres    false    215            4           2606    16549 7   Растения fk_растения_семейства    FK CONSTRAINT     �   ALTER TABLE ONLY public."Растения"
    ADD CONSTRAINT "fk_растения_семейства" FOREIGN KEY ("id_семейства") REFERENCES public."Семейства"("id_семейства") ON UPDATE CASCADE;
 e   ALTER TABLE ONLY public."Растения" DROP CONSTRAINT "fk_растения_семейства";
       public          postgres    false    217    3115    219            5           2606    16544 -   Растения fk_растения_типы    FK CONSTRAINT     �   ALTER TABLE ONLY public."Растения"
    ADD CONSTRAINT "fk_растения_типы" FOREIGN KEY ("id_типа") REFERENCES public."Типы_растений"("id_типа") ON UPDATE CASCADE;
 [   ALTER TABLE ONLY public."Растения" DROP CONSTRAINT "fk_растения_типы";
       public          postgres    false    219    3111    215            7           2606    16577 %   Уход fk_растения_уход    FK CONSTRAINT     �   ALTER TABLE ONLY public."Уход"
    ADD CONSTRAINT "fk_растения_уход" FOREIGN KEY ("id_растения") REFERENCES public."Растения"("id_растения") ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public."Уход" DROP CONSTRAINT "fk_растения_уход";
       public          postgres    false    219    223    3119            6           2606    16563 =   Характеристики fk_характ_растения    FK CONSTRAINT     �   ALTER TABLE ONLY public."Характеристики"
    ADD CONSTRAINT "fk_характ_растения" FOREIGN KEY ("id_растения") REFERENCES public."Растения"("id_растения") ON UPDATE CASCADE ON DELETE CASCADE;
 k   ALTER TABLE ONLY public."Характеристики" DROP CONSTRAINT "fk_характ_растения";
       public          postgres    false    221    3119    219            �   H  x�]QYJA�~}��%�]<�L$���?�qE!�C�`�z��Y�#����u���[׼�{lQ�k�Q�O�8
U��
�Z�R�K(�+,ф�B}��`��K��-3�s��cx$ŀ���:נ�!\��c�-4\�F��+D޺X���Ȳ�������oK��b��R��$�i亦�X�Z�sn-'�sܹ�z���C^���9˿p������+��tD�i�&��,Q;��R��nƄ	�U�`���{�1VP�bm=ŕhMiI�U%��y��N*mP�� ��x����s�<��ϩ|���9�L��j�f]%���$|����/x�.�      �   b  x��U[n�P��w^ ��6�c/]āA�|TJ�>P�_lcoafG=g��Џ~	е�q�̜;�N��L�t*��t%�������)�t��txS�A�t����@��]�N
���>S��Z 4�a����Z������R$���� ��{ �R��-�'���ʿA�8�aD���?�+�h@\�,�� '�����s�tk Lr>N;�,�[%��[H�o�ܡ��K�~��i�C]�
�9`�Y!I����LQY�/�<�XX�v��8�:ͬ�����ʦV���t�K'?��Z�(���t,�/��ZG~�+��Z�k�>�R���_p*��j�J]n�OǞaÑc~z��+M�d�6��	Fѓ�,r�48.9J����p��5M��j�Q��6�.6�`��9��t�]7�W���ϭÅ��eaR��Efˠ�l�[����N�M���r4��!v�Ðs����|����ו�j�&�x@�끗�E�ѧ�-��]�;G�'�!�}?�ܳ:]l��X&�mh��<u�k��M���F����}z��m/��ݜ�H�(��Qἷ՜^R�����[$̹͚KkoG�h��\M�^y��`�l      �   ^  x��Vmn�@�m������p�8!�(Q�	�/	�����q��
�W�Ixov�q���@*�ٝ�y���L��\ڱ�|#s��ڞ�S���)��W����[؉��df3�v�K�?�&��L�����gS\�G�2�k)�Ď�����4~�^��#���(�!��la;�%b2DX�S�)�j#y�Ogf�<дfR!�����rE�:�G�񷼎�kK�J	�8�@h��K�� ��d>��;��Ӡ.$cG�4%LKÐ�mG�Mb@����qa�
�z���aഝ2B�|��s�WW���h��Ǒ��Ɉ���$�W�rxӲ�S�|���I1�����d�Ti��'�:T+%�ৗ�fGu �H>CL�h�t@����ʭ��p<V����ݣ�Ԛ.eV��xP���#��c~k�=��B�>�'���ݸ�4��=ІN+qC��H枯J��4�R��+,��E�|���N�b�T#y����k��&��ʇN^*c���_M�7��w`�4~�9lЉ�R�XtU��X�.ff;o�����|t���ɿ��ɍOy��~�� Wݼ1�f~&� ~���ed9��;.G�F}�Bo0�N�J2�( �~�����(&ϴ���b��0����{o�*���U�ԺϚ��e���m�% R��D1��d7H��nD۱R�y-I��)1"1���N�pp�����Y�=����.���q�-HG����p���zϕW����J�2lwv�����Q=���On	<��t�|ꤥV{�@$FEE��Vv�v���U�āiS�l+��/
�bͻWl�D�7W��-/���/�8��ܚw      �   �  x���MR�@��=������.&?�r�G��B�1h��W蹑5L�cA� ��7�
)^�������#��@���Y4��^N��R�SL���'n����\?w?}��������R�q�WmW*24Z�	�Δ}�I���s�Jo�V۠mS�k� O�*v@�xf��z�c��g�"�d���RK�˶'yoݎ���*uX�� �ŭ������rl���%>u7j}�r��^��$w�2��nxC���8����@��V�� YRbǚ�F�Y3�$;0�,K��N��3�&�:��2��@�[\�� �"���r��������������^!ri�3D ���p�gFq]|��Y�'?�B�˛!� ͇�y�>�����Db��"<am����/�A��      �   �  x�u�KN�0���)8�_y܅���(R+�؀
!!XJS��W߈����,����|3�����+h�D�4��s�IM��~-�&��P��a��!����Z?�Z����
_�����W�v�H�X�+�sRcp��0��:�ϑ�%i�x���ϱW?�#?�3�ʊ�iRe�2�"1�.����(�&)&ڎh���K�e�B Z#�ޚ�r$�Ģ#�"� ��~�7^�+.��ÆF��1Ww�J��:�#l���7�'���A:J���7Y�Eٟ+C�I��(.�%C_����$tNb�-��m-uARLTY�,�y�Y��5k1�P���_*�Y�7�>9[Vcؓ��M�X��`�Ʊ�������%)&g_��B!�𚙒դ�#;hw�\��;j�^6�XM���4���!�V�/�\W'�+XV�]A�&0ݱ�/|�R�_���     