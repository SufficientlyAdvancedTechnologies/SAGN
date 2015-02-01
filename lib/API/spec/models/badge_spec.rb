require 'rails_helper'

RSpec.describe Badge, :type => :model do
  it { should belong_to :player }
  it { should belong_to :achievement_unlock }
  it "should automatically unlock when progression of achievement_unlock reaches 100"
  it "should auto-increment multiplier"
  it "should have an image associated"
end
