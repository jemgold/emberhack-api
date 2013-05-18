# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "My sweet event"
    description "This is going to be so rad"
    start_time "2013-05-18 13:43:49"
    end_time "2013-05-18 13:43:49"
  end
end
