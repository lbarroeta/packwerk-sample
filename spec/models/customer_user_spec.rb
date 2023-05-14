# frozen_string_literal: true

# == Schema Information
#
# Table name: customer_users
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :bigint           indexed => [user_id]
#  user_id     :bigint           indexed => [customer_id]
#
# Indexes
#
#  index_customer_users_on_customer_id_and_user_id  (customer_id,user_id) UNIQUE
#
require 'rails_helper'

RSpec.describe CustomerUser, type: :model do
  describe '#associations' do
    describe '#belongs_to' do
      it {
        should belong_to(:customer)
        should belong_to(:user)
      }
    end
  end

  describe '#validations' do
    describe '#uniqueness' do
      it {
        should validate_uniqueness_of(:user_id).scoped_to(:customer_id)
      }
    end
  end

  describe '#indexes' do
    describe '#uniqueness' do
      it {
        should have_db_index %i[customer_id user_id]
      }
    end
  end
end
