def caesar_cipher(string, shift)
  result = ""

  string.each_char do |character|
    if character.match(/[a-zA-Z]/)
      # Determine if the character is uppercase or lowercase
      is_uppercase = character == character.upcase
      character_code = character.ord

      # Apply the shift factor
      shifted_character_code = character_code + shift

      # Handle wrapping from z to a or Z to A
      if is_uppercase
        shifted_character_code = ((shifted_character_code - 'A'.ord) % 26) + 'A'.ord
      else
        shifted_character_code = ((shifted_character_code - 'a'.ord) % 26) + 'a'.ord
      end

      # Convert back to character and append to the result
      result << shifted_character_code.chr
    else
      # If not a letter, keep the character unchanged
      result << character
    end
  end

  result
end

puts caesar_cipher('hello', 3)