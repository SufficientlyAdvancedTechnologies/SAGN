class Score < ActiveRecord::Base
  belongs_to :leaderboard
  belongs_to :player

  enum status: [:locked, :unlocked]
end
