require 'rails_helper'

RSpec.describe Developer, :type => :model do
  it { should have_many :games }
  it { should have_many :leaderboards }
  it { should have_many :scores }
  it { should have_many :players }
end
