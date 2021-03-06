require './lib/enigma'
handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close
enigma = Enigma.new
encrypted_text = enigma.encrypt(incoming_text)

writer = File.open(ARGV[1], "w")

writer.write(encrypted_text[:encryption])

writer.close
puts "Created #{ARGV[1]} with a key #{enigma.key} and date #{enigma.date}"


# ARGV[0] == 'message.txt'
# ARGV[1] == 'encryption.txt'
