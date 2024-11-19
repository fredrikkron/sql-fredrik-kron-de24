-- DDL - data definition language
CREATE SCHEMA IF NOT EXISTS database;

CREATE SCHEMA IF NOT EXISTS programming;

SELECT * FROM information_schema.schemata;

CREATE SEQUENCE IF NOT EXISTS id_sql_sequence START 1;

CREATE SEQUENCE IF NOT EXISTS id_python_sequence START 1;

CREATE SEQUENCE IF NOT EXISTS id_duckdb_sequence START 1;

SELECT * FROM pg_catalog.pg_sequences;

CREATE TABLE IF NOT EXISTS database.duckdb (
	id INTEGER DEFAULT nextval('id_duckdb_sequence'),
	word STRING,
	description STRING,
);

CREATE TABLE IF NOT EXISTS database.sql (
	word STRING,
	description STRING);

CREATE SCHEMA IF NOT EXISTS programming;

CREATE TABLE IF NOT EXISTS programming.python (
	word STRING,
	description STRING);

CREATE TABLE IF NOT EXISTS programming.c_sharp (
	word STRING,
	description STRING);




