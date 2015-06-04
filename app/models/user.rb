class User < ActiveRecord::Base

  validates :username, :presence => true, :uniqueness => true

  has_many :matters

  has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
  has_many :inbox_messages, class_name: "Message", foreign_key: "recipient_id"

end
