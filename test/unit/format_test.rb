require 'test_helper'

class FormatTest < ActiveSupport::TestCase

  # def test_abbreviation_is_unique
  #   format = Format.new(name: 'qwerrt', abbreviation:'LP')
  #   assert_equal false, format.valid?
  # end

  def test_format_is_populated
    assert_equal 2, Format.count
  end

end
