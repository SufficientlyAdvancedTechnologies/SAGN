class Badge < ActiveRecord::Base
  belongs_to :achievement_unlock, class_name: "Achievements::Unlock"
  belongs_to :player
  has_one :achievement, through: :achievement_unlock
  has_one :game, through: :achievement
end
