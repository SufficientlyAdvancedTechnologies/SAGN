class Achievements::Unlock < ActiveRecord::Base
  belongs_to :player
  belongs_to :achievement
  has_one :game, through: :achievement
end
