# Start with a base image containing Java runtime
FROM openjdk:17-alpine

# Add Working directory
WORKDIR /build

# Copy all project to working directory
COPY . .

# Add maven wrapper to executable file
COPY --chmod=0755 mvnw mvnw

# Run Spring boot using maven wrapper
ENTRYPOINT ["./mvnw","spring-boot:run"]
