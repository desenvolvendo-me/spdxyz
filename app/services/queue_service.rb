require 'rubygems'
require 'bunny'
require 'json'
require 'amqp'

class QueueService

  def initialize(options = { queue_name: nil })
    @queue = connect.queue(options[:queue_name])
    @exchange = connect.default_exchange
  end

  def subscribe
    @queue.subscribe do |delivery_info, metadata, payload|
      subscription = Subscription.new(description: JSON.parse(payload)['turma']['nome'])
      puts 'subscription saved' if subscription.save
    end
  end

  def publish(payload = nil)
    @exchange.publish(JSON.generate(payload), :routing_key => @queue.name)
  end

  private

  def connect
    connect = Bunny.new(ENV['RABBITMQ_URL'].present? ? ENV['RABBITMQ_URL'] : 'amqp://guest:guest@localhost:5672')
    connect.start
    connect.create_channel
  end
end