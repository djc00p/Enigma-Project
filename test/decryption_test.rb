 require './test/test_helper'
require 'pry'

class DecryptionTest < Minitest::Test
  def setup
    @enigma = Enigma.new("hello world", "02715", "040895")
  end

  def test_change_of_letter_from_character_set_array
    assert_instance_of String, @enigma.decrypt_message("whalciktdwxlrmx")
  end

  def test_it_will_keep_character_not_in_character_set
    assert_instance_of String, @enigma.decrypt_message("keder, a'fcdxhqtx!t58")
  end

  def test_to_get_an_index_that_wont_be_greater_than_26
    assert_instance_of Integer, @enigma.decrypt_letter_index(" ", 34)
    assert_instance_of Integer, @enigma.decrypt_letter_index("h", 5)
    assert_instance_of Integer, @enigma.decrypt_letter_index("a", 65)
  end
end
