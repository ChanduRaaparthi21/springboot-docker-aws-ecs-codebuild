FROM public.ecr.aws/docker/library/openjdk:17
WORKDIR /app
RUN ls -l target/  # Debugging: Check if the JAR file exists
COPY ./target/springboot-docker-aws-ecs-codebuild.jar /app
EXPOSE 8080
CMD ["java", "-jar", "/app/springboot-docker-aws-ecs-codebuild.jar"]
