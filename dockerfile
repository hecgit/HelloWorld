FROM frolvlad/alpine-oraclejdk8:slim
ADD target/*demo*.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar