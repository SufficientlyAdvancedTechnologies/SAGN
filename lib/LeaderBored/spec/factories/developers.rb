FactoryGirl.define do
  factory :developer do
    sequence(:name)  {|n| "Developer #{n}" }
    sequence(:email) {|n| "developer#{n}@example.com" }
    sequence(:uid)
    provider 'FactoryGirl'
  end

end
