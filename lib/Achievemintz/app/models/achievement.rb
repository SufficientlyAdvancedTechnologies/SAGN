class Achievement < ActiveRecord::Base
  belongs_to :game
  has_many :unlocks, class_name: 'Achievements::Unlock'
  has_many :players, through: :unlocks
end
