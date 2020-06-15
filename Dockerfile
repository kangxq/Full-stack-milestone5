FROM openjdk:8-jdk-alpine as runner

WORKDIR /usr/src/app
COPY ./cloud-eureka-service/target /usr/src/app/target

EXPOSE 8761

CMD [ "java", "-jar", "./target/cloud-eureka-service-0.0.1-SNAPSHOT.jar" ]
