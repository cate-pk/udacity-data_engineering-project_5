DROP TABLE IF EXISTS public.staging_events;
DROP TABLE IF EXISTS public.staging_songs;
DROP TABLE IF EXISTS public.songplays;
DROP TABLE IF EXISTS public.users;
DROP TABLE IF EXISTS public.songs;
DROP TABLE IF EXISTS public.artists;
DROP TABLE IF EXISTS public.time;


CREATE TABLE public.artists (
	artistid    VARCHAR(256) NOT NULL,
	name        VARCHAR(256),
	location    VARCHAR(256),
	lattitude   NUMERIC(18,0),
	longitude   NUMERIC(18,0)
);

CREATE TABLE public.songplays (
	playid      VARCHAR(32)   NOT NULL,
	start_time  TIMESTAMP     NOT NULL,
	userid      INT4          NOT NULL,
	"level"     VARCHAR(256),
	songid      VARCHAR(256),
	artistid    VARCHAR(256),
	sessionid   INT4,
	location    VARCHAR(256),
	user_agent  VARCHAR(256),
	CONSTRAINT songplays_pkey PRIMARY KEY (playid)
);

CREATE TABLE public.songs (
	songid     VARCHAR(256) NOT NULL,
	title      VARCHAR(256),
	artistid   VARCHAR(256),
	"year"     INT4,
	duration   NUMERIC(18,0),
	CONSTRAINT songs_pkey PRIMARY KEY (songid)
);

CREATE TABLE public.staging_events (
	artist         VARCHAR(256),
	auth           VARCHAR(256),
	firstname      VARCHAR(256),
	gender         VARCHAR(256),
	iteminsession  int4,
	lastname       VARCHAR(256),
	length         NUMERIC(18,0),
	"level"        VARCHAR(256),
	location       VARCHAR(256),
	"method"       VARCHAR(256),
	page           VARCHAR(256),
	registration   NUMERIC(18,0),
	sessionid      INT4,
	song           VARCHAR(256),
	status         INT4,
	ts             INT8,
	useragent      VARCHAR(256),
	userid         INT4
);

CREATE TABLE public.staging_songs (
	num_songs         INT4,
	artist_id         VARCHAR(256),
	artist_name       VARCHAR(256),
	artist_latitude   NUMERIC(18,0),
	artist_longitude  NUMERIC(18,0),
	artist_location   VARCHAR(256),
	song_id           VARCHAR(256),
	title             VARCHAR(256),
	duration          NUMERIC(18,0),
	"year"            INT4
);

CREATE TABLE public."time" (
	start_time  TIMESTAMP NOT NULL,
	"hour"      INT4,
	"day"       INT4,
	week        INT4,
	"month"     VARCHAR(256),
	"year"      INT4,
	weekday     VARCHAR(256),
	CONSTRAINT time_pkey PRIMARY KEY (start_time)
);

CREATE TABLE public.users (
	userid      INT4 NOT NULL,
	first_name  VARCHAR(256),
	last_name   VARCHAR(256),
	gender      VARCHAR(256),
	"level"     VARCHAR(256),
	CONSTRAINT users_pkey PRIMARY KEY (userid)
);

CREATE TABLE time (
    start_time TIMESTAMP PRIMARY KEY,
    hour       INTEGER,
    day        INTEGER,
    week       INTEGER,
    month      INTEGER,
    year       INTEGER,
    weekday    INTEGER
)



