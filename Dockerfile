FROM maven:3.5-jdk-8-alpine as build

WORKDIR /app

COPY pom.xml .
COPY src src

RUN mvn clean package -DskipTests


FROM eclipse-temurin:17-jre-alpine

COPY --from=build /app/target/javaexpress-springboot-docker.jar javaexpress-springboot-docker.jar
#COPY /target/javaexpress-springboot-docker.jar javaexpress-springboot-docker.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","javaexpress-springboot-docker.jar"]