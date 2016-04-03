FROM kurron/docker-oracle-jdk-8:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

LABEL org.kurron.name="JVM Guy Configuration Server" org.kurron.ide.version=1.0.4

ADD https://bintray.com/artifact/download/kurron/maven/org/kurron/jvm-guy-configuration-server/1.0.4.RELEASE/jvm-guy-configuration-server-1.0.4.RELEASE.jar /opt/server.jar

WORKDIR /opt

# Use the convenience script to set all the proper runtime settings
ENTRYPOINT ["/opt/launch-jvm.sh", "-jar", "/opt/server.jar"]
