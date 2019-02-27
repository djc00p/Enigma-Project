require './test/test_helper'
require 'pry'

class KeyTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_keys_are_seperated_from_generated_number
    assert_instance_of Integer, @enigma.keys[:A_key]
    assert_instance_of Integer, @enigma.keys[:B_key]
    assert_instance_of Integer, @enigma.keys[:C_key]
    assert_instance_of Integer, @enigma.keys[:D_key]
  end

  def test_getting_squared_value_of_the_date
    assert_instance_of String, @enigma.date_squared
  end

  def test_offset_values_are_set_as_the_last_four_of_date_squarred
    assert_instance_of Integer, @enigma.offsets[:A_offset]
    assert_instance_of Integer, @enigma.offsets[:B_offset]
    assert_instance_of Integer, @enigma.offsets[:C_offset]
    assert_instance_of Integer, @enigma.offsets[:D_offset]
  end

  def test_final_shifts_for_encryption
    assert_instance_of Integer, @enigma.final_shifts[:A]
    assert_instance_of Integer, @enigma.final_shifts[:B]
    assert_instance_of Integer, @enigma.final_shifts[:C]
    assert_instance_of Integer, @enigma.final_shifts[:D]
  end
end
