FROM eclipse-temurin:17-jre

COPY target/*.war app.war

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.war"]