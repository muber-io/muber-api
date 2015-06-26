require 'sinatra/reloader'

module Muber
  module API
    class V1 < Sinatra::Base
      configure :development do
        register Sinatra::Reloader
      end
    end
  end
end

%W(models helpers controllers).each do |dir|
  Dir[ROOT + "/app/#{dir}/*.rb"].each { |f| require f }
end
