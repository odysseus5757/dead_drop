class Message < ActiveRecord::Base

  validates :classification_name, :presence => true, :uniqueness => true

  belongs_to :matter
  belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'




end
