# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#  house_id               :integer
#  admin                  :boolean          default(FALSE)
#  emperor                :boolean          default(FALSE)
#  regent                 :boolean          default(FALSE)
#  arrakis                :boolean          default(FALSE)
#  leader                 :boolean          default(FALSE)
#  mentat                 :boolean          default(FALSE)
#  landsraad              :boolean          default(FALSE)
#  solar                  :integer          default(5000)
#  melange                :decimal(, )      default(0.5)
#  research               :integer          default(250)
#  influence              :integer          default(0)
#  username               :string
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :house
  has_many :fields

  def celkovy_material
    self.fields.sum(:material)
  end

  def celkova_populace
    self.fields.sum(:population)
  end

  def barvicky
    if self.emperor?
      "Emperor"
    elsif self.regent?
      "Regent"
    elsif self.arrakis?
      "Drzitel Pololena"
    elsif self.admin?
      "Admin"
    elsif self.leader?
      "Leader"
    # elsif self.vezir?
    #   "Vezir"
    elsif self.landsraad?
      "Poslanec"
    elsif self.mentat?
      "Mentat"
    # elsif self.army_mentat?
    #   "Army_mentat"
    # elsif self.diplomat?
    #   "Diplomat"
    # elsif self.court?
    #   "Court"
    # elsif self.general?
    #   "General"
    end
  end

  def neprecteno_sprav
    # self.conversations.where(:opened => nil).count
    0
  end

  def pristup_do_is? # Imperialni syselaad
    self.emperor? || self.regent? || self.admin? || self.vezir? || self.court? || self.arrakis?
  end

  def pristup_do_ls? # Landsraadni syselaad
    self.emperor? || self.regent? || self.admin? || self.vezir? || self.leader? || self.diplomat? || self.landsraad?
  end

  def pristup_sprava_rod?
    self.leader? || self.mentat?
  end

  def pristup_sprava_imperium?
    self.emperor? || self.regent?
  end

  def has_kasaren
    # kasaren = Building.where(:kind => "VK").first
    # kasarne = self.fields(:include => :estates, :conditions => { :estates => { :building_id => kasaren.id } }).all if kasaren
    # if kasarne
    #   kasarne.each do |f|
    #     e = f.estates.where(:building_id => kasaren.id).first ? f.estates.where(:building_id => kasaren.id).first.number : 0
    #     if e > 0
    #       return f.id
    #     else
          return nil
    #     end
    #   end
    # end
  end

  def planets_with_kosmodrom
    planets = []
    # kosmodrom = Building.where(:kind => 'K').first
    # self.fields.each do |f|
    #   a = f.estates.where(:building_id => kosmodrom.id).first if kosmodrom
    #   if a
    #     if planets.assoc(f.planet) == nil
    #       planets << f.planet
    #     end
    #   end
    # end
    planets
  end
end
