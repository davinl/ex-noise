require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def test_price_must_be_greater_than_0
    p = Product.new(:price => -1)
    assert_equal false, p.valid?
    p.price = 0
    assert_equal false, p.valid?
    p.price = 0.01
    assert p.valid?    
  end
  
  def test_name_cannot_be_blank
    p = Product.new(:price => 10)
    assert_equal false, p.valid?
  end
end
