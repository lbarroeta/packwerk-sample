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
require 'rails_helper'

RSpec.describe CustomerAddress, type: :model do
  describe 'CustomerAddress Specs' do
    describe 'validations' do
      context 'associations' do
        it {
          should belong_to(:customer)
        }
      end

      context 'indexes' do
        it {
          should have_db_index :address
          should have_db_index :city
          should have_db_index :country
          should have_db_index :state
        }
      end

      context 'presence' do
        it {
          should validate_presence_of :city
          should validate_presence_of :country
          should validate_presence_of :state
        }
      end
    end
  end
end
