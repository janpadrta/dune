# == Schema Information
#
# Table name: planets
#
#  id               :integer          not null, primary key
#  name             :string
#  system_id        :integer
#  position         :integer
#  discovered_at    :datetime
#  house_id         :integer
#  available_to_all :boolean
#  fields_count     :integer          default(0)
#  population_bonus :decimal(12, 4)   default(0.0)
#  material_bonus   :decimal(12, 4)   default(0.0)
#  solar_bonus      :decimal(12, 4)   default(0.0)
#  exp_bonus        :decimal(12, 4)   default(0.0)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Planet < ApplicationRecord
  belongs_to :system
  belongs_to :house
  has_many :fields

  after_create :fields_creation

  class Bonus
    # definice maxim jednotlivych bonusu
    POPULATION = 60
    # POPULATION_LIMIT = 10
    MATERIAL = 15
    SOLAR = 15
    EXPERIENCE = 15
    FIELDS_COUNT = 80

    # definice co k cemu patri, klice jsou shodne s nazvy atributu
    TYPES = {
        population_bonus: POPULATION,
        # pop_limit_bonus: POPULATION_LIMIT,
        material_bonus: MATERIAL,
        solar_bonus: SOLAR,
        exp_bonus: EXPERIENCE,
        fields_count: FIELDS_COUNT
    }

    # kolik pridat do celku za kazdy typ bonusu (0.5 = 50%), takze v tomto zneni je k dispozici zaporneho a kladneho 350% bonusu
    PER_TYPE = 0.7

    # maximalni hodnota bonusu na typ bonusu (napr populace nemuze mit vetsi bonus nez 100% pokud nastavime 1)
    MAX_PER_TYPE = 1.0
    MIN_PER_TYPE = 1.0
  end

  def self.vytvor(name, system, position, to_all = false)
    # naklonuju si template a nad nim budu pracovat
    bonuses = Bonus::TYPES.clone
    # soucty pozitivnich a negativnich nahodnych cisel pro pomerovy rozdeleni celku
    negative, positive = 0, 0
    # nejprve vygenerujeme nahodna cisla pro kazdy typ bonusu v negativu a positivu
    bonuses.each { |k, v|
      bonuses[k] = [n = rand(100), p = rand(100)]
      negative += n
      positive += p
    }.each { |ke, va|
      # vypocitame pomerove procenta pro kazdou polozku jak zaporna tak kladna (pokud by nahodnou vsechna vysla 0 obejdeme deleni nulou)
      n_percent = (negative == 0 ? 0 : (va[0].to_f / negative.to_f) * (Bonus::TYPES.keys.length * Bonus::PER_TYPE))
      p_percent = (positive == 0 ? 0 : (va[1].to_f / positive.to_f) * (Bonus::TYPES.keys.length * Bonus::PER_TYPE))
      # zjistime jestli hodnota bonusu neprevysuje maximalni povolenou hodnotu a pokud ano nastavime ji na maximum a nasledne zapornou odecteme od kladne
      bonus = (p_percent > Bonus::MAX_PER_TYPE ? Bonus::MAX_PER_TYPE : p_percent) - (n_percent > Bonus::MIN_PER_TYPE ? Bonus::MIN_PER_TYPE : n_percent)
      # procenta bonusu prevedeme na realne hodnoty bonusu definovane v konstantach a prevedeme na procentualni hodnotu
      # mozna by nebylo od veci to prevest na int, protoze napriklad lena jsou jen cela cisla, da se poresit prepisem metody, viz. nize
      bonuses[ke] = ((Bonus::TYPES[ke] / 100.0) * bonus * 100.0).round
    }

    system_id = System.where(name: system).first.id
    # vytvorime planetu
    Planet.create(bonuses.merge({name: name, system_id: system_id, position: position, available_to_all: to_all}))
    # Planet.new(bonuses)
  end

  # zabranime vytvoreni planety se zapornym poctem len
  def fields_count=(size)
    self[:fields_count] = (size == 0 ? 1 : size.abs)
  end

  def fields_creation
    self.fields_count.times { self.fields << Field.new() }
  end

end
