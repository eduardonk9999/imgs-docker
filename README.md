# 🚀 Spring Boot Docker Project with PostgreSQL 🐘

Este projeto é uma aplicação **Spring Boot** com **Java 17**, configurada para rodar em contêineres Docker usando **PostgreSQL** como banco de dados. Usamos o **Docker Compose** para orquestrar os serviços.

## 📋 Pré-requisitos

Antes de começar, certifique-se de ter o seguinte instalado:

- [Docker](https://www.docker.com/get-started) 🐳
- [Docker Compose](https://docs.docker.com/compose/) 📦
- [Maven](https://maven.apache.org/install.html) 🛠️

### 🛠️ Como Buildar e Rodar o Projeto

```
./mvnw clean package

docker-compose up --build

```

<p>É um serviço de virtualização</p>  
<p>Com isso podemos fazer um deploy da aplicação
contendo todas dependencias necessárias para o app.</p> 
<p>Separa a aplicação em conteiner</p>
<p>Ex: um container para o sql, outro para o back end</p>

<h3>Docker File</h3>
<p>Arquivos que temos dentro da nossa app, como se fosse um projeto da arquitetura da aplicação.</p> 


<h3>Comandos</h3>
<p>docker ps - infos gerais dos containers que estão rodando.</p> 
<p>docker run hello-world - para executar uma img de teste criado pelo proprio docker.</p> 
<p>docker ps -a - Mostra todos os container que já foram executados na maquina.</p>
<p>docker run NODAIMAGEM - Você inicializa um conteiner.</p>
<p>docker run -it NODAIMAGEM bash - Inicia o processo do bash dentro do container.</p>
<p>docker stop  IDdoContainer - para a execução do mesmo.</p>
<p>docker start IDdoContainer - inicia o mesmo.</p>
<p>docker exec -iti IDdoContainer bash - inicia o bash direto no container especifico.</p>

<h3>Configs Docker</h3>
<p>depois de criar seu Dockerfile, execute: 
    docker build -t NOMEDAIMG .
</p>
<p>Execute sua img:
    docker run NOMEDAIMG
</p>


<h3>docker-compose.yml</h3>
<p>Para orquestrar os contêiners</p>