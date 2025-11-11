FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app
COPY target/user-service.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-Dserver.port=${PORT}", "-jar", "/app.jar"]
