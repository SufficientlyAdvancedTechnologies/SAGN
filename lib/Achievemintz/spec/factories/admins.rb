FactoryGirl.define do
  factory :admin do
    sequence(:name)  {|n| "Admin #{n}" }
    sequence(:email) {|n| "admin#{n}@example.com" }
    sequence(:uid)
    provider 'FactoryGirl'
  end

end
