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

  def test_it_can_decrypt_a_messsage_and_return_a_hash
    enigma = Enigma.new("hello world", "02715", "040895")
    expected = {
    decryption: "hello world",
    key: "02715",
    date: "040895"
  }
    assert_equal expected, enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_todays_date
    enigma = Enigma.new("hello world", "02715", "040895")
    assert_instance_of String, enigma.todays_date
    assert_equal 6, enigma.todays_date.length
  end

  def test_it_can_ecrypt_without_a_date_provided
    enigma = Enigma.new("hello world", "02715")
    expected = {
      encryption: "qnhaxisd u ",
      key: "02715",
      date: enigma.todays_date
    }
    assert_equal expected, enigma.encrypt("hello world", "02715")
  end
end
