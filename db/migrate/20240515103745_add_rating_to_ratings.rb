class AddRatingToRatings < ActiveRecord::Migration[7.1]
  def change
    add_column :ratings, :rating, :integer, default: 1, null: false
  end
end
