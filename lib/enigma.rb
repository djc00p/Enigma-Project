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

  def encrypt
    @output[:encryption] = encrypt_message(@message)
    @output[:key] = @key
    @output[:date] = @date
    @output
  end

  def decrypt
    encrypted_message = @output[:encryption]
    # binding.pry
    {
      decryption: decrypt_message(@message),
      key: @key,
      date: @date
    }
  end

  def todays_date
    date = Time.now
    date.strftime("%d%m%y")
  end
end
