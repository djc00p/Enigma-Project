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
    assert_equal expected, @enigma.characters
  end
end
