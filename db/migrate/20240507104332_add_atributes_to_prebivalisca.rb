class AddAtributesToPrebivalisca < ActiveRecord::Migration[7.1]
  def change
    add_column :prebivaliscas, :kvadratura, :int, null:false, default: 0
    add_column :prebivaliscas, :cena, :int, null:false, default: 0
    add_column :prebivaliscas, :description, :text,  null:false, default:"Brez opisa"
    add_column :prebivaliscas, :image, :string,  null:false, default:"Brez slik"
    add_column :prebivaliscas, :lokacija, :string,  default:"Brez javne lokacije",  null:false
    change_column :prebivaliscas, :rating, :integer, limit: 2
  end
end
