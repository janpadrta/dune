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

class Global < ApplicationRecord

  # navraci pozadovane nastaveni a jeho pozadovany sloupec
  #   1 = value (boolean)
  #   2 = datum
  #   3 = slovo
  #   4 = cislo
  def self.vrat(setting, co)
    case co
      when 1
        Global.where(setting: setting).first.value
      when 2
        Global.where(setting: setting).first.datum
      when 3
        Global.where(setting: setting).first.slovo
      when 4
        Global.where(setting: setting).first.cislo
      else
        nil
    end
  end

  # prepina zadane nastaveni (=setting) se zadanym sloupeckem (=co) na zadanou hodnotu (=hodnota)
  def self.prepni(setting, co, hodnota)
    case co
      when 1
        Global.where(setting: setting).first.update_attribute(:value, hodnota)
      when 2
        Global.where(setting: setting).first.update_attribute(:datum, hodnota)
      when 3
        Global.where(setting: setting).first.update_attribute(:slovo, hodnota)
      when 4
        Global.where(setting: setting).first.update_attribute(:cislo, hodnota)
    end
  end

end
