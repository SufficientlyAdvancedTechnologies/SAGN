class Player < ActiveRecord::Base
  has_many :scores
  has_many :achievement_unlocks
  has_many :badges
end
