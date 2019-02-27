require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryption'
require './lib/key'
require './lib/enigma'
require 'pry'

class EncryptionTest < Minitest::Test
  def setup
    @encryption = Encryption.new
  end

  def test_character_set_exist
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
      "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @encryption.characters
  end

  def test_to_get_an_index_of_a_letter
    assert_instance_of Integer, @enigma.encrypt_letter_index
    assert_instance_of Integer, @enigma.encrypt_letter_index
    assert_instance_of Integer, @enigma.encrypt_letter_index
  end

end
