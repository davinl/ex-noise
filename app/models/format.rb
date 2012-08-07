class Format < ActiveRecord::Base
  attr_accessible :abbreviation, :name
  
  validates_uniqueness_of :abbreviation
  
end
