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

class Planet::Kaitan < Planet
  def self.vytvor
    Planet::Kaitan.create(name: 'Kaitan',
                        system_id: System.where(name: 'Alpha Piscium').first.id,
                        position: 2,
                        house_id: House::Empire.first.id,
                        available_to_all: false,
                        fields_count: 0
    )
  end
end
