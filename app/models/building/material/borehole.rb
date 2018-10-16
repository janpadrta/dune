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

class Building::Material::Borehole < Building::Material
end
