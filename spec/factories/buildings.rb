# == Schema Information
#
# Table name: buildings
#
#  id               :integer          not null, primary key
#  type             :string
#  name             :string           not null
#  description      :string           default("")
#  population_bonus :decimal(12, 4)   default(0.0)
#  melange_bonus    :decimal(12, 4)   default(0.0)
#  material_bonus   :decimal(12, 4)   default(0.0)
#  solar_bonus      :decimal(12, 4)   default(0.0)
#  exp_bonus        :decimal(12, 4)   default(0.0)
#  population_cost  :decimal(12, 4)   default(0.0)
#  melange_cost     :decimal(12, 4)   default(0.0)
#  material_cost    :decimal(12, 4)   default(0.0)
#  solar_cost       :decimal(12, 4)   default(0.0)
#  exp_cost         :decimal(12, 4)   default(0.0)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryGirl.define do
  factory :building do
    type ""
    name "MyString"
    description "MyString"
    population_bonus "9.99"
    melange_bonus "9.99"
    material_bonus "9.99"
    solar_bonus "9.99"
    exp_bonus "9.99"
    population_cost "9.99"
    melange_cost "9.99"
    material_cost "9.99"
    solar_cost "9.99"
    exp_cost "9.99"
  end
end
