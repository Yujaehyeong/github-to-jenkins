# openjdk 8
FROM java:8

# data directory
# Add a volume to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
# EXPOSE 8080

# The application's jar file
ARG JAR_FILE=Spring/build/libs/demo-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} demo.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/demo.jar"]