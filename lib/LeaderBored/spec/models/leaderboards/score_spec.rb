require 'rails_helper'

RSpec.describe Leaderboards::Score, :type => :model do
  it { should belong_to :leaderboard }
  it { should belong_to :player }
end
