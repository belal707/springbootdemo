FROM java:8
VOLUME /tmp
ADD /target/boot-rest-api-0.1.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Dspring.data.mongodb.uri=mongodb://192.168.203.132:27017/abctrals", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]