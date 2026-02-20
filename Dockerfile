from eclipse-temurin:17-jre

workdir /app

copy target/*.jar /app/app.jar

expose 8080

entrypoint ["java", "-jar", "app.jar"]
