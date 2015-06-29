FactoryGirl.define do
  factory :ride do
    passenger { create(:user, :passenger) }
    driver    { create(:user, :driver) }
  end
end
