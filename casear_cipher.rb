ASCII_UPPER = 65
ASCII_LOWER = 97

def caesar_cipher(basic_phrase, shift_factor = 1)
  basic_chars = basic_phrase.chars
  encoded_chars = []

  basic_chars.each do |character|
    char_ascii = character.ord

    if char_ascii.between?(ASCII_UPPER, 90)
      char_ascii = (char_ascii - ASCII_UPPER + shift_factor) % 26 + ASCII_UPPER
    elsif char_ascii.between?(ASCII_LOWER, 122)
      char_ascii = ((char_ascii - ASCII_LOWER + shift_factor) % 26) + ASCII_LOWER
    end
    
    encoded_chars << char_ascii.chr
  end

  encoded_chars.join('')
end