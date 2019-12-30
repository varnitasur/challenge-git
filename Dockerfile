# Base Image
FROM openjdk:8

# Create DIR
RUN mkdir -p /usr/src/myapp

# COPY APPLICTAION COde
COPY target/spring-boot-samples-1.4.0.BUILD-SNAPSHOT.jar   /usr/src/myapp

# Setup Working DIR
WORKDIR /usr/src/myapp

#EXPOSE
EXPOSE 8080

# Start the Bot Service
CMD ["java", "-jar", "spring-boot-samples-1.4.0.BUILD-SNAPSHOT.jar"]
