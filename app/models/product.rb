class Product < ActiveRecord::Base

  validates_numericality_of :price, 
                            :if => :price,
                            :greater_than => 0
                            
  validates_presence_of     :name

end
