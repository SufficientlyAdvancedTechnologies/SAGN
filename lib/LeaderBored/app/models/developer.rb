class Developer < ActiveRecord::Base
  has_many :games
  has_many :leaderboards, through: :games
  has_many :scores, through: :leaderboards
  has_many :players, through: :scores
end
