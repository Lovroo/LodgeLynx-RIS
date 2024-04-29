class CreatePrebivaliscas < ActiveRecord::Migration[7.1]
  def change
    create_table :prebivaliscas do |t|
      t.string :Name
      t.integer :rating

      t.timestamps
    end
  end
end
