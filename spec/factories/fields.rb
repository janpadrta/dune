# == Schema Information
#
# Table name: fields
#
#  id         :integer          not null, primary key
#  name       :string
#  user_id    :integer
#  planet_id  :integer
#  pos_x      :integer
#  pos_y      :integer
#  population :decimal(12, 4)   default(0.0)
#  material   :decimal(12, 4)   default(0.0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :field do
    name "MyString"
    user_id 1
    planet_id 1
    pos_x 1
    pos_y 1
  end
end
