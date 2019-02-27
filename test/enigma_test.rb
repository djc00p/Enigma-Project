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

end
