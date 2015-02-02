FactoryGirl.define do
  factory :game do
    sequence(:name) { |n| "Game #{n}" }
    description "A Game Description"
    status 'enabled'
    developer
  end

end
