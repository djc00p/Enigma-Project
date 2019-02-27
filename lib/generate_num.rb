module GenerateNumber
  def random_num_generator
  random_number ||= rand(0..99999).to_s.rjust(5, "0")
  end
end
