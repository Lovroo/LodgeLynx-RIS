class RemoveRatingFromPrebivalisca < ActiveRecord::Migration[7.1]
  def change
    remove_column :prebivaliscas, :rating, :integer
  end
end
