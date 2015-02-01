require 'rails_helper'

RSpec.describe AchievementUnlock, :type => :model do
  it { should belong_to :achievement }
  it { should belong_to :player }
  it "should unlock when progression reaches 100"
  it "should trigger any related badges"
end
