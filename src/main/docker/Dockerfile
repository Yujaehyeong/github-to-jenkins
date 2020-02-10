FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
MAINTAINER 0.1 'mynameisyjh@gmail.com'
ADD gs-spring-boot-docker-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar"]