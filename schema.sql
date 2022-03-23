-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Tuw83E
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "videogames" (
    "ID" serial   NOT NULL,
    "name" VARCHAR(100)   NOT NULL,
    "units_sold" int   NOT NULL,
    "critic_score" int   NOT NULL,
    "user_score" int   NOT NULL,
    "release_date" dateTime   NOT NULL,
    "last_modified" dateTime   NOT NULL,
    CONSTRAINT "pk_videogames" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "genre_junc" (
    "ID" serial   NOT NULL,
    "videoGame_ID" int   NOT NULL,
    "genre_ID" int   NOT NULL,
    "last_modified" dateTime   NOT NULL,
    CONSTRAINT "pk_genre_junc" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "platforms" (
    "ID" serial   NOT NULL,
    "platform" VARCHAR(50)   NOT NULL,
    "last_modified" dateTime   NOT NULL,
    CONSTRAINT "pk_platforms" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "genre_id" (
    "ID" serial   NOT NULL,
    "genre" VARCHAR(50)   NOT NULL,
    "last_modified" dateTime   NOT NULL,
    CONSTRAINT "pk_genre_id" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "platform_junc" (
    "ID" serial   NOT NULL,
    "videoGame_ID" int   NOT NULL,
    "platform_ID" int   NOT NULL,
    "last_modified" dateTime   NOT NULL,
    CONSTRAINT "pk_platform_junc" PRIMARY KEY (
        "ID"
     )
);

ALTER TABLE "videogames" ADD CONSTRAINT "fk_videogames_ID" FOREIGN KEY("ID")
REFERENCES "platform_junc" ("videoGame_ID");

ALTER TABLE "genre_junc" ADD CONSTRAINT "fk_genre_junc_videoGame_ID" FOREIGN KEY("videoGame_ID")
REFERENCES "videogames" ("ID");

ALTER TABLE "platforms" ADD CONSTRAINT "fk_platforms_ID" FOREIGN KEY("ID")
REFERENCES "platform_junc" ("platform_ID");

ALTER TABLE "genre_id" ADD CONSTRAINT "fk_genre_id_ID" FOREIGN KEY("ID")
REFERENCES "genre_junc" ("genre_ID");

