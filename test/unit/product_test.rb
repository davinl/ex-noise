require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def test_price_must_be_greater_than_0
    p = Product.new(:name => "In On the Kill Taker", :price => -1)
    assert_equal false, p.valid?
    p.price = 0
    assert_equal false, p.valid?
    p.price = 0.01
    assert p.valid?    
  end
  
  def test_name_cannot_be_blank
    p = Product.new(:price => 10, :format => '12"')
    assert_equal false, p.valid?
    p.name = "Strings of Life"
    assert p.valid?
  end
  
  def test_formate_cannot_be_blank
    p = Product.new(:price => 12, :name => 'All Hail West Texas')
    assert_equal false, p.valid?
    p.format = "CD"
    assert p.valid?
  end
  
end
