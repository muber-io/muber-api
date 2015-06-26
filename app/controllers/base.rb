module Muber
  module API
    class V1

      # GET /
      get '/' do
        return User.first.email
      end
    end
  end
end
