class Ride
  include Mongoid::Document

  belongs_to :driver, class_name: 'User', inverse_of: :drives
  belongs_to :passenger, class_name: 'User', inverse_of: :rides
end
