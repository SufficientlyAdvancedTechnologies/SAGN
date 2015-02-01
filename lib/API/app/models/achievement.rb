class Achievement < ActiveRecord::Base
  belongs_to :app

  enum status: [:enabled, :disabled]
end
