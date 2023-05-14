# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id               :bigint           not null, primary key
#  crypted_password :string
#  discarded_at     :datetime         indexed
#  email            :string
#  first_name       :string
#  last_name        :string
#  role             :string
#  salt             :string
#  status           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_users_on_discarded_at  (discarded_at)
#
FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    password { SecureRandom.hex(4) }
    role { Users::Role::ADMIN }
    status { Users::Status::ACTIVE }
  end
end
