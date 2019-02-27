class Encryption
  def characters
    ("a".."z").to_a << " "
  end

  def encrypt_letter_index
    letter = " "
    number = 34
   characters.index(letter) + number
  end
end
