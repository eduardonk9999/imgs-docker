
# PEGA O maven da img do maven e chama ele de build
FROM maven:3.8.4-jdk-8 AS build 


# copia todos os arquivos de src e manda pra app
COPY src /app/src
COPY pom.xml /app

# faz a instalação e build do projeto
WORKDIR /app
RUN mvn clean install

# instala o jre 
FROM openjdk:8-jre-alpine

# copiamos de dentro de build nosso jar e mandamos para a pasta app
COPY --from=build /app/target/nomeDaApp.jar /app/app.jar

# trocamos e expomos que sera na porta 8080
WORKDIR /app
EXPOSE 8080

# comandos finais que serão executados na inicialização do container.
CMD ["java", "-jar", "app.jar"]