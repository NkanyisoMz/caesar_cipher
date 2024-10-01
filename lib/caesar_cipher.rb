def wrap_around(char, shift)
  (((char.ord - 'a'.ord + shift) % 26) + 'a'.ord).chr
end

def wrap_around_C(char, shift)
  (((char.ord - 'A'.ord + shift) % 26) + 'A'.ord).chr
end

def caesar_cipher(text, shift)
  encrypted_text = ''
  text.each_char do |char|
    encrypted_text += if char.match?(/[a-z]/) # Check if the character is a letter
                        wrap_around(char.downcase, shift)
                      elsif char.match?(/[A-Z]/)
                        wrap_around_C(char.upcase, shift)
                      else
                        char
                      end
  end
  encrypted_text
end
