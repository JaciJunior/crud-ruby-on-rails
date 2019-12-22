<p align="center"><img src="https://www.trzcacak.rs/myfile/detail/503-5039195_javascript-rubyonrails-css-html5-ruby-on-rails-icon.png" width="400"></p>

Projeto teste Junto Seguro
API com CRUD simples em Ruby on Rails:

### Documentação Postman
https://documenter.getpostman.com/view/9299680/SWLYAqsi?version=latest


# Instalação ambiente necessário docker

Clonar este projeto em /var/www/

Acesse 
```
cd /var/www
git clone 
```

* Alterar o arquivo /config/database.yml para um servidor MYSQL

default: &default <br>
  adapter: mysql2 <br>
  encoding: utf8 <br>
  pool: 5 <br>
  username: **USUARIO** <br>
  password: **SENHA** <br>
  host: **HOST** <br>

development: <br>
  <<: *default <br>
  database: junto <br>

### Rodar comandos Docker
```
docker run -d -P -v $(pwd):/projects --name railscontainer jacksonpires/ubuntu-rails-ssh
```
* validar as portas utilizadas pelo docker
```
docker port railscontainer
```
Exemplo
<p>0.0.0.0:**32796**</p>
<p>0.0.0.0:**32797**</p>

*acessar via ssh o container com a porta listada
```
ssh app@localhost -p <PORTA>
```
senha ssh app

*Acessar o caminho dentro do container
```
cd / projects
```
rodar os comandos 
```
sudo apt-get update
sudo apt-get -y -f install mysql-client
sudo apt-get install libmysqlclient-dev
```
Rodar Migrate 
```
rails db:migrate
```

Acessar via postman ou navegador 
http://localhost:**PORTA**



