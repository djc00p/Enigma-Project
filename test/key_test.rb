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
end
