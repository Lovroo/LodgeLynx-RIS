class CreateNajemis < ActiveRecord::Migration[7.1]
  def change
    create_table :najemis do |t|
      t.date :dat_najema
      t.date :dat_konec_najema

      t.timestamps
    end
  end
end
