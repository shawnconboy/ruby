
#This is the two lists of original and necrypted letters // defines them 
original_letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
encrypted_letters = ["B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a"]


#Defines the function to perform the encryption 
def caesar_cipher(text, shift):
    encrypted_text = ""
    original_letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    encrypted_letters = "BCDEFGHIJKLMNOPQRSTUVWXYZAbcdefghijklmnopqrstuvwxyza"

    for char in text:
        if char in original_letters:
            char_index = original_letters.index(char)
            encrypted_char = encrypted_letters[char_index]
            encrypted_text += encrypted_char
        else:
            encrypted_text += char

    return encrypted_text

#  Defines main function for user input 
def main():
    print("Welcome to the Caesar Cipher Encryption Program!")
    
    text = input("Enter text to encrypt: ")
    shift = int(input("Enter the number of spaces to shift the encryption key: "))
    
    encrypted_text = caesar_cipher(text, shift)
    
    print("Encrypted Text:", encrypted_text)

    print(encrypted_text)

if __name__ == "__main__":
    main()