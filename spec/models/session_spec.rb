# == Schema Information
#
# Table name: sessions
#
#  id         :integer          not null, primary key
#  session_id :string           not null
#  data       :text
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Session, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
