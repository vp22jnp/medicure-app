# Use the correct OpenJDK base image
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the host's target directory to the container's /app directory
COPY target/*.jar app.jar

# Expose port 8081 to the outside world
EXPOSE 8082

# Command to run the application when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]

