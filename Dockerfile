FROM maven:3.9.9-eclipse-temurin-17 AS build

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jre

WORKDIR /app

COPY --from=build /app/target/*.war app.war

EXPOSE 10000

ENTRYPOINT ["sh", "-c", "exec java -jar app.war --server.port=${PORT:-10000} --server.address=0.0.0.0"]