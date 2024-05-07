class AddAdminAndNotNullConstraintsToUsers < ActiveRecord::Migration[7.1]
  def change
    

    # Change the ime, priimek, and telefonska columns to not allow null values
    change_column_null :users, :ime, false
    change_column_null :users, :priimek, false
    change_column_null :users, :telefonska, false
    change_column_default :users, :admin, from: nil, to: false

  end
end
