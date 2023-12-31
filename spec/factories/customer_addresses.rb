# frozen_string_literal: true

# == Schema Information
#
# Table name: customer_addresses
#
#  id          :bigint           not null, primary key
#  address     :string           indexed
#  city        :string           indexed
#  country     :string           indexed
#  latitude    :float            indexed
#  longitude   :float            indexed
#  state       :string           indexed
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :bigint
#
# Indexes
#
#  index_customer_addresses_on_address    (address)
#  index_customer_addresses_on_city       (city)
#  index_customer_addresses_on_country    (country)
#  index_customer_addresses_on_latitude   (latitude)
#  index_customer_addresses_on_longitude  (longitude)
#  index_customer_addresses_on_state      (state)
#
FactoryBot.define do
  factory :customer_address do
    association :customer, factory: :customer

    address { Faker::Address.full_address }
    city { Faker::Address.city }
    country { Faker::Address.country }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    state { Faker::Address.state }
  end
end
