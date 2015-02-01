require 'rails_helper'

RSpec.describe Score, :type => :model do
  it { should belong_to :leaderboard }
  it { should belong_to :player }
  it "should have value"
  it "should have display_value that matches value after formatting"
end
