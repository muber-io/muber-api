require 'spec_helper'

describe Ride do
  let(:ride) { create(:ride) }

  it { expect(ride).to belong_to(:passenger).as_inverse_of :rides }
  it { expect(ride).to belong_to(:driver).as_inverse_of :drives }
end
