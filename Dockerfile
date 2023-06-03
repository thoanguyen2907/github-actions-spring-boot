FROM openjdk:17
EXPOSE 8080
COPY --from=build target/spring-boot-github-actions.jar spring-boot-github-actions.jar
ENTRYPOINT ["java","-jar","/spring-boot-github-actions.jar"]
