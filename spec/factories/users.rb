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

FactoryGirl.define do
  factory :user do
    name "Test User"
    email "test@example.com"
    password "please123"
  end
end
