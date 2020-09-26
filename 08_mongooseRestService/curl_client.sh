#!/bin/bash

# CURL client to run automatically test for database
# http://localhost:3300/api/events

PORT=3300
curl -X DELETE http://localhost:$PORT/api/events
curl -X POST -i -H "Content-Type: application/json" --data '{"name":"Pop Consert","location":"Tampere"}' http://localhost:$PORT/api/events
curl -X POST -i -H "Content-Type: application/json" --data '{"name":"Football Game","location":"Oulu"}' http://localhost:$PORT/api/events
curl -X POST -i -H "Content-Type: application/json" --data '{"name":"Rock Concert","location":"Jyväskylä"}' http://localhost:$PORT/api/events
curl -X POST -i -H "Content-Type: application/json" --data '{"name":"Java Seminar","location":"Helsinki"}' http://localhost:$PORT/api/events
curl -X POST -i -H "Content-Type: application/json" --data '{"name":"Node Conference","location":"Lappeenranta"}' http://localhost:$PORT/api/events
curl -X POST -i -H "Content-Type: application/json" --data '{"name":"Node Sessio","location":"Seinäjoki"}' http://localhost:$PORT/api/events
curl -X GET http://localhost:$PORT/api/events

sleep 10s