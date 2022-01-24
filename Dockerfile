FROM adoptopenjdk/openjdk11:ubi
VOLUME /tmp
EXPOSE 8080
ADD TM_Competo.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]