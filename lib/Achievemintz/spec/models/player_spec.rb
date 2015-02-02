require 'rails_helper'

RSpec.describe Player, :type => :model do
  it { should have_many :unlocks }
  it { should have_many :achievements }
  it { should have_many :badges }
end
