class AddUserToPrebivaliscas < ActiveRecord::Migration[7.1]
  def change
    add_reference :prebivalisca, :user, null: false, foreign_key: true
  end
end
