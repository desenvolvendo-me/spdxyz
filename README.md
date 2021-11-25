# README
## Running
```
docker-compose up
```

```
rails db:create db:migrate
rails s
```
## Sidekiq in Heroku
[Fonte](https://www.bigbinary.com/learn-rubyonrails-book/sidekiq-in-heroku)
### Set Env
- REDIS_URL
- REDIS_PASSWORD
- RABBITMQ_URL
### Active Dynos
```
heroku ps:scale web=1
heroku ps:scale worker+1
```
### Dynos Manual
```
heroku run bundle exec rake rabbitmq:subscribe
```