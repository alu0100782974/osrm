FROM osrm/osrm-backend

COPY canary-islands-latest.osm.pbf /opt

EXPOSE 5000

#osrm-extract -p car.lua canary-islands-latest.osm.pbf

#ENTRYPOINT ["tail", "-f", "/etc/passwd"]