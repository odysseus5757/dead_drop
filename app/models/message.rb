class Message < ActiveRecord::Base

  validates :classification_name, :presence => true, :uniqueness => true

  belongs_to :matter
  belongs_to :user

end
