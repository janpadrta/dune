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

require 'rails_helper'

RSpec.describe Field, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
