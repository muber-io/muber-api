FactoryGirl.define do
  sequence :email do |n|
    "djm#{n}@marist.edu"
  end

  sequence :phone_number do |n|
    rand(10**9..10**10)
  end

  factory :user do
    email
    phone_number

    first_name 'Dennis'
    last_name 'Murray'

    trait :passenger do
      role :passenger
    end

    trait :driver do
      role :driver
    end

    trait :admin do
      role :admin
    end
  end
end
