# == Schema Information
#
# Table name: customers
#
#  id            :bigint           not null, primary key
#  customer_type :string           indexed
#  identifier    :string           indexed
#  name          :string           indexed
#  status        :string           indexed
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_customers_on_customer_type  (customer_type)
#  index_customers_on_identifier     (identifier)
#  index_customers_on_name           (name) UNIQUE
#  index_customers_on_status         (status)
#
require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'Customer Specs' do
    describe 'validations' do
      context 'presence' do
        it {
          should validate_presence_of(:customer_type)
          should validate_presence_of(:identifier)
          should validate_presence_of(:name)
          should validate_presence_of(:status)
        }
      end

      context 'uniqueness' do
        it {
          should validate_uniqueness_of(:identifier)
        }
      end
    end

    describe 'scopes' do
      context '#default' do
        it 'returns ordered by name ASC' do
          expected_order_names = ('a'..'e').to_a.shuffle.map do |name|
            create(:customer, name: name)
          end.pluck(:name).sort

          expect(Customer.all.pluck(:name)).to eq(expected_order_names)
        end
      end
    end

    describe 'associations' do
      context 'has_one' do
        it {
          should have_one(:address).class_name('CustomerAddress').dependent(:destroy)
          should have_one(:contact).class_name('CustomerContact').dependent(:destroy)
        }
      end

      context 'has_many' do
        it {
          should have_many(:customer_users).dependent(:destroy)
          should have_many(:users).through(:customer_users).dependent(:destroy)
        }
      end
    end

    describe 'indexes' do
      it {
        should have_db_index :customer_type
        should have_db_index :identifier
        should have_db_index(:name).unique(true)
        should have_db_index :status
      }
    end
  end
end
