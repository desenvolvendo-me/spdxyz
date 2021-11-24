# README

## Sidekiq in Heroku
[Fonte](https://www.bigbinary.com/learn-rubyonrails-book/sidekiq-in-heroku)
### Set Env
- REDIS_URL
- REDIS_PASSWORD
### Procfile
```
web: bundle exec puma -C config/puma.rb
worker: bundle exec sidekiq -e production -C config/sidekiq.yml
release: bundle exec rake db:migrate
```
### Active Dynos
```
heroku ps:scale web=1
heroku ps:scale worker+1
```