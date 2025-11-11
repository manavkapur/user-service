# Use a lightweight JDK image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy the built jar
COPY target/user-service.jar app.jar

# Expose Cloud Run port
EXPOSE 8080

# Start the app on the Cloud Run port
ENTRYPOINT ["java", "-jar", "/app.jar"]
