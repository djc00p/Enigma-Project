require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require './lib/enigma'
require 'pry'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new
  end

  def test_keys_are_seperated_from_generated_number
    assert_instance_of Integer, @key.keys[:A_key]
    assert_instance_of Integer, @key.keys[:B_key]
    assert_instance_of Integer, @key.keys[:C_key]
    assert_instance_of Integer, @key.keys[:D_key]
  end

  def test_getting_squared_value_of_the_date
    assert_instance_of String, @key.date_squared
  end

  def test_offset_values_are_set_as_the_last_four_of_date_squarred
    assert_instance_of Integer, @key.offsets[:A_offset]
    assert_instance_of Integer, @key.offsets[:B_offset]
    assert_instance_of Integer, @key.offsets[:C_offset]
    assert_instance_of Integer, @key.offsets[:D_offset]
  end
end
