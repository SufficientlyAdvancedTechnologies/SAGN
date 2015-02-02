class Player < ActiveRecord::Base
  has_many :scores, class_name: 'Leaderboards::Score'
  has_many :leaderboards, through: :scores
  has_many :games, through: :leaderboards
end
