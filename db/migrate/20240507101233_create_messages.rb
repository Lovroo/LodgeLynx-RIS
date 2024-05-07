class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.string :text
      t.boolean :read
      t.date :timeSent

      t.timestamps
    end
  end
end
