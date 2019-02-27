require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryption'
require './lib/decryption'
require './lib/key'
require './lib/enigma'
require 'pry'

class DecryptionTest < Minitest::Test
  def setup
    @decryption = Decryption.new
  end

  def test_character_set_exist
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
      "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @decryption.characters
  end

  def test_change_of_letter_from_character_set_array
    assert_instance_of String, @decryption.decrypt_message("whalciktdwxlrmx")
  end

  def test_it_will_keep_character_not_in_character_set
    assert_instance_of String, @decryption.decrypt_message("keder, a'fcdxhqtx!t58")
  end

  def test_to_get_an_index_of_negstive_value
    assert_equal -8, @decryption.decrypt_letter_index(" ", 34)
    assert_equal 2, @decryption.decrypt_letter_index("h", 5)
    assert_equal -65, @decryption.decrypt_letter_index("a", 65)
  end

  def test_it_can_shift_letters
    assert_equal "w", @decryption.decrypt_letter_shift("a", 5)
    assert_equal "!", @decryption.decrypt_letter_shift("!", 85)
  end
end
