require 'minitest/autorun'
require 'minitest/pride'
require './lib/generate_num'
require './lib/enigma'
require 'pry'

class GenerateNumberTest < Minitest::Test

  def test_if_it_a_generate_a_number
    generate_num = GenerateNumber.new
    assert_instance_of String, generate_num.random_num_generator
    assert_equal 5, generate_num.random_num_generator.length
  end
end
