require 'spec_helper'

describe Muber::API::V1 do
  describe 'GET /ping' do
    it 'replies with "pong"' do
      get '/ping'

      expect(last_response).to be_ok
      expect(last_response.body).to eql 'pong'
    end
  end
end
