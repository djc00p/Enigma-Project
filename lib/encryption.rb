class Encryption
  def characters
    ("a".."z").to_a << " "
  end

  def encrypt_letter_shift(letter,number)
    new = ""
    if characters.index(letter).nil?
      new << letter
    else
      new << characters.rotate(encrypt_letter_index(letter,number)).first
    end
    new
  end

  def encrypt_letter_index(letter,number)
   characters.index(letter) + number
  end
end
