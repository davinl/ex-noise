class Product < ActiveRecord::Base

  validates_numericality_of :price, 
                            :if => :price,
                            :greater_than => 0

end
