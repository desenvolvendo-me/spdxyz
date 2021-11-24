Rails.application.routes.draw do
  resources :subscriptions do
    collection do
      post 'write'
    end
  end

end
