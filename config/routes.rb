Rails.application.routes.draw do
  root to: "subscriptions#subscribe"

  resources :subscriptions do
    collection do
      post 'write'
    end
  end

end
