require './test/test_helper'
require 'pry'

class EncryptionTest < Minitest::Test
  def setup
    @enigma = Enigma.new("hello world", "02715", "040895")
  end

  def test_character_set_exist
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
      "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @enigma.characters
  end

  def test_change_of_letter_from_character_set_array
    assert_instance_of String, @enigma.encrypt_message("This is awesome")
  end

  def test_it_will_keep_character_not_in_character_set
    assert_instance_of String, @enigma.encrypt_message("Hello, I'm Deonte! 58")
  end

  def test_to_get_an_index_of_a_letter
    assert_instance_of Integer, @enigma.encrypt_letter_index(" ", 34)
    assert_instance_of Integer, @enigma.encrypt_letter_index("h", 5)
    assert_instance_of Integer, @enigma.encrypt_letter_index(" ", 1)
  end
end
