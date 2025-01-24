
FROM openjdk:17.0.1-jdk-slim

WORKDIR /app


#COPY target/*.jar app.jar

COPY target/homemade-erp-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
