class CreateCustomerUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_users do |t|
      t.bigint :customer_id
      t.bigint :user_id

      t.timestamps
    end

    add_index :customer_users, [:customer_id, :user_id], unique: true
  end
end
