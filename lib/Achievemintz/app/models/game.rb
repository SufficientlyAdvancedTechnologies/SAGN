class Game < ActiveRecord::Base
  belongs_to :developer
  has_many :achievements
  has_many :unlocks, through: :achievements
  has_many :badges, through: :unlocks
end
