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

class Field < ApplicationRecord
  belongs_to :user
  belongs_to :planet

  has_many :estates
  has_many :buildings, through: :estates

  after_create :zalozeni

  def zalozeni
    return true if planet.is_a? Planet::Arrakis
    self.update_attributes(population: 20000, material: 5000.0)
    Estate.create(field_id: self.id, building_id: Building::Population::Town.first.id, number: 2)
    Estate.create(field_id: self.id, building_id: Building::Solar::Market.first.id, number: 1)
    Estate.create(field_id: self.id, building_id: Building::Material::Mine.first.id, number: 1)
  end

end
