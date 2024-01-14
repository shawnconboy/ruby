def caesar_cipher(text, shift)
  encrypted_text = ""

  text.each_char do |char|
    if char.match?(/[a-zA-Z]/)
      offset = char.match?(/[a-z]/) ? 'a'.ord : 'A'.ord
      encrypted_char = ((char.ord - offset + shift) % 26 + offset).chr
      encrypted_text += encrypted_char
    else
      encrypted_text += char
    end
  end

  encrypted_text
end

def main
  puts
  puts
  puts "Welcome to the Caesar Cipher Encryption Program!"

  print "Enter text to encrypt: "
  text = gets.chomp

  print "Enter the number of spaces to shift the encryption key: "
  shift = gets.chomp.to_i

  encrypted_text = caesar_cipher(text, shift)

  puts "Encrypted Text: #{encrypted_text}"
end

# if __FILE__ == $PROGRAM_NAME
  main
# end
