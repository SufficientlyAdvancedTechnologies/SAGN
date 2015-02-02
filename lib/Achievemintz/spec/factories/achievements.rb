FactoryGirl.define do
  factory :achievement do
    sequence(:name) {|n| "Achievement #{n}"}
    description "An achievement description"
    status 'enabled'
    game
  end

end
