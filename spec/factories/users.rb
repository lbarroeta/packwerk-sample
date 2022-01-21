# == Schema Information
#
# Table name: users
#
#  id               :bigint           not null, primary key
#  first_name       :string           default(""), not null
#  last_name        :string           default(""), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  email            :string           default(""), not null
#  discarded_at     :datetime
#  crypted_password :string
#  salt             :string
#
FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    password { SecureRandom.hex(4) }
  end
end
