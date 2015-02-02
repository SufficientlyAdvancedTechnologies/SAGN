FactoryGirl.define do
  factory :player do
    sequence(:name)  {|n| "Player #{n}" }
    sequence(:email) {|n| "player#{n}@example.com" }
    sequence(:uid)
    provider 'FactoryGirl'
  end

end
