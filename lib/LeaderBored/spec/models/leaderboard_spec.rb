require 'rails_helper'

RSpec.describe Leaderboard, :type => :model do
  it { should belong_to :game }
  it { should have_many :scores }
  it { should have_many :players }
end
