require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def test_price_must_be_greater_than_0
    p = Product.new(:price => -1)
    assert_equal false, p.valid?
  end
end
