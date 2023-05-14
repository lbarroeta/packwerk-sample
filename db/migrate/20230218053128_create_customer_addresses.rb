# frozen_string_literal: true

class CreateCustomerAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_addresses do |t|
      t.bigint :customer_id
      t.string :country
      t.string :state
      t.string :city
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end

    add_index :customer_addresses, :country
    add_index :customer_addresses, :state
    add_index :customer_addresses, :city
    add_index :customer_addresses, :address
    add_index :customer_addresses, :latitude
    add_index :customer_addresses, :longitude
  end
end
