#!/usr/bin/env bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
CREATE TABLE response(
  ID SERIAL PRIMARY KEY NOT NULL,
  PHRASE CHAR(6)
);
INSERT INTO response(PHRASE) VALUES('world!');
EOSQL
