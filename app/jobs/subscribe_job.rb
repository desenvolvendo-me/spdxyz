class SubscribeJob < ApplicationJob
  queue_as :default

  def perform(name)
    Subscription.create(description: name)
  end
end
