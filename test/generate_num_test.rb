require 'minitest/autorun'
require 'minitest/pride'
require './lib/generate_num'
require './lib/enigma'
require 'pry'

class GenerateNumberTest < Minitest::Test
  def setup
    @enigma = Enigma.new("hello world", "02715", "040895")
  end

  def test_if_it_a_generate_a_number
    assert_instance_of String, @enigma.random_num_generator
    assert_equal 5, @enigma.random_num_generator.length
  end
end
