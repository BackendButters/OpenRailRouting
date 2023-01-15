FROM azul/zulu-openjdk-alpine:19.0.1-19.30.11

COPY target/germany-latest.osm.pbf /app/germany-latest.osm.pbf
COPY target/railway_routing-0.0.1-SNAPSHOT.jar /app/app.jar
COPY target/graph-cache /app/graph-cache

EXPOSE 8989

CMD java -Xmx1024m -Xms1024m -Ddw.graphhopper.prepare.ch.weightings=no -Ddw.graphhopper.datareader.file=/app/germany-latest.osm.pbf -Ddw.graphhopper.graph.location=/app/graph-cache -jar /app/app.jar serve config.yml