FROM kurron/docker-oracle-jdk-8:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

LABEL org.kurron.name="JVM Guy Configuration Server" org.kurron.ide.version=1.0.4

ADD https://bintray.com/artifact/download/kurron/maven/org/kurron/jvm-guy-configuration-server/1.0.4.RELEASE/jvm-guy-configuration-server-1.0.4.RELEASE.jar /opt/server.jar

WORKDIR /opt

# Common override points
ENV SPRING_APPLICATION_NAME configuration-server 
ENV SPRING_CLOUD_CONFIG_SERVER_GIT_URI https://github.com/kurron/spring-configuration-files.git 
ENV SPRING_CLOUD_CONSUL_HOST localhost 
ENV SPRING_CLOUD_CONSUL_PORT 8500 
ENV SERVER_PORT 2020 

ENTRYPOINT ["java", "-Xms128m", "-Xmx512m", "-Dsun.net.inetaddr.ttl=60", "-server", "-jar", "/opt/server.jar"]
