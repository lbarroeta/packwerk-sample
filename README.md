# DESCRIPTION

This **BOILERPLATE** has the purpose to facilitate the development at the beginning of the project by providing
a fully customizable dashboard.

**Project description**
* **Ruby version**: 3.1.1
* **Rails version**: 7.0.4.1
* **Database**: PostgreSQL
* **CSS Library**: Boostrap V5
* **JS Compiler**: Esbuild

**Installed gems**
* Annotate
* ActiveStorage
* Faker
* FactoryBot
* Hotwire
* Jsbundling (Esbuild)
* Pagy
* PryRails
* Pundit
* Rspec
* Sorcery

**Getting Started**
Further steps before script:
1. `docker compose build`
2. `docker compose up`
3. In case that Gemfile wasn't installed correctly `docker-compose run --rm sidekiq bundle install` and `docker-compose run --rm app bundle install`
4. `docker exec -it rails-boilerplate-app-1 sh`
5. `rails db:create` && `rails db:migrate`
6. Check seeds for user creation.