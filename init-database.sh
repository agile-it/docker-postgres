#!/bin/bash
gosu postgres postgres --single -E <<- EOSQL
	create user $DB_NAME with login encrypted password '$DB_NAME';
	create database $DB_NAME owner $DB_NAME;
EOSQL
