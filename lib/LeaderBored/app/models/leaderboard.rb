class Leaderboard < ActiveRecord::Base
  belongs_to :game
  has_many :scores, class_name: 'Leaderboards::Score'
  has_many :players, through: :scores
end
