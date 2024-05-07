
class RemoveSenderIdFromConversations < ActiveRecord::Migration[7.0]
  def change
    remove_column :conversations, :sender_id
  end
end

