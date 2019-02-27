require './test/test_helper'
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
    assert_equal expected, enigma.encrypt
  end

  def test_it_can_decrypt_a_messsage_and_return_a_hash
    enigma = Enigma.new("keder ohulw", "02715", "040895")
    expected = {
    decryption: "hello world",
    key: "02715",
    date: "040895"
  }
    assert_equal expected, enigma.decrypt
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
    assert_equal expected, enigma.encrypt
  end

  def test_it_can_decrypt_without_a_date_provided
    enigma = Enigma.new("qnhaxisd u ", "02715")
    expected = {
      decryption: "hello world",
      key: "02715",
      date: enigma.todays_date
    }
    assert_equal expected, enigma.decrypt
  end

  def test_it_can_ecrypt_without_a_date_and_a_key
    enigma = Enigma.new("hello world")
    expected = {
      encryption: "  imgvtpjga",
      key: enigma.key,
      date: enigma.todays_date
    }

    assert_equal expected, enigma.encrypt
  end

  def test_it_can_decrypt_without_a_date_and_a_key
    enigma = Enigma.new("hello world", "66727")
    expected = {
    decryption: "hello world",
    key: "66727",
    date:"260219"
  }
   assert_equal expected, enigma.decrypt
  end
# I couldnt figure out how to test decrypt without the key changing randomly so
# I just inputed the values that my encryption returned pluged those into my decrypt.

end
