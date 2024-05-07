json.extract! message, :id, :text, :read, :timeSent, :created_at, :updated_at
json.url message_url(message, format: :json)
