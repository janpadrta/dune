# == Schema Information
#
# Table name: globals
#
#  id         :integer          not null, primary key
#  setting    :string           not null
#  value      :boolean
#  datum      :date
#  slovo      :string
#  cislo      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :global do
    setting "MyString"
    value false
    datum "2016-10-04"
    slovo "MyString"
    cislo "9.99"
  end
end
