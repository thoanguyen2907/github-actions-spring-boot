FROM openjdk:17
WORKDIR /app
EXPOSE 8080
COPY --from=build /app/target/spring-boot-github-actions.jar /app/spring-boot-github-actions.jar
ENTRYPOINT ["java","-jar","/app/spring-boot-github-actions.jar"]
