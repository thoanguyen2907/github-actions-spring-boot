FROM maven:2.7.12-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline -B
COPY src src
RUN mvn package -DskipTests

FROM openjdk:17
WORKDIR /app
EXPOSE 8080
COPY --from=build /app/target/spring-boot-github-actions.jar /app/spring-boot-github-actions.jar
ENTRYPOINT ["java","-jar","/app/spring-boot-github-actions.jar"]
