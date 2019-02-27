require './lib/enigma'
handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close
enigma = Enigma.new
decrypted_text = enigma.decrypt(incoming_text, "91645")

writer = File.open(ARGV[1], "w")

writer.write(decrypted_text[:decryption])

writer.close
puts "Created #{ARGV[1]} with a key #{enigma.key} and date #{enigma.date}"
