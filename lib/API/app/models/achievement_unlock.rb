class AchievementUnlock < ActiveRecord::Base
  belongs_to :achievement
  belongs_to :player

  enum status: [:locked, :unlocked]
end
