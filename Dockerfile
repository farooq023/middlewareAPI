FROM eclipse-temurin:17-jre-alpine
COPY ktendering_payment_publish.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]