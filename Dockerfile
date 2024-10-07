  # Start with an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the build/libs directory, using a wildcard to handle any version of the jar
# Use a shell command to move the correct jar file
COPY build/libs/*-SNAPSHOT.jar app.jar

# Expose the default port Spring Boot application will run on (8080)
EXPOSE 8761

# Set the entry point for the Docker container to run the JAR
ENTRYPOINT ["java", "-jar", "/app/app.jar"]