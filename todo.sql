PGDMP     	                    z           todo    14.2    14.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    26017    todo    DATABASE     `   CREATE DATABASE todo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Czech_Czechia.1250';
    DROP DATABASE todo;
                postgres    false            �            1259    26044 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    26043    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    216            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215            �            1259    26053    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    26052    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    218            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217            �            1259    26037    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    26036    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    214            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213            �            1259    26060 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    26069    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    26068    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    222            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    221            �            1259    26059    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    220            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    219            �            1259    26076    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    26075 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    223            �            1259    26135    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    26134    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    226            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    225            �            1259    26028    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    26027    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    211            �            1259    26019    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    26018    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            �            1259    26164    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    26174    todo_list_priority    TABLE     �   CREATE TABLE public.todo_list_priority (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    color_type character varying(255)
);
 &   DROP TABLE public.todo_list_priority;
       public         heap    postgres    false            �            1259    26173    todo_list_priority_id_seq    SEQUENCE     �   CREATE SEQUENCE public.todo_list_priority_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.todo_list_priority_id_seq;
       public          postgres    false    229            �           0    0    todo_list_priority_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.todo_list_priority_id_seq OWNED BY public.todo_list_priority.id;
          public          postgres    false    228            �            1259    26181    todo_list_state    TABLE     j   CREATE TABLE public.todo_list_state (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);
 #   DROP TABLE public.todo_list_state;
       public         heap    postgres    false            �            1259    26180    todo_list_state_id_seq    SEQUENCE        CREATE SEQUENCE public.todo_list_state_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.todo_list_state_id_seq;
       public          postgres    false    231            �           0    0    todo_list_state_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.todo_list_state_id_seq OWNED BY public.todo_list_state.id;
          public          postgres    false    230            �            1259    26195    todo_list_task    TABLE     �   CREATE TABLE public.todo_list_task (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    deadline date,
    list_id_id bigint NOT NULL,
    priority_id_id bigint,
    state_id_id bigint
);
 "   DROP TABLE public.todo_list_task;
       public         heap    postgres    false            �            1259    26194    todo_list_task_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.todo_list_task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.todo_list_task_id_seq;
       public          postgres    false    235            �           0    0    todo_list_task_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.todo_list_task_id_seq OWNED BY public.todo_list_task.id;
          public          postgres    false    234            �            1259    26188    todo_list_todolist    TABLE     m   CREATE TABLE public.todo_list_todolist (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);
 &   DROP TABLE public.todo_list_todolist;
       public         heap    postgres    false            �            1259    26187    todo_list_todolist_id_seq    SEQUENCE     �   CREATE SEQUENCE public.todo_list_todolist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.todo_list_todolist_id_seq;
       public          postgres    false    233            �           0    0    todo_list_todolist_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.todo_list_todolist_id_seq OWNED BY public.todo_list_todolist.id;
          public          postgres    false    232            �           2604    26047    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    26056    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    26040    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            �           2604    26063    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    26072    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    26079    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    26138    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    26031    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    26022    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    26177    todo_list_priority id    DEFAULT     ~   ALTER TABLE ONLY public.todo_list_priority ALTER COLUMN id SET DEFAULT nextval('public.todo_list_priority_id_seq'::regclass);
 D   ALTER TABLE public.todo_list_priority ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    26184    todo_list_state id    DEFAULT     x   ALTER TABLE ONLY public.todo_list_state ALTER COLUMN id SET DEFAULT nextval('public.todo_list_state_id_seq'::regclass);
 A   ALTER TABLE public.todo_list_state ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    26198    todo_list_task id    DEFAULT     v   ALTER TABLE ONLY public.todo_list_task ALTER COLUMN id SET DEFAULT nextval('public.todo_list_task_id_seq'::regclass);
 @   ALTER TABLE public.todo_list_task ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    26191    todo_list_todolist id    DEFAULT     ~   ALTER TABLE ONLY public.todo_list_todolist ALTER COLUMN id SET DEFAULT nextval('public.todo_list_todolist_id_seq'::regclass);
 D   ALTER TABLE public.todo_list_todolist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �          0    26044 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   =�       �          0    26053    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   Z�       �          0    26037    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   w�       �          0    26060 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   �       �          0    26069    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   �       �          0    26076    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   ��       �          0    26135    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   �       ~          0    26028    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   ��       |          0    26019    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   =�       �          0    26164    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    227   �       �          0    26174    todo_list_priority 
   TABLE DATA           B   COPY public.todo_list_priority (id, name, color_type) FROM stdin;
    public          postgres    false    229   	�       �          0    26181    todo_list_state 
   TABLE DATA           3   COPY public.todo_list_state (id, name) FROM stdin;
    public          postgres    false    231   S�       �          0    26195    todo_list_task 
   TABLE DATA           e   COPY public.todo_list_task (id, name, deadline, list_id_id, priority_id_id, state_id_id) FROM stdin;
    public          postgres    false    235   ��       �          0    26188    todo_list_todolist 
   TABLE DATA           6   COPY public.todo_list_todolist (id, name) FROM stdin;
    public          postgres    false    233   f�       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
          public          postgres    false    213            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    221            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    219            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    223            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 3, true);
          public          postgres    false    225            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          postgres    false    211            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          postgres    false    209            �           0    0    todo_list_priority_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.todo_list_priority_id_seq', 1, false);
          public          postgres    false    228            �           0    0    todo_list_state_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.todo_list_state_id_seq', 1, false);
          public          postgres    false    230            �           0    0    todo_list_task_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.todo_list_task_id_seq', 8, true);
          public          postgres    false    234            �           0    0    todo_list_todolist_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.todo_list_todolist_id_seq', 3, true);
          public          postgres    false    232            �           2606    26162    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            �           2606    26092 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            �           2606    26058 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            �           2606    26049    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            �           2606    26083 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            �           2606    26042 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214            �           2606    26074 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222            �           2606    26107 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222            �           2606    26065    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    220            �           2606    26081 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    224            �           2606    26121 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    224    224            �           2606    26157     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    220            �           2606    26143 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226            �           2606    26035 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            �           2606    26033 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            �           2606    26026 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            �           2606    26170 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    227            �           2606    26179 *   todo_list_priority todo_list_priority_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.todo_list_priority
    ADD CONSTRAINT todo_list_priority_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.todo_list_priority DROP CONSTRAINT todo_list_priority_pkey;
       public            postgres    false    229            �           2606    26186 $   todo_list_state todo_list_state_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.todo_list_state
    ADD CONSTRAINT todo_list_state_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.todo_list_state DROP CONSTRAINT todo_list_state_pkey;
       public            postgres    false    231            �           2606    26200 "   todo_list_task todo_list_task_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.todo_list_task
    ADD CONSTRAINT todo_list_task_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.todo_list_task DROP CONSTRAINT todo_list_task_pkey;
       public            postgres    false    235            �           2606    26193 *   todo_list_todolist todo_list_todolist_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.todo_list_todolist
    ADD CONSTRAINT todo_list_todolist_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.todo_list_todolist DROP CONSTRAINT todo_list_todolist_pkey;
       public            postgres    false    233            �           1259    26163    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            �           1259    26103 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            �           1259    26104 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            �           1259    26089 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214            �           1259    26119 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222            �           1259    26118 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222            �           1259    26133 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    224            �           1259    26132 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    224            �           1259    26158     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    220            �           1259    26154 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226            �           1259    26155 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226            �           1259    26172 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    227            �           1259    26171 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    227            �           1259    26216 "   todo_list_task_list_id_id_a45eb393    INDEX     c   CREATE INDEX todo_list_task_list_id_id_a45eb393 ON public.todo_list_task USING btree (list_id_id);
 6   DROP INDEX public.todo_list_task_list_id_id_a45eb393;
       public            postgres    false    235            �           1259    26217 &   todo_list_task_priority_id_id_ef406551    INDEX     k   CREATE INDEX todo_list_task_priority_id_id_ef406551 ON public.todo_list_task USING btree (priority_id_id);
 :   DROP INDEX public.todo_list_task_priority_id_id_ef406551;
       public            postgres    false    235            �           1259    26218 #   todo_list_task_state_id_id_d0a10207    INDEX     e   CREATE INDEX todo_list_task_state_id_id_d0a10207 ON public.todo_list_task USING btree (state_id_id);
 7   DROP INDEX public.todo_list_task_state_id_id_d0a10207;
       public            postgres    false    235            �           2606    26098 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3252    218    214            �           2606    26093 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3257    218    216            �           2606    26084 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    214    3247    212            �           2606    26113 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3257    222    216            �           2606    26108 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3265    222    220            �           2606    26127 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    3252    224    214            �           2606    26122 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3265    224    220            �           2606    26144 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    226    212    3247            �           2606    26149 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    226    220    3265            �           2606    26201 J   todo_list_task todo_list_task_list_id_id_a45eb393_fk_todo_list_todolist_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.todo_list_task
    ADD CONSTRAINT todo_list_task_list_id_id_a45eb393_fk_todo_list_todolist_id FOREIGN KEY (list_id_id) REFERENCES public.todo_list_todolist(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.todo_list_task DROP CONSTRAINT todo_list_task_list_id_id_a45eb393_fk_todo_list_todolist_id;
       public          postgres    false    233    3294    235            �           2606    26206 N   todo_list_task todo_list_task_priority_id_id_ef406551_fk_todo_list_priority_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.todo_list_task
    ADD CONSTRAINT todo_list_task_priority_id_id_ef406551_fk_todo_list_priority_id FOREIGN KEY (priority_id_id) REFERENCES public.todo_list_priority(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.todo_list_task DROP CONSTRAINT todo_list_task_priority_id_id_ef406551_fk_todo_list_priority_id;
       public          postgres    false    3290    229    235            �           2606    26211 H   todo_list_task todo_list_task_state_id_id_d0a10207_fk_todo_list_state_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.todo_list_task
    ADD CONSTRAINT todo_list_task_state_id_id_d0a10207_fk_todo_list_state_id FOREIGN KEY (state_id_id) REFERENCES public.todo_list_state(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.todo_list_task DROP CONSTRAINT todo_list_task_state_id_id_d0a10207_fk_todo_list_state_id;
       public          postgres    false    231    3292    235            �      x������ � �      �      x������ � �      �   �  x�]�In�0E��)|�"2�{�����
,�En_��Hf'����պ�qi�ijn�ڄ%�O׺���j(}��k\��P��p
��-�- ��g��h_��a��S���:P��?h9��b��ϰ$�ؓ(w���5>�A8�v��xN^��ډ�!����}5x����ѷ��OSZ��^o'��#p��4��8<�͗���՚���j��oOZ�&!ß��O~��v��B��a�j������ɻ0�Y1�v�H�b*��UET��9�s~�#�J�٘�!��͸���
��񮐤;�1w*gߛt�o	�nF��Q�f oǒ��)6�9ew��XJߛ��t5�7(i	��o@�L~Aӷ�>=�mgߛ�󘝀0Ig�U
1�l�����{�o�      �   �   x�=��
�@F��S�pN3��2BV`�S*�k���Z��'-:�oq�E��\����2��CgQm�te��f'3pl�k��im��j�a����4m�g,�H0��s�u��lg�� H�K�(�)��9e\@zE��opعy���k�&�����?@�A�E���о �� _״5�      �      x������ � �      �      x������ � �      �   �   x��̻�  ����Քp/����_P;�����c���v֥ۙ)�J�Ji����9��,¶���ı;\�E��8������X�����}M��V����No��i%إ���ٱ��QK�t��)ְ�m7��K���D�      ~   w   x�M��
�@��F���� Kj��,Izط�Z���LGi�%Ӥ#簊�%^T�fq�8ne4]
N�,Ά3���E-��Bο���+���ă���Dŭ�)�����}[����� i�A;      |   �  x����n�0���)��j�s���,W��ĥ��S5om'%T�
6f>ϙ3 �9�)]G;5��np�� A|%���NO(��S	��6fN���r���6�һa��q,��!@�C�mƫ��V�ۃ6��6�#�z){0胑uڜ��~������y�m��L�~���r���m�DP��Ēj㓍z��w�T,��ͧ�v��[�(ժ��\P􎚧���q�)E1¡P�Biה�v��H�
��`k�7S*ѻ<��W.��.`�����%ޚ�.�mC�(��£��n��xw1)ĩn�����4������u�Nn��$f��f�]8�GB�@�J�+�}���Q]���k��/���z�����/�\�Z@X�����Žc1J��C����֧�	�b[e�I��wSڡS�A�����.D���r>�4n� 8�:a{� &���x8��z�      �   �  x�-�ێ�0  ���+�}�i��7E��Hg�	Aʥ
���&��/874��x�ABv��:��E�)�X���Rں;��צ�v����y�$��uq��>���9=���OJR��\xU�`�M�۷�^���s,c����'�ʴ3�$%U��*���>2�v7�s�M�ͷ���ۡ�|�ŧ��hC��ƛ���>�Հ#Sݣ����s�2�G+j�6��,�9��1�}٬�Z������<�y *��xq%�%RUY�� ~Q5JŊz�˪H�*���<S��׿=��������Û�٦!��1mc�>��+MJ�"���C�l�W��*$��{>�w�C�9��V�y(��e�҂v8�)cl�"*���0'��n9�$M�|7�YK0��~�v 9h'����e�]��l��2ݿ�����	 q�H�ɗPQ��L�p�a�OfUKc��<�������O�V�&-T��].����      �   :   x�3���/�,(��M,��2��MM�,��,O,���K�2���L��LI�KO-����� ��      �   "   x�3�tL.�,K�2�t��-�I-IM����� g&+      �   �   x�}��n�0�g�)�.�c�E{i=f1d�V�D���W��M���}�;��n½���x-�.�c!kPi�0�.���0�h@	���u�aiՔ̚iӏ{�|�f�$*x��`�|���ϧ�)^��'C��Br�)�X���Ƶ�,3�D[���V������%���,������/<��	�=x�b��c%vB�o^_�      �   $   x�3��w��2�N�����2��/������ k<�     