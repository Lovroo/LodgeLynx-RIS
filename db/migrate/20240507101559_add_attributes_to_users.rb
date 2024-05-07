class AddAttributesToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :ime, :string
    add_column :users, :priimek, :string
    add_column :users, :telefonska, :string
    add_column :users, :admin, :boolean
  end
end
