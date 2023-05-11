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
FactoryBot.define do
  factory :customer_user do
    association :customer, factory: :customer
    association :user, factory: :user
  end
end
