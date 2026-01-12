FROM eclipse-temurin:21-jre-alpine
COPY ktendering_payment_publish.jar app.jar
ENTRYPOINT ["sh","-c","java -jar app.jar \
  --server.port=${PORT:-8080} \
  --spring.datasource.url=${DB_URL} \
  --spring.datasource.username=${DB_USER} \
  --spring.datasource.password=${DB_PASS}"]
