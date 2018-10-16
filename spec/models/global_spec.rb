# == Schema Information
#
# Table name: globals
#
#  id         :integer          not null, primary key
#  setting    :string           not null
#  value      :boolean
#  datum      :date
#  slovo      :string
#  cislo      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Global, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
