

namespace :rabbitmq do
  desc "connect subscribe"
  task :subscribe => :environment do
    EventMachine.run do
      QueueService.new({queue_name: "desenvolvendome.subscribe"}).subscribe
    end
  end
end