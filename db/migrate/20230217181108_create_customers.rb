class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :status
      t.string :customer_type
      t.string :identifier

      t.timestamps
    end

    add_index :customers, :name, unique: true
    add_index :customers, :status
    add_index :customers, :customer_type
    add_index :customers, :identifier
  end
end
