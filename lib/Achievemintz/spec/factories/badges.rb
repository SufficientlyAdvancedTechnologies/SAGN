FactoryGirl.define do
  factory :badge do
    sequence(:name) {|n| "Badge #{n}"}
    description "A badge description"
    status 'enabled'
    achievement_unlock
    player
    multiplier 1.5
  end

end
