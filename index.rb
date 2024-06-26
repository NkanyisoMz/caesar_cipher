def wrap_around(char, shift)
    (((char.ord - 'a'.ord + shift) % 26) + 'a'.ord).chr
  end
  
  def caesar_cipher(text, shift)
    encrypted_text = ""
    text.each_char do |char|
      if char.match?(/[a-z]/i) # Check if the character is a letter
        encrypted_text += wrap_around(char.downcase, shift)
      else
        encrypted_text += char
      end
    end
    return encrypted_text
  end
  

  