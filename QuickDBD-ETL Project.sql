﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/pT4osH
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Streaming" (
    "Title_S" VARCHAR   NOT NULL,
    "Released_Year" int   NOT NULL,
    "Age" VARCHAR   NOT NULL,
    "IMDB_rating" float   NOT NULL,
    "Rotten_Tomatoes" VARCHAR   NOT NULL,
    "Netflix" int   NOT NULL,
    "Hulu" int   NOT NULL,
    "Prime_Video" int   NOT NULL,
    "Disney_Plus" int   NOT NULL,
    "Director" VARCHAR   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "Language_Spoken" VARCHAR   NOT NULL,
    "Runtime" int   NOT NULL
);

CREATE TABLE "IMDB" (
    "Title_I" VARCHAR   NOT NULL,
    "Year_Released" int   NOT NULL,
    "Genre" VARCHAR   NOT NULL,
    "Duration" int   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "Language_Spoken" VARCHAR   NOT NULL,
    "Description" VARCHAR   NOT NULL,
    "Avg_votes" float   NOT NULL,
    "Votes" int   NOT NULL,
    CONSTRAINT "pk_IMDB" PRIMARY KEY (
        "Title_I"
     )
);

ALTER TABLE "IMDB" ADD CONSTRAINT "fk_IMDB_Title_I" FOREIGN KEY("Title_I")
REFERENCES "Streaming" ("Title_S");

