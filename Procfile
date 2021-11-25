web: bundle exec puma -C config/puma.rb
worker: bundle exec sidekiq -e production -C config/sidekiq.yml
release: bundle exec rake db:migrate
rabbitmq: bundle exec rake rabbitmq:subscribe