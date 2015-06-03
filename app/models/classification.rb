class Classification < ActiveRecord::Base

  validates :classification_name, :presence => true, :uniqueness => true


end
