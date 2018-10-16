# == Schema Information
#
# Table name: planets
#
#  id               :integer          not null, primary key
#  name             :string
#  system_id        :integer
#  position         :integer
#  discovered_at    :datetime
#  house_id         :integer
#  available_to_all :boolean
#  fields_count     :integer          default(0)
#  population_bonus :decimal(12, 4)   default(0.0)
#  material_bonus   :decimal(12, 4)   default(0.0)
#  solar_bonus      :decimal(12, 4)   default(0.0)
#  exp_bonus        :decimal(12, 4)   default(0.0)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Planet::Arrakis < Planet
  def self.vytvor
    Planet::Arrakis.create(name: 'Arrakis',
                        system_id: System.where(name: 'Mu Draconis').first.id,
                        position: 1,
                        house_id: House::Empire.first.id,
                        available_to_all: false,
                        fields_count: 1
    )
  end

  def fields_creation
    arr = Field.create(planet_id: self.id, name: 'Arrakis', population: 250000, material: 50000)
    Estate.create(field_id: arr.id, building_id: Building::Melange::Arraken.first.id, number: 1)
    Estate.create(field_id: arr.id, building_id: Building::Melange::Harvester.first.id, number: 15)
  end
end
