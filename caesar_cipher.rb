require 'minitest/autorun'
require 'minitest/pride'

def shift_letter(letter,shift_number)
  letter_value = ALPHABET.find_index(letter.downcase) + shift_number
  new_letter = ALPHABET[letter_value % 26]
  letter == letter.upcase ? letter.replace(new_letter.upcase) : letter.replace(new_letter)
end

def caesar_cipher(phrase, shift_number)
  phrase.gsub(/\w/) do |letter| 
   shift_letter(letter,shift_number)
  end
end

ALPHABET = ("a".."z").to_a

describe "caesar cipher shifts the letters in text by a specified number" do
  it "should shifts all letters by 5 letters" do
    caesar_cipher("What a string!", 5).must_equal "Bmfy f xywnsl!"
  end
end