def substrings(word, dictionary)
    word.downcase!
  
    substring_count = Hash.new(0)
  
    dictionary.each do |substring|
      downcased_substring = substring.downcase
      count = word.scan(/#{downcased_substring}/).length
  
      if count > 0
        substring_count[substring] += count
      end
    end
  
    substring_count
  end
  
  # Example usage
  dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
  
  result = substrings('below', dictionary)
  puts result
  