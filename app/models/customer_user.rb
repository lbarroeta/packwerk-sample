# frozen_string_literal: true

#
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
class CustomerUser < ApplicationRecord
  belongs_to :customer
  belongs_to :user

  accepts_nested_attributes_for :user, allow_destroy: true

  validates :user_id, uniqueness: { scope: :customer_id }
end
