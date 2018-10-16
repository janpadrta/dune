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

class Estate < ApplicationRecord
  belongs_to :field
  belongs_to :building
end
