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

  def offsets
    offsets = {}
    offsets[:A_offset] = date_squared[-4].to_i
    offsets[:B_offset] = date_squared[-3].to_i
    offsets[:C_offset] = date_squared[-2].to_i
    offsets[:D_offset] = date_squared[-1].to_i
    offsets
  end

  def date_squared
    date = "040895"
    new_date = date.to_i ** 2
    new_date.to_s
  end

  def final_shifts
    final_shifts = {}
    final_shifts[:A] = offsets[:A_offset] + keys[:A_key]
    final_shifts[:B] = offsets[:B_offset] + keys[:B_key]
    final_shifts[:C] = offsets[:C_offset] + keys[:C_key]
    final_shifts[:D] = offsets[:D_offset] + keys[:D_key]
    final_shifts
  end
end
