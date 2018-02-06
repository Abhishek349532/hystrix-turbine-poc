FROM openjdk:8
RUN mkdir /root/.kube
COPY config /root/.kube/config
ADD target/turbine-server-1.0-SNAPSHOT.jar turbine-server-app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/turbine-server-app.jar"]
