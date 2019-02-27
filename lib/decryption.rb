class Decryption
  def characters
    ("a".."z").to_a << " "
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
