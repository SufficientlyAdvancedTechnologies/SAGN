FactoryGirl.define do
  factory :achievements_unlock, :class => 'Achievements::Unlock', aliases: [:achievement_unlock] do
    player
    achievement
    progression 1
    status 'locked'
  end

end
