class Rating
  include Mongoid::Document
  include Mongoid::Timestamps

  field :stars, type: Integer
  field :comment, type: String

  # belongs_to a person
  # authored by a person
  belongs_to :rated,  class_name: 'User', inverse_of: :ratings
  belongs_to :author, class_name: 'User', inverse_of: :rated

  validates :stars, presence: true, inclusion: { in: (0..5) }
end
