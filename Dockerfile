FROM osrm/osrm-backend

RUN apk add --update bash && rm -rf /var/cache/apk/*

COPY canary-islands-latest.osm.pbf /opt
COPY script.sh /opt
RUN chmod +x script.sh

EXPOSE 5000

CMD ["bash","script.sh"]