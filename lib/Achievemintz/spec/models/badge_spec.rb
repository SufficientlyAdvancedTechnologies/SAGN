require 'rails_helper'

RSpec.describe Badge, :type => :model do
  it { should belong_to :achievement_unlock }
  it { should belong_to :player }
  it { should have_one :achievement }
  it { should have_one :game }
end
