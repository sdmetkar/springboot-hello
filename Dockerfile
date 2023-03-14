FROM maven:3.5-jdk-8-alpine as build

#WORKDIR /workspace/app

#COPY mvnw .
#COPY .mvn .mvn
#COPY pom.xml .
#COPY src src

#RUN mvn clean package -DskipTests


#FROM maven:3.5-jdk-8-alpine

#COPY --from=build /workspace/app/target/javaexpress-springboot-docker.jar javaexpress-springboot-docker.jar
COPY /target/javaexpress-springboot-docker.jar javaexpress-springboot-docker.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","javaexpress-springboot-docker.jar"]