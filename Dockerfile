# Use official lightweight JDK image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy the built JAR
COPY target/user-service-0.0.1-SNAPSHOT.jar app.jar

# Expose Cloud Run’s default port
EXPOSE 8080

# Start the app and bind to Cloud Run's port
ENTRYPOINT ["java", "-Dserver.port=${PORT}", "-jar", "app.jar"]
