# Temel imaj olarak OpenJDK 21 kullanıyoruz
FROM openjdk:21-jdk-slim

# Maven paketleme sonucu oluşan jar dosyasını konteyner içine kopyalıyoruz
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Uygulama portunu açıyoruz
EXPOSE 8080

# Uygulamayı çalıştırıyoruz
ENTRYPOINT ["java", "-jar", "/app.jar"]
