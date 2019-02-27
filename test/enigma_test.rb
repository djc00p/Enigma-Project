require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/key'
require './lib/encryption'
require './lib/decryption'
require './lib/generate_num'
require 'pry'

class EnigmaTest < Minitest::Test


  def test_existence_of
    enigma = Enigma.new("hello world", "02715", "040895")
    assert_instance_of Enigma, enigma
  end

  def test_it_can_ecrypt_a_messsage_and_return_a_hash
    enigma = Enigma.new("hello world", "02715", "040895")
    expected = {
    encryption: "keder ohulw",
    key: "02715",
    date: "040895"
  }
    assert_equal expected, enigma.encrypt("hello world", "02715", "040895")
  end

end
