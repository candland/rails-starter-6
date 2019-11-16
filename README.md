# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

## System dependencies

* Postgres
* Redis

## Gems

* Slim: <https://github.com/slim-template/slim>
* Devise: <https://github.com/plataformatec/devise>
* Cancancan: <https://github.com/CanCanCommunity/cancancan>
* Simple_form: <https://github.com/plataformatec/simple_form>
* Pagy: <https://ddnexus.github.io/pagy/how-to>
* exception_notification: <https://github.com/smartinez87/exception_notification>
* http: <https://github.com/httprb/http>
* VCR: <https://relishapp.com/vcr/vcr/v/5-0-0/docs/getting-started>
* whenever: <https://github.com/javan/whenever>
* factory_bot: <https://github.com/thoughtbot/factory_bot>
* guard: <https://github.com/guard/guard>
* solargraph
* standardrb

### Pagy

In controller

    @pagy, @records = pagy(Product.some_scope)

In View

    <%== pagy_nav(@pagy) %>

### JavaScript/CSS

* TailwindCSS
* StimulusJS

## Functionality

* User roles


* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Setup

* Change database names in database.yml