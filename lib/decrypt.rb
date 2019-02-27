require './lib/enigma'
handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close
enigma = Enigma.new(incoming_text, "97419",)
decrypted_text = enigma.decrypt(incoming_text, "97419")

writer = File.open(ARGV[1], "w")

writer.write(decrypted_text)

writer.close
puts "Created 'decryption.txt' with a key #{enigma.key} and date #{enigma.date}"
