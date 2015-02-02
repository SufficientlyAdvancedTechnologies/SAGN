require 'rails_helper'

RSpec.describe Developer, :type => :model do
  it { should have_many :games }
  it { should have_many :achievements }
  it { should have_many :unlocks }
  it "{ should have_many :badges }" 
end
