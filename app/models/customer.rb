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
class Customer < ApplicationRecord
  validates :customer_type, presence: true
  validates :identifier, presence: true, uniqueness: true
  validates :name, presence: true
  validates :status, presence: true

  has_enumeration_for :customer_type, with: Customers::Type, create_scopes: true
  has_enumeration_for :status, with: Customers::Status, create_scopes: true

  has_one :address, class_name: 'CustomerAddress', dependent: :destroy
  has_one :contact, class_name: 'CustomerContact', dependent: :destroy

  has_many :customer_users, dependent: :destroy
  has_many :users, through: :customer_users, dependent: :destroy

  default_scope { order(name: :asc) }

  accepts_nested_attributes_for :address, allow_destroy: true
end
