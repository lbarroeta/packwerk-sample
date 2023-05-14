# frozen_string_literal: true

class RefactorUsersTable < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :role, :string
    add_column :users, :status, :string
  end
end
