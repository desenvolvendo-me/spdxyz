require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  root to: 'welcome#index'

  resources :subscriptions do
    collection do
      get 'read'
      post 'write'
    end
  end

end
