FROM openjdk:11-jre
MAINTAINER yong



# Add Maven dependencies (not shaded into the artifact; Docker-cached)
# ADD target/lib           /usr/share/myservice/lib
# Add the service itself


WORKDIR /root

ARG JAR_FILE
ADD target/${JAR_FILE} /root/test.jar

EXPOSE 2333

ENTRYPOINT ["java", "-jar", "/root/test.jar"]