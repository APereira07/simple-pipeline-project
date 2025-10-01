# Use OpenJDK 17
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the Maven-built JAR into the container
COPY target/simple-pipeline-project-1.0-SNAPSHOT.jar app.jar

# Command to run your Calculator class
CMD ["java", "-cp", "app.jar", "com.example.Calculator"]
