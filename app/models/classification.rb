class Classification < ActiveRecord::Base

  validates :classification_name, :presence => true, :uniqueness => true

  has_many :messages

end
