FactoryGirl.define do
  factory :achievement_unlock do
    achievement
    player
    progression 1
    status "locked"
  end

end
