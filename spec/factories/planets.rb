FactoryGirl.define do
  factory :planet do
    name "MyString"
    system_id 1
    position 1
    discovered_at "2016-09-14 00:10:22"
    house_id 1
    available_to_all false
  end
end
