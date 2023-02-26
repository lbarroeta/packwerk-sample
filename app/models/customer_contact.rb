# == Schema Information
#
# Table name: customer_contacts
#
#  id          :bigint           not null, primary key
#  email       :string           indexed => [customer_id]
#  facebook    :string
#  instagram   :string
#  phone       :string           indexed => [customer_id]
#  twitter     :string
#  whatsapp    :string           indexed => [customer_id]
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :bigint           indexed => [email], indexed => [phone], indexed => [whatsapp]
#
# Indexes
#
#  index_customer_contacts_on_customer_id_and_email     (customer_id,email) UNIQUE
#  index_customer_contacts_on_customer_id_and_phone     (customer_id,phone) UNIQUE
#  index_customer_contacts_on_customer_id_and_whatsapp  (customer_id,whatsapp) UNIQUE
#
class CustomerContact < ApplicationRecord
  belongs_to :customer

  validates :email, presence: true, uniqueness: { scope: :customer_id }
  validates :phone, presence: true, uniqueness: { scope: :customer_id }
  validates :whatsapp, presence: true, uniqueness: { scope: :customer_id }
end
