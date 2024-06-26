class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user

  validates_presence_of :text, :conversation_id, :user_id

  private
  def message_time
    created_at.strftime("%d/%m/%y at %l:%M %p")
  end
end

