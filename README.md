# Criar banco de dados e rodar migracoes
docker-compose run --rm web rails db:create db:migrate

# Iniciar aplicacao
docker-compose up

# Docker HUB
https://hub.docker.com/r/paulorja/infnet-paulojansen-devops

# Push imagem para o docker hub
docker build -t infnet-paulojansen-devops .
docker tag infnet-paulojansen-devops paulorja/infnet-paulojansen-devops
docker push paulorja/infnet-paulojansen-devops:latest

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Testando github actions.
