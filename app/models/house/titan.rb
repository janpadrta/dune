# == Schema Information
#
# Table name: houses
#
#  id              :integer          not null, primary key
#  type            :string
#  name            :string           default("")
#  leader          :string           default("")
#  solar           :integer          default(50000)
#  melange         :decimal(12, 4)   default(5.0)
#  research        :integer          default(2000)
#  material        :decimal(12, 4)   default(5000.0)
#  influence       :integer          default(0)
#  noticeboard     :text             default("")
#  melange_percent :decimal(12, 4)   default(5.0)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  playable        :boolean          default(FALSE)
#

class House::Titan < House

end
