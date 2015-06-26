module Muber::API
  class V1

    # GET /ping
    get '/ping' do
      return 'pong'
    end
  end
end
