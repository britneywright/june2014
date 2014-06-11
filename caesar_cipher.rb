require 'minitest/autorun'
require 'minitest/pride'

def alphabet_loop(letter_value)
  letter_value <= 26 ? letter_value : letter_value - 26  
end

def convert_letter_to_new_letter(letter, number)
  letter_value = ALPHABET_VALUES[letter.downcase] + number
  reversed_hash = ALPHABET_VALUES.invert
  new_letter = reversed_hash[alphabet_loop(letter_value)]
  letter == letter.upcase ? letter.replace(new_letter.upcase) : letter.replace(new_letter)
end

alphabet = ("a".."z").to_a
ALPHABET_VALUES = Hash[alphabet.each_with_index.map {|value, index| [value, index + 1]}]

def caesar_cipher(phrase, number)
  word = phrase.gsub(/\w/)
  word.each {|letter| letter.replace(convert_letter_to_new_letter(letter,number))}
end

describe "caesar cipher shifts the letters in text by a specified number" do
  it "should shifts all letters by 5 letters" do
    caesar_cipher("What a string!", 5).must_equal "Bmfy f xywnsl!"
  end
end