require './lib/key'
require './lib/encryption'
require './lib/decryption'
require './lib/generate_num'

class Enigma
  include GenerateNumber
  include Encryption
  include Decryption
  include Key

  attr_reader :message, :key, :date

  def initialize(message, key = random_num_generator, date = todays_date)
    @message = message
    @key = key
    @date = date
    @output = Hash.new
  end
end
