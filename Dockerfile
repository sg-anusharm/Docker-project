# Use an OpenJDK base image
FROM eclipse-temurin:11-jre

# Set the working directory
WORKDIR /app

# Copy the JAR file from the target directory into the image
COPY target/docker-demo.jar /app/docker-demo.jar

# Expose the port the app runs on (optional, depending on your app)
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/docker-demo.jar"]
