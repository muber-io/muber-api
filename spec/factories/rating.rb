FactoryGirl.define do
  factory :rating do
    stars { rand(0..5) }
  end
end
