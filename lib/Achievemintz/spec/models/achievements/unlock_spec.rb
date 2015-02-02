require 'rails_helper'

RSpec.describe Achievements::Unlock, :type => :model do
  it { should belong_to :player }
  it { should belong_to :achievement }
  it { should have_one :game }
end
