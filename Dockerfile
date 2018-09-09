#FROM openjdk:8-jdk-alpine
#VOLUME /tmp
#ARG JAR_FILE
#ADD ${JAR_FILE} demo-spring-boot-docker-0.0.1-SNAPSHOT.jar
#EXPOSE 8085
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/demo-spring-boot-docker-0.0.1-SNAPSHOT.jar"]

# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
MAINTAINER Rajeev Kumar Singh <callicoder@gmail.com>

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/demo-spring-boot-docker-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} demo-spring-boot-docker.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/demo-spring-boot-docker.jar"]

