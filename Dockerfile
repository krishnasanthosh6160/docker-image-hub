FROM eclipse-temurin:17-jre-alpine
RUN mkdir -p /app/source
COPY . /app/source
WORKDIR /app/source

EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/source/target/multi-stage-example-0.0.1-SNAPSHOT.jar"]
