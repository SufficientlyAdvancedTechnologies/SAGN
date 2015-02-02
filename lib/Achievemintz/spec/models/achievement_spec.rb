require 'rails_helper'

RSpec.describe Achievement, :type => :model do
  it { should belong_to :game }
  it { should have_many :unlocks }
  it { should have_many :players }
end
