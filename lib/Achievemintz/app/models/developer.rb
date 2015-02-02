class Developer < ActiveRecord::Base
  has_many :games
  has_many :achievements, through: :games
  has_many :unlocks, class_name: 'Achievements::Unlock', through: :achievements
  has_many :badges, through: :unlocks
end
