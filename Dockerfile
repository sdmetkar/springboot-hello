FROM maven:3.5-jdk-8-alpine as build

WORKDIR /app

COPY pom.xml .
COPY src src

RUN mvn --batch-mode --update-snapshots package -Dmaven.test.skip=true

#FROM openjdk:8-jdk-alpine

#COPY --from=build /app/target/javaexpress-springboot-docker.jar javaexpress-springboot-docker.jar
COPY /target/javaexpress-springboot-docker.jar javaexpress-springboot-docker.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","javaexpress-springboot-docker.jar"]