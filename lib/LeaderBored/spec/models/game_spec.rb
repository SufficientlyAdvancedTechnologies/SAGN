require 'rails_helper'

RSpec.describe Game, :type => :model do
  it { should belong_to :developer }
  it { should have_many :leaderboards }
  it { should have_many :scores }
  it { should have_many :players }
end
