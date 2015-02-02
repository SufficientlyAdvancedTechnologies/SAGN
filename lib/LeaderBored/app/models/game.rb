class Game < ActiveRecord::Base
  # Associations
  belongs_to :developer
  has_many :leaderboards
  has_many :scores, through: :leaderboards
  has_many :players, through: :scores

  # Enums
  enum status: [:enabled, :disabled]

  private
end
