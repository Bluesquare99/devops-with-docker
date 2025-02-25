FROM amazoncorretto:latest

EXPOSE 8080

ADD ./material-applications/spring-example-project ./spring-example-project

WORKDIR ./spring-example-project

RUN ./mvnw package

CMD java -jar ./target/docker-example-1.1.3.jar