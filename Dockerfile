# Use lightweight Java 17 image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Build the JAR (skip tests for speed)
RUN ./mvnw clean package -DskipTests

# Expose port (Render injects PORT)
EXPOSE 8086

# Run the built JAR
ENTRYPOINT ["java", "-jar", "target/user-service-0.0.1-SNAPSHOT.jar"]
