FactoryGirl.define do
  factory :task do
    title "MyString"
    note  "MyString"
    completed  { Faker::Date.between(Date.today, 10.days.from_now) }
  end
end
