class User < ActiveRecord::Base

  validates :username, :presence => true, :uniqueness => true

  has_many :matters
  has_many :messages, :foreign_key => 'sender_id', :primary_key => 'user_id'

end
