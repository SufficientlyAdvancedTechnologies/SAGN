class Player < ActiveRecord::Base
  has_many :unlocks, class_name: 'Achievements::Unlock'
  has_many :achievements, through: :unlocks
  has_many :badges
end
