FactoryGirl.define do
  factory :badge do
    player
    achievement_unlock
    multiplier 1.5
    status "locked"
  end

end
