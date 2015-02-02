FactoryGirl.define do
  factory :game do
    sequence(:name) {|n| "Game #{n}" }
    description "A sample game"
    developer
    status 'enabled'
  end

end
