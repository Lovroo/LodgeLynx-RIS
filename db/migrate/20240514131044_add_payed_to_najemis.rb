class AddPayedToNajemis < ActiveRecord::Migration[7.1]
  def change
    add_column :najemis, :payed, :boolean, default: false
  end
end
