FROM azul/zulu-openjdk-alpine:19.0.1-19.30.11

COPY target/germany-latest.osm.pbf /app/germany-latest.osm.pbf
COPY target/railway_routing-0.0.1-SNAPSHOT.jar /app/app.jar