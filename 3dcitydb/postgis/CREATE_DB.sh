#!/bin/sh
# Shell script to create an instance of the 3D City Database
# on PostgreSQL/PostGIS

# Provide your database details here
export PGPORT=5432
export PGHOST=localhost
export PGUSER=cityviz
export CITYDB=cityviz
export PGBIN="/Applications/Postgres.app/Contents/Versions/9.4/bin"

# cd to path of the shell script
cd "$( cd "$( dirname "$0" )" && pwd )" > /dev/null

# Run CREATE_DB.sql to create the 3D City Database instance
"$PGBIN/psql" -d "$CITYDB" -f "CREATE_DB.sql"