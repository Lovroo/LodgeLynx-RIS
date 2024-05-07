class AddUserRecieverToConversations < ActiveRecord::Migration[7.1]
  def change
    add_column :conversations, :receiver_id, :integer
    add_column :conversations, :sender_id, :integer
  end
end
