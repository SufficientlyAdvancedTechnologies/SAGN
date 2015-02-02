require 'rails_helper'

RSpec.describe Game, :type => :model do
  it { should belong_to :developer }
  it { should have_many :achievements }
  it { should have_many :unlocks }
  it "{ should have_many :badges }"
end
