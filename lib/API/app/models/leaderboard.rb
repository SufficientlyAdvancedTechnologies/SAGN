class Leaderboard < ActiveRecord::Base
  belongs_to :app
  belongs_to :created_by

  enum status: [:enabled, :disabled]
end
