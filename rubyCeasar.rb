def caesar_cipher(text, shift)
    encrypted_text = ""
    original_letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    encrypted_letters = "BCDEFGHIJKLMNOPQRSTUVWXYZAbcdefghijklmnopqrstuvwxyza"
  
    text.each_char do |char|
      if original_letters.include?(char)
        char_index = original_letters.index(char)
        encrypted_char = encrypted_letters[char_index]
        encrypted_text += encrypted_char
      else
        encrypted_text += char
      end
    end
  
    encrypted_text
  end
  
  def main
    puts "Welcome to the Caesar Cipher Encryption Program!"
  
    print "Enter text to encrypt: "
    text = gets.chomp
  
    print "Enter the number of spaces to shift the encryption key: "
    shift = gets.chomp.to_i
  
    encrypted_text = caesar_cipher(text, shift)
  
    puts "Encrypted Text: #{encrypted_text}"
  end
  
  if __FILE__ == $PROGRAM_NAME
    main
  end
  