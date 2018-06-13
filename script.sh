#!/bin/sh
osrm-extract canary-islands-latest.osm.pbf -p car.lua;
osrm-contract canary-islands-latest.osrm;
osrm-routed --port $PORT canary-islands-latest.osrm;