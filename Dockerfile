FROM maven:3.6.3-jdk-11-slim 
WORKDIR /tmp/hapi-fhir54-jpaserver-starter

COPY pom.xml .


COPY src/ /tmp/hapi-fhir54-jpaserver-starter/src/
RUN mvn clean install -DskipTests

EXPOSE 8090

CMD ["mvn", "jetty:run", "-Djetty.http.port=8090"]
