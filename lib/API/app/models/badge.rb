class Badge < ActiveRecord::Base
  belongs_to :player
  belongs_to :achievement_unlock

  enum status: [:locked, :unlocked]
end
