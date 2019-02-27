class Decryption
  def characters
    ("a".."z").to_a << " "
  end

  def decrypt_letter_index(letter,number)
    characters.index(letter) - number
  end
end
