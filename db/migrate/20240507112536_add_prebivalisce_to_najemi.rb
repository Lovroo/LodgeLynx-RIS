class AddPrebivalisceToNajemi < ActiveRecord::Migration[7.1]
  def change
    add_reference :najemis, :prebivalisca, null: false, foreign_key: true
  end
end
