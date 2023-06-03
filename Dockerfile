FROM openjdk:17
EXPOSE 8080
COPY --from=build /github-cicd-actions/target/spring-boot-github-actions.jar /github-cicd-actions/spring-boot-github-actions.jar
ENTRYPOINT ["java","-jar","/github-cicd-actions/spring-boot-github-actions.jar"]
