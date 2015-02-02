FactoryGirl.define do
  factory :leaderboards_score, :class => 'Leaderboards::Score' do
    leaderboard
    player
    value { rand(100000) }
    display_value { value }
  end

end
