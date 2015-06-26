require 'spec_helper'

describe User do
  let(:user) { create(:user) }

  it { expect(user).to validate_presence_of :email }
  it { expect(user).to validate_uniqueness_of :email }

  it { expect(user).to validate_presence_of :phone_number }
  it { expect(user).to validate_uniqueness_of :phone_number }

  it { expect(user).to validate_presence_of :first_name }

  describe '#full_name' do
    it { expect(user.full_name).to eql 'Dennis Murray' }
  end
end
