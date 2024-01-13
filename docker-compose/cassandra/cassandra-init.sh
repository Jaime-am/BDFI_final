#!/usr/bin/env bash

printf "Esperando despliegue de Cassandra" && sleep 30;
echo "Creating keyspace and table..."
cqlsh cassandra -u cassandra -p cassandra -e "CREATE KEYSPACE IF NOT EXISTS agile_data_science WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};"
cqlsh cassandra -u cassandra -p cassandra -e "CREATE TABLE IF NOT EXISTS agile_data_science.flight_delay_classification_response (Origin TEXT, DayOfWeek INT, DayOfYear INT, DayOfMonth INT, Dest TEXT, DepDelay DOUBLE, Timestamp TIMESTAMP, FlightDate DATE, Carrier TEXT, UUID UUID PRIMARY KEY, Distance INT, Route TEXT, Prediction INT);"