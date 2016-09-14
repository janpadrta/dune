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

class Planet::GiediPrima < Planet
  def self.vytvor
    Planet::GiediPrima.create(name: 'Giedi Prima',
                        system_id: System.where(name: 'Ophiuchi B 36').first.id,
                        position: 1,
                        house_id: House::Harkonnen.first.id,
                        available_to_all: false,
                        fields_count: 0
    )
  end
end
