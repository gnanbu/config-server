# Use the JDK 17 base image
FROM openjdk:17-jdk-slim
RUN apt-get update && apt-get upgrade -y bash wget curl
# Copy your built jar file into the image
COPY target/*.jar config-server.jar

# Set the entrypoint to run your application
ENTRYPOINT ["java","-jar","/config-server.jar"]
