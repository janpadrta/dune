# == Schema Information
#
# Table name: estates
#
#  id          :integer          not null, primary key
#  building_id :integer
#  field_id    :integer
#  number      :integer          default(1)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :estate do
    building_id 1
    field_id 1
    number 1
  end
end
