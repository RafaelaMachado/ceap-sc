[![Maintainability](https://api.codeclimate.com/v1/badges/c5006ff552e37bbfe3bf/maintainability)](https://codeclimate.com/github/RafaelaMachado/ceap-sc/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/c5006ff552e37bbfe3bf/test_coverage)](https://codeclimate.com/github/RafaelaMachado/ceap-sc/test_coverage)
[![Ruby](https://github.com/RafaelaMachado/ceap-sc/actions/workflows/ruby.yml/badge.svg)](https://github.com/RafaelaMachado/ceap-sc/actions/workflows/ruby.yml)
# NOME DO PROJETO

Esta aplicação foi feita usando Ruby on Rails 6 com algumas gems legais!

Para verificar aplicativo: https://frozen-brook-81860.herokuapp.com/


# Etapas para executar este projeto localmente:

1. [Depêndencias] Verifique se você instalou Ruby 2.6.0, Bundler 2 (ou superior), Node 8.16.0 (ou superior).

    * Se você instalou Ruby 2.6.0 usando rvm, pode ser necessário atualizar o Bundler com `gem update --bundler`

    * Instale o yarn do npm: `sudo npm install --global yarn`

2. Clone e `cd` este projeto.

	Sempre execute os comandos da pasta do projeto!

3. Execute o comando `bundle install` na pasta do projeto.

4. Execute o comando `rails webpacker:instal` na pasta do projeto.

5. Execute o comando `rake db:migrate` na pasta do projeto.

6. Execute o comando `rails s` e verifique  http://localhost:3000/ .


# Extras

1. Execute o comando `bundle exec rubocop` na pasta do projeto para executar o rubocop.

2. Execute o comando `bundle exec rspec` na pasta do projeto para executar os testes.

3. Execute o comando `git push heroku main` na pasta do projeto para fazer deploy no heroku.

4. Execute o comando `heroku restart && heroku pg:reset DATABASE --confirm frozen-brook-81860 && heroku run rake db:migrate` na pasta do projeto para reiniciar o banco de dados no heroku.


## Uma breve lista das ferramentas utilizadas:

* Ruby 2.6

* Rails 6

* Bootstrap

* Rubocop

* Heroku

* Rspec


## Meus próximos passos

* Melhorar arquitetura de dados

* Melhorar UI e UX

* Adicionar cobertura de testes Automatizados

* Filto por categorias de gastos

* Filtro para busca por estado

* Refatorar aplicação, adicionar presenter, helpers etc

* Github Actions / CicleCI

* Implementar tratamento de erros
