require 'minitest/autorun'
require 'minitest/pride'

def shift_letter(letter,shift_number)
  letter_value = ALPHABET_VALUES[letter.downcase] + shift_number
  reversed_hash = ALPHABET_VALUES.invert
  new_letter = reversed_hash[letter_value % 26]
  letter == letter.upcase ? letter.replace(new_letter.upcase) : letter.replace(new_letter)
end

alphabet = ("a".."z").to_a
ALPHABET_VALUES = Hash[alphabet.each_with_index.map {|value, index| [value, index]}]

def caesar_cipher(phrase, shift_number)
  phrase.gsub(/\w/) do |letter| 
    shift_letter(letter,shift_number)
  end
end

describe "caesar cipher shifts the letters in text by a specified number" do
  it "should shifts all letters by 5 letters" do
    caesar_cipher("What a string!", 5).must_equal "Bmfy f xywnsl!"
  end
end