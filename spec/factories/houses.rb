# == Schema Information
#
# Table name: houses
#
#  id          :integer          not null, primary key
#  type        :string
#  name        :string           default("")
#  solar       :integer          default(50000)
#  melange     :decimal(, )      default(5.0)
#  research    :integer          default(2000)
#  material    :decimal(, )      default(5000.0)
#  influence   :integer          default(0)
#  noticeboard :text             default("")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  playable    :boolean          default(FALSE)
#

FactoryGirl.define do
  factory :house do
    type ""
    name "MyString"
    solar 1
    melange "9.99"
    research 1
    material "9.99"
    influence 1
    noticeboard "MyText"
  end
end
