module Subscriber
  require "warden"
  class Engine < ::Rails::Engine
    isolate_namespace Subscriber
    
    config.generators do |g|
      g.test_framework :rspec, :view_specs => false 
    end

    initializer "subscriber.middleware.warden" do Rails.application.config.middleware.use Warden::Manager do |manager|
      manager.serialize_into_session do |user| 
        user.id
      end
      manager.serialize_from_session do |id|
        Subscriber::User.find(id) end
      end 
    end
  end
end
