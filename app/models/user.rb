class User < ActiveRecord::Base

  validates :username, :presence => true, :uniqueness => true

  has_many :matters
  has_many :messages

end
