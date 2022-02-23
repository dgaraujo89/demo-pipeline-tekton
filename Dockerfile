FROM openjdk:11.0-jdk-slim

WORKDIR /app

COPY target/*.jar ./application.jar
COPY entrypoint.sh ./entrypoint.sh

RUN chmod u+x entrypoint.sh

EXPOSE 8080

ENTRYPOINT [ "./entrypoint.sh" ]