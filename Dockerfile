FROM openjdk:11.0-jdk-slim

WORKDIR /app

ADD target/*.jar ./application.jar
ADD entrypoint.sh ./entrypoint.sh

RUN chmod u+x entrypoint.sh

EXPOSE 8080

ENTRYPOINT [ "./entrypoint.sh" ]