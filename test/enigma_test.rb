require './test/test_helper'
require 'pry'

class EnigmaTest < Minitest::Test

  def test_existence_of
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_it_can_ecrypt_a_messsage_and_return_a_hash
    enigma = Enigma.new
    expected = {
    encryption: "keder ohulw",
    key: "02715",
    date: "040895"
  }
    assert_equal expected, enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_can_decrypt_a_messsage_and_return_a_hash
    enigma = Enigma.new
    expected = {
    decryption: "hello world",
    key: "02715",
    date: "040895"
  }
    assert_equal expected, enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_todays_date
    enigma = Enigma.new
    assert_instance_of String, enigma.todays_date
    assert_equal 6, enigma.todays_date.length
  end

  def test_it_can_ecrypt_without_a_date_provided
    enigma = Enigma.new
    expected = {
      encryption: "qnhaxisd u ",
      key: "02715",
      date: enigma.todays_date
    }
    assert_equal expected, enigma.encrypt("hello world", "02715")
  end

  def test_it_can_decrypt_without_a_date_provided
    enigma = Enigma.new
    expected = {
      decryption: "hello world",
      key: "02715",
      date: enigma.todays_date
    }
    assert_equal expected, enigma.decrypt("qnhaxisd u ", "02715")
  end

  def test_it_can_ecrypt_without_a_date_and_a_key
    enigma = Enigma.new
    result = enigma.encrypt("hello world")
    expected = enigma.encrypt("hello world", result[:key], result[:date])

    assert_equal expected, result
  end

  def test_it_can_decrypt_without_a_date_and_a_key
    enigma = Enigma.new
    msg = enigma.encrypt("hello world", "66727")
    expected = {
    decryption: "hello world",
    key: "66727",
    date: enigma.todays_date
  }
   assert_equal expected, enigma.decrypt(msg[:encryption], "66727")
  end
end
