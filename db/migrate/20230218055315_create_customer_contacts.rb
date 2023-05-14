# frozen_string_literal: true

class CreateCustomerContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_contacts do |t|
      t.bigint :customer_id
      t.string :phone
      t.string :email
      t.string :whatsapp
      t.string :twitter
      t.string :instagram
      t.string :facebook

      t.timestamps
    end

    add_index :customer_contacts, %i[customer_id phone], unique: true
    add_index :customer_contacts, %i[customer_id email], unique: true
    add_index :customer_contacts, %i[customer_id whatsapp], unique: true
  end
end
