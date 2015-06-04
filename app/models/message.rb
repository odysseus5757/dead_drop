class Message < ActiveRecord::Base

  validates :classification_name, :presence => true, :uniqueness => true

  belongs_to :matter

  belongs_to :sender, class_name: "User", foreign_key: "sender_id"
  belongs_to :recipient, class_name: "User", foreign_key: "recipient_id"


end
