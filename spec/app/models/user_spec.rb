require 'spec_helper'

describe User do
  let(:user) { create(:user) }

  it { expect(user).to validate_presence_of :email }
  it { expect(user).to validate_uniqueness_of :email }

  it { expect(user).to validate_presence_of :phone_number }
  it { expect(user).to validate_uniqueness_of :phone_number }

  it { expect(user).to validate_presence_of :first_name }

  it { expect(user).to have_many(:ratings).as_inverse_of :rated }
  it { expect(user).to have_many(:rated).as_inverse_of :author }

  it { expect(user).to have_many(:rides).as_inverse_of :passenger }
  it { expect(user).to have_many(:drives).as_inverse_of :driver }

  describe '#full_name' do
    it { expect(user.full_name).to eql 'Dennis Murray' }
  end
end
