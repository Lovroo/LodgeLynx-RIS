class Conversation < ApplicationRecord
  #belongs_to :sender, class_name: "User", foreign_key: "sender_id"
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"
  has_many :messages, dependent: :destroy

  validates_uniqueness_of :user_id, scope: :receiver_id
  scope :between, -> (user_id, receiver_id) do
    where("(conversations.user_id = ? AND conversations.receiver_id = ?) OR (conversations.receiver_id = ? AND conversations.user_id = ?)", user_id, receiver_id, user_id, receiver_id)
  end
  def recipient(current_user)
    self.user_id == current_user.id ? self.receiver : self.user
  end
  def unread_message_count(current_user)
    self.messages.where("user_id != ? AND read = ?", current_user.id, false).count
  end
end
