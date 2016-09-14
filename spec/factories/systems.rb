# == Schema Information
#
# Table name: systems
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :system do
    name "MyString"
  end
end
