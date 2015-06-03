class Matter < ActiveRecord::Base

  validates :matter_name, :presence => true, :uniqueness => true

  has_many :messages
  belongs_to :user

end
