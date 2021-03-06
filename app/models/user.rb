class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Enum

  field :email, type: String
  field :phone_number, type: String
  field :first_name, type: String
  field :last_name, type: String
  field :role, type: Integer

  enum :role, [:passenger, :driver, :admin], default: :passenger

  # Reviews of this User
  has_many :ratings, class_name: 'Rating', inverse_of: :rated

  # Reviews authored by this User
  has_many :rated, class_name: 'Rating', inverse_of: :author

  has_many :rides, class_name: 'Ride', inverse_of: :passenger
  has_many :drives, class_name: 'Ride', inverse_of: :driver

  validates :email, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true
  validates :first_name, presence: true

  def full_name
    [first_name, last_name].join(' ').strip
  end
end
