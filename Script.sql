PGDMP         #                {            MarketPlace    15.3    15.3 7    9           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            :           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            <           1262    16397    MarketPlace    DATABASE     �   CREATE DATABASE "MarketPlace" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "MarketPlace";
                postgres    false            �            1259    16399    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16398    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            =           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    16406    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    16405    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            >           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    16413    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16412    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    219            ?           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    218            �            1259    16420    person    TABLE       CREATE TABLE public.person (
    id integer NOT NULL,
    email text NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    login character varying(100),
    password character varying(255),
    phone_number text NOT NULL,
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    16419    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    221            @           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    220            �            1259    16429    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16439    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    16438    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            A           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    16428    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    223            B           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    222            ~           2604    16402    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                       2604    16409    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16416 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16423 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16432 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    16442    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            ,          0    16399    category 
   TABLE DATA                 public          postgres    false    215   �<       .          0    16406    image 
   TABLE DATA                 public          postgres    false    217   D=       0          0    16413    orders 
   TABLE DATA                 public          postgres    false    219   �B       2          0    16420    person 
   TABLE DATA                 public          postgres    false    221   AE       4          0    16429    product 
   TABLE DATA                 public          postgres    false    223   �G       6          0    16439    product_cart 
   TABLE DATA                 public          postgres    false    225   �^       C           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 1, false);
          public          postgres    false    214            D           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 55, true);
          public          postgres    false    216            E           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 15, true);
          public          postgres    false    218            F           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 7, true);
          public          postgres    false    220            G           0    0    product_cart_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_cart_id_seq', 28, true);
          public          postgres    false    224            H           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 11, true);
          public          postgres    false    222            �           2606    16404    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    16411    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    16418    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            �           2606    16427    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    221            �           2606    16444    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    16437    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    223            �           2606    16448 #   person uk_2ldqhx89sy06ya51rrnndhwmc 
   CONSTRAINT     f   ALTER TABLE ONLY public.person
    ADD CONSTRAINT uk_2ldqhx89sy06ya51rrnndhwmc UNIQUE (phone_number);
 M   ALTER TABLE ONLY public.person DROP CONSTRAINT uk_2ldqhx89sy06ya51rrnndhwmc;
       public            postgres    false    221            �           2606    16446 #   person uk_fwmwi44u55bo4rvwsv0cln012 
   CONSTRAINT     _   ALTER TABLE ONLY public.person
    ADD CONSTRAINT uk_fwmwi44u55bo4rvwsv0cln012 UNIQUE (email);
 M   ALTER TABLE ONLY public.person DROP CONSTRAINT uk_fwmwi44u55bo4rvwsv0cln012;
       public            postgres    false    221            �           2606    16450 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    223            �           2606    16456 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    3212    221            �           2606    16466 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    3206    215    223            �           2606    16461 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    223    219    3218            �           2606    16451 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    223    3218    217            �           2606    16476 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    223    3218    225            �           2606    16471 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    3212    221    225            ,      x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0�[/l��5��<I3�d�ċ��.컰���
@�֋��^�qaYf�̜t�F �}�d KVG      .   Z  x�����\7F{?�t�kAJ�R�pa p��I��dl`'F�>M��m�H�xH�w�?��������?߾~�Ϗ���E?�۫���?����/������o�����������+~s{9�갥!R� �<����g�e͹Zz��?�~z��Ưx��7Qm��f���F]a��b-���\�b�:���j1H+`�B�s��y
�鹈�R�洂I_8cíN-aִJ#�� �E� �I�s�f.=X�-�Ƙ��R�s�>rY�|E�*�1vǭvɤj�|%'�+��V����d�1.xK	���xDk]�9&6g�1�[�#i��&J�>K�+9��~G+�{
�$sFr���}�ґ�<%�ȴ2Ew.#��9�ςR��լ��9r[g��P8���CfꦥY�����阹�S�"hA�@MfYA�k�4��ػ�x����S�X�u�%"	w,"!�sE����#�y8C���*�r���K�(�xҕ�s�VO�iL�������H>)j_����#�{%2BI+' ��wB���Vf��=r���rkYJpY�X�̡!5+�jr�t��y��P�5ŀn"AG��fOf�P�s=������#��<�oW��!)��:g��s��[?V��Zk0t*L �[x�.���L&��9r�Za[-rm(���l���z�'#�}�ъj`�P��X�[�)5��jW|Α�>��b��G�R�=�%{�C�h<����J���o��W�4��άK��s�Ϙ�Ij�1܋�3҄�Dm���s��ۇ���(���DX���"z����l9�n�ƙ9�G�\�B� ĵ���#��� 3�).W����0�����:Hφ�j�L�\�P�P���P1ŗ1U6�"t�L�@���ZX,"¤	/�� H��S;GnU�Ω�<��g���@�*&�#B�'�z���X�q	RjV]�c���_:Gn��\��إ����?�5l_���s�va9�bhԶ�X*X%���Ny�t���\�g�[��0t����aQ����i�:G��-%����PO��e�n�{�[X;Fn���{�`qL@�1@��T;f�T����3���T�����ްCK��А���WcZB�iu?G���X�}�r�A;��Z���(g�{~�瘲�1�*c�#L��6��*]wW�W�Α�?,��-G�C���?-��&����
P?F��n� u�be�}���B�R{l���Α�?�1p!��By8�y	�_q��ڕ�s����g�6|�^��W�;:Z���iy6��?�w�\U�fە�#��0�J5�+>��ſÝՌ      0   �  x����j�@�}�B�$�3�63ꪋ,%�&�6�M��;�I�:����5�tΙ_�w�7?�ۻ����.�^�a��e��]�rߥ��y�w9l��v�T��y�˦�^6��_�a�{m�����t��f�wi۾_w��~�ys�]��k�KЀJ�B݁5�����3x��F�� %%���A����)�K&0��b=�����\�.C���tѽ	x9� ���� �7�,g�����p �F�*`��K�Ķ�j و�� mkL���h�F�O	2j<Z�x"_����*v*��p)K(���׽��-�L��z4zp^�s����
��&+�U`��[��D����`������[�`OD�=À(��~9�������l��+:+
R� m��Wd�x�V�q }P���j��`���_�Ԝk)Jl�=���LDSs�q�JL�*/��}B �������E'�G�_����\�`�񒊂�����
Q[ٷ��(p���;�9�轁F�h'��[���0��(4����@�Ҵ���^��Szo����C�GAr
��Z��T���4�����%��i&Y���czF��ւ�A}�5����5�.�1e9���/K��P��!�9�p�C..� `�7,      2   P  x�Ŕ�n�@��y
/"��<���ġ��sI�Dc��_�zy�J�Tj����M���7��>�X�<��9����f��������:�B�I�ܞ3�s�C���.��>�p�sуl��s!�������0��x&y�.��:�z�br{ ����s�Wٙ���Nd]X��]�v�k��^�(V�XAWiخ4-<Rߴ̪ݩ6CQdƎn��ٞ�z���/J
{#�"�K�4���QC�s�/w�' �T.�����~����]�g�_����GzGһ��� x �S�$��:U�ey�P�:�0���fl��^�z	]�P�*|�S���t���nH���AG(�ʒ�N�b�R�Cq:�ujA�� 
ϘZdW;)��v������^�X�/���Y����gk7)��Ύ��h*�Z	� �vG*�e"E�^��޸�8N��%��_/
���(�J <#�R6�3a��G͆�Η�;�7���#���&��;���0�^M����-x�\iX<�/���x8>m���j1��F��� ˌ��K��AbW{��B� ������
���s�i�v�-�j+�������a1�(      4      x��\�nWv}�WTlM���&��<	=�/�%��@����2$���MS�"Y�d<qdyd'��C��MVߊ�|A�e��>u��)�0l�duW�s�e��/���|��;�%����[�G��͝��ݾu����k;7jɍk�ۿ���`[~ܾs���G�;�>�%�޹.��l߼�}�����ޔ_������������Ϸn����|��+�&�5jɫ�zse��ZZ�'�ͭ��Vcsy��ެ��*��ʻ�Y>���ك��ϳ����ɥ�d�Uk�VWf�d��'�I�u�ɷ�����|�g�������|�?���dv(�k�}p~,���4�GyO>ٛu���)����n��}ݒ�ٛ�J�ك|(��.�k����y�Ŭ����-�)�:I�s>jv_�.Kgz���䩸�e��<��:��?�EJ_��9vշ�{8�T������x�P�����]<_�:;�J(
=JM��O�}���.�U8�J���L%��c�<���s3��L��T����\J�.u�SAO�����gBy���+�,"��V��Y[�ߓ�N��H����Gx*�6X$�B��x�:�-�پȅ� u�3HGV��d#�<ѓ���Y��JO��==��N���4�2#ߏ��2��a<\>�Ш�d������L�=Rץh~)՟�t�G���~i�/�`,)��=~�A��T�
Q�����/{<V�Gk��T�fJg���ks��x�y#:IG�NN����H�2#?ܓ�E�	��f-Ϫ�5����HUt���X��S���ѻ8ˑnAu��'��=��YA*���W��Gb;܈|���j'�]9���7�c�oh�slK`A�@YN�zsu���233��te'�귄/0���'���{:\b���$��Oh��?�VD
 �}���u�P�3O�."�����){4��x���E�_FK�����P��2×z��.��@�.�n�6כ�u�zJ���(n��==����vZ<e}e���h��ٞf����0��/��?�%����e\q�>N�	 ������uqt�q/� A�BI������ ���4�O��3��>�������`K#hυI��~�#81��v+N��ݏ�Q���]���ڪa�ʟ���ొ?O��}߮g�D�8�!��}
