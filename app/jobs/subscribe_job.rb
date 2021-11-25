class SubscribeJob < ApplicationJob
  queue_as :default

  def perform(params)
    QueueService.new({queue_name: "desenvolvendome.subscribe"}).publish(params)
  end
end
