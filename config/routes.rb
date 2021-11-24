Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :subscriptions do
    collection do
      get 'read'
      post 'write'
    end
  end

end
