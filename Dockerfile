FROM openjdk:17
WORKDIR /app
COPY target/springboot-docker-aws-ecs-codebuild.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "/app/app.jar"]
