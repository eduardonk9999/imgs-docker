# Usando uma imagem base com Java 17
FROM openjdk:17-jdk-slim

# Definindo o diretório de trabalho
WORKDIR /app

# Copiando o arquivo jar gerado pelo Maven
COPY target/meu-projeto-spring.jar /app/meu-projeto-spring.jar

# Expõe a porta em que o Spring Boot vai rodar
EXPOSE 8080

# Comando para rodar a aplicação Spring Boot
ENTRYPOINT ["java", "-jar", "meu-projeto-spring.jar"]
