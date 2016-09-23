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

require 'rails_helper'

RSpec.describe Estate, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
