require 'spec_helper'

describe Muber::API::Users::Create do
  let!(:outcome) do
    Muber::API::Users::Create.run(
      user: {
        email: generate(:email),
        phone_number: generate(:phone_number),
        first_name: 'Dennis',
        last_name: 'Murray',
        role: 'passenger'
      }
    )
  end

  it { expect(outcome.success?).to be_truthy }
  it { expect(outcome.result).to be_an_instance_of User }
end
