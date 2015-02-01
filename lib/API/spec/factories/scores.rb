FactoryGirl.define do
  factory :score do
    value 1
    display_value "1"
    leaderboard
    player
    status "unlocked"
  end

end
