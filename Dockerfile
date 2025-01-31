# Stage 1: Build the application
FROM eclipse-temurin:17-alpine AS builder

# Set the working directory
WORKDIR /app

# Copy the application code
COPY . .

# Given permissions to mvnw
RUN chmod +x mvnw

# Build the application (requires Maven or Gradle)
RUN ./mvnw clean package -DskipTests

# Stage 2: Run the application
FROM tomee:webprofile

# Set the working directory
WORKDIR /app

# Copy the JAR file from the builder stage
COPY --from=builder /app/target/CaC-tp-final-backend-0.1-SNAPSHOT.war /usr/local/tomee/webapps/

# Expose the port the app will run on
EXPOSE 8080

# Command to run the application
#ENTRYPOINT ["java", "-jar", "app.jar"]
