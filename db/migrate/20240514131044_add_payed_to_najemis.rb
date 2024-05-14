class AddPayedToNajemis < ActiveRecord::Migration[7.1]
  def change
    change_column_default :najemis, :payed, from: nil, to: false
  end
end