(wB�� 4r����.�җN�� �	����O�#��{0/x@�fx�;���O��Գv-�ϰa �j�����Xl�?�G��$$���.���&�r��)d����Uո�<W�d)g��;n�b�(��9B;Oz3�-�<���>����8Ǣ�.?�=�&*U, ���!� q�2R�\V���m%�fb�|��,�l�Օ2.t�d��1�{���"� D��=,|:�0��a_�Ȫ�ָ��������f�n7�[u�������hl� �^�����ZL��q_,csW��T.�Pa2T�˶�=`2c��h�Loj�4Ox}�tq�����ݸ��2u�Ǉ�d
�x���I� ��Va�@$?��뾪�;#��Pc$ޱ$�b��0�.̛��C��*�K��>��=���n��\Ub�Y*���.k(�\�)���Q4�X�S��C6�SI�j��H?G	U�Н���e���ِ<R�1-��
_
*�<F�8�Z��#��-�?���z��46e	��9�QDhI�g��Z=k"���W�wB���[��UAt�-��H�Mɸ`�sxX�YY�#��U�Q��:d�9H�SO|�`�j��W�����O�������2�Y��g�1x��!�	��o��V)�U�Ćt��J�É�ń�3[�nۤ���N@��7�RTT���*3</~�O?�ǘ�,��7_R~� n��iZ�Q�l�Y/y.��ȓ�*[Z*2{\�@%�m�0�9�{�݂�AS�5�*k�dw�Zh`"�"�K��XJ	��Q[�1���
�А.r�E֩[�^$a�7sT���;��1�l�ܑ�Y;�t�����ۧ��d����%8�~�?$>Ͽ���2�W!���d���@�۲򋌥j��#}e~1�"�6���s�����(���԰�K�u|�C$��Z�i��D.Q0J#q�8Bˋ�^�FT�B�m���b���z����A����R��-�L�4v��J��̱�����.�e}��ڪͯS$�K��m�FSHo���,��j��w�
bG�[[T�����+�����Z[�Xo���~��6�b~+0���г�s#��Y
���V��=��}J�C�:D2��.U�e]����Q���<)���24����tb�aAr��G;VN�LĊ�XvP)�ᚩ~ꥳ)��/��A����e8W	t
~�Ĉ���$�/�?r�j�Q$Q��.�sQO<XUc�l���^$���kZ�̤��R]��e�=��C�Z؀�]p��4�9��=1dZ<T�	Ij��[�Jy�3C� z�ʠ��PK�Rl�3�ZG�9��a�\��	�^����.�kk	�z�0�\T��	]���A���
�fS�^a�e�k2-��"A�D�P�$2�(�m#��Ý�ٺm{���Qv�.��[�J&}�h33��s�{�:Nx��壨ڮ�SJ�]���ؔ|'*��t�ثn݊�/&Uh�T�BJ�R��H �֏M��JU��a����|{b� ��A��&V����Fk��Z^Ymn�n`�_��R7����� $�o��8�u��4��vȧ�ݫcLB��\�~=e��V�-��p�ˆ��Lͷ6^�_���
��v��F"�4Z�6��r�K1DXL���H���Y�@��Р��;�qH�T&���o)�kV[2��t�6���3�g 0�J̙���c�hz�;C��v��)�}�%�;7w>�%�JX����Q���Xq/s�W9�+�E�,�_�b�k��X�4h���a�mqq*eK��gݏ"+�ih��9,!�^`�FЪEwYU��+�\yC<l� �N�-¦uPݡ� ���0oϚ�V�.��zc��|�V����_7� ��ʃF ږ���������z�4eK��0%
ri����n��gt�E%Dx����G��[��ԡ۫yG�pT���^(�Z���VNT�n>�o�}�6`g�� m��j>� �?�ԅ��8�'^��ԭR+�i]K�x�� `�bOj�PZÄ}�5y���.v��+�2�������JT�\�Y��ޫ�b6t������7c�]�s@�Ǩ�>L��Bw��MG~�O�B��(�y��q$��GZ�mn�m=aD�C��ڿ�(_j�r���]�0Q�J�vP,Bb�"#���v�1��"u��2Zj'*�5�j�����k
�>�\�X\�y�&ޞ3�߇5����Y8�1/@��9����||�f�2�A�m&;K�̸�%��I$w~��ᇟ��HF�k�D
v��@�_�"�(G2�pw�b�ɘj���0[�?�{Zq �D�d;���w�9�a��C�W�ml��W[�tp��]���������.�Ëb�,u�'g��y����X]��ʂ��� B�	%W�@kh7T�aZ8��X��/��K���+zG�l(�4|���sy�����p&๵��ċ�t���I�p/��&��f�F8� E%��k#�%֡FZ�E���E̟!��<����%��3��g��5���U\�+������/il��:�Jd�%#	�kqSE���ߜb�dS)�y���"ê�q�c��Eo����a�$���8}�	�g~��8�,�kun���젗s�˽��0�y�>��cSs�J��wr6���ai-� H�^�X���ǈiOg�Q�I�v`���y�c�Ш���g��>�=i��,����"�2B�M�#���i(ŕ5����G��L�2�Pe��a�	a�}�n+:`�*k�F���Q4��E��Y�m�'F1>#������9�t����V�"���U'C�iA1ȱ�6r�0�i1����s�GI���=���+C�8��!�Uz����9�>I,�0^|�Ck�y_�JKs|6��U�w0���2��|ӫ_��VI0@�=����:| �  e�C1Ŭ�qe�<\��M.�����͉��9u�&3�q��p$�ܾK����d����gbS�9j`qjuu��'��BV�?�X��/h ��CZ(ϜcZr�7�PV6�����vwo}�j�s�0��qZ�#N��J}ycuss������YG�,;�ͅ1�����Y{I��_��/�	Ә[Y�5��a����2"P(��9�i�܏��W0�.�_U��r-��y����(Uc/606d��\~U��A��I�pn]�������֭���*����""���Q�,@�'���W�P�]��s���̠����m�[��V����jl���Ǭ{��;5��8���.�����1]4�M�V�[��[�U�J���Ƕ:��T����=jI��e6�u����7�鰌� mf��F\3����}��]�D������l�};�y|w�0����֒4M�p��4����V� Lxch����"���|6����'�]
cX6j�s� �=#|x��).���O:Ӆga��"[b�S^��q0�qL�
C�"͛2���.������LF����F���iG�/-�&���9��y��R�͔�e]�������V<k���Ѕ"�KM����2i-�(���n,=���^{�t�M�6'3���|��בA0��q�湘�	��DC���N���0L�f!_�m��.��C'e�Ro�D/$���5H�on�_.H��}��۟p�iU�e��H]ѧD��O]�kɛ�_����@hD$@�x������X�`���X�Z�ʒ��� 5�?��3 �?��˫}�l�a {���� u������7^�`,���܍�V�����̥�D�Ǡ���	���� ]}G"bm7q��h\��xq�:f�B�_t���ykw���߱)r��oxb�$t���>�d��_��Q3��j���u�Ȅ'��aG�wy��s�R�CN�A~�;C���>��S}�)�� �1(B�8����g�������x9Ycv�X!���O-�ꅝz�aڏ&�iJ�J�`�X����F0�xWVuxX�Z�^��*B�7��Gir��w��n�?�:�����H�ny@R�)��Aj��q����&�3���\�ZK�`]�hr	[�I�{����^�!��ŀ3Nf�x�8�-B��Z?aXLZ$����.�Ԟ6�1�3$EV�qW.��]3_�u^�����Q��k�7�~���	s�	�Tf���O�ɐc��"�ڒ|�^�jF��u�k>�T�U���۷n^��sG����R@����A��xCw�ZK^{�����y��K?���9�V�Z[���F���l`��UV�BB���G�����o�gsc���9�ȉ�+�y[��Q{�����ظ�Pd��:c>��M4�W��	�Œ2A�]��kJ>��Q&V;1\@�m[���^�T��aUAo�cj2���0S
|��;�DR/�)���E�_��0'�-�:^���0����&���N6���B� �c/ӛV����}�6�����<�Z~��V�.����f-�����p"3�<Q4'MQ��oqY�EbŔ���Ab�3�0)B��"=���9��*��J�]�n��R�Щ�ZV�������,'�HC)��b�����4���+c���p?���%��@��(��K:�W�°��=��9_�ð���ä>bQ���"��Bj5xTB(l�5�a�^���0e/ �E*%�՘��+k��K��Zl���~��奍z���l�.�/@�W^�q���      6   
   x���         