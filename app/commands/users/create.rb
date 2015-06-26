module Muber::API::Users
  class Create < Mutations::Command
    required do
      hash :user do
        string :email
        string :phone_number
        string :first_name
        string :last_name, nils: true, empty: true
        string :role
      end
    end

    def execute
      _user = User.new(user)
      _user.save

      _user
    end
  end
end
