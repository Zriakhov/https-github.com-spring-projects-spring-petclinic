FROM openjdk:latest

RUN mkdir ./pet_clinic && cd ./pet_clinic

COPY ./spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar ~/tmp/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar

EXPOSE 8080

CMD ["java","-jar","/petclinic/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar"]
