FactoryGirl.define do
  factory :achievement do
    app nil
    sequence(:name) {|n| "Test Achievement #{n}"}
    description "An achievement description..."
    status "enabled"
  end

end
