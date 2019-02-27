class Key
  def keys
    generated_number = "02715"
    keys = {}
    keys[:A_key] = generated_number[0..1].to_i
    keys[:B_key] = generated_number[1..2].to_i
    keys[:C_key] = generated_number[2..3].to_i
    keys[:D_key] = generated_number[3..4].to_i
    keys
  end

  def date_squared
    date = "040895"
    new_date = date.to_i ** 2
    new_date.to_s
  end
end
