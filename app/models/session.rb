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

class Session < ApplicationRecord
end
