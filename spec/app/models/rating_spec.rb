require 'spec_helper'

describe Rating do
  let(:rating) { create :rating }

  it { expect(rating).to validate_presence_of :stars }
  it { expect(rating).to validate_inclusion_of(:stars).to_allow(0..5) }

  it { expect(rating).to belong_to(:rated).as_inverse_of :ratings }
  it { expect(rating).to belong_to(:author).as_inverse_of :rated }
end
