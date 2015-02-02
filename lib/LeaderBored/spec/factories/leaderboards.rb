FactoryGirl.define do
  factory :leaderboard do
    game
    sequence(:name) {|n| "Leaderboard #{n}"}
    description "A sample leaderboard"
    status 'enabled'
  end

end
