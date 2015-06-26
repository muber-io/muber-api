FactoryGirl.define do
  sequence :email do |n|
    "djm#{n}@marist.edu"
  end

  factory :user do
    email
  end
end
