module Key

  def keys
    keys = {}
    keys[:A_key] = @key[0..1].to_i
    keys[:B_key] = @key[1..2].to_i
    keys[:C_key] = @key[2..3].to_i
    keys[:D_key] = @key[3..4].to_i
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
    new_date = @date.to_i ** 2
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
