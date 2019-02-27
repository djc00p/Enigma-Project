module Decryption

  def decrypt_message(message)
    new_message = String.new
    key_values = final_shifts.values
    message.downcase.each_char do |letter|
      new_number = key_values.first
      new_message  << decrypt_letter_shift(letter, new_number)
      characters.index(letter).nil? ? key_values.rotate(0) : key_values.rotate!
    end
    new_message
  end

  def decrypt_letter_shift(letter, number)
    if characters.index(letter).nil?
      letter
    else
      characters.rotate(decrypt_letter_index(letter,number)).first
    end
  end

  def decrypt_letter_index(letter,number)
    characters.index(letter) - number
  end
end
