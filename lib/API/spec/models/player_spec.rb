require 'rails_helper'

RSpec.describe Player, :type => :model do
  it { should have_many :scores }
  it { should have_many :achievement_unlocks }
  it { should have_many :badges }
  
end
