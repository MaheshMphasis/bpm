# Start with a base image containing Java runtime (mine java 8)
FROM maven:3.8.6-openjdk-17 as be-build-stage
# Add Maintainer Info
LABEL maintainer="maheh@gmail.com"
# Add a volume pointing to /tmp
VOLUME /tmp
# Make port 8080 available to the world outside this container
EXPOSE 8080
# The application's jar file (when packaged)
ARG JAR_FILE=target/bpm-0.0.1-SNAPSHOT.jar
# Add the application's jar to the container
ADD ${JAR_FILE} bpm.jar
# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/bpm.jar"]
