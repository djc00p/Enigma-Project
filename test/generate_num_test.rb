require './test/test_helper'
require 'pry'

class GenerateNumberTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_if_it_a_generate_a_number
    assert_instance_of String, @enigma.random_num_generator
    assert_equal 5, @enigma.random_num_generator.length
  end
end
