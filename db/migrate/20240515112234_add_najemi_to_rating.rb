class AddNajemiToRating < ActiveRecord::Migration[7.1]
  def change
    add_reference :ratings, :najemi, null: false, foreign_key: true, default: 0
  end
end
