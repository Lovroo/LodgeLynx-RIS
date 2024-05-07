class AddPrebivalisceToFavorites < ActiveRecord::Migration[7.1]
  def change
    add_reference :favorites, :prebivalisca, null: false, foreign_key: true
  end
end
