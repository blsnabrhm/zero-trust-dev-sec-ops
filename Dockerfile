FROM eclipse-temurin:25-jdk-alpine

RUN addgroup -g 1000 -S appgroup && adduser -u 1000 -S appuser -G appgroup

USER appuser

VOLUME /tmp
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]