require 'rails_helper'

RSpec.describe Player, :type => :model do
  it { should have_many :scores }
  it { should have_many :leaderboards }
  it { should have_many :games }
end
