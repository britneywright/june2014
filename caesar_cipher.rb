require 'minitest/autorun'
require 'minitest/pride'

def alphabet_loop(letter_value)
  unless letter_value < 26
    letter_value = letter_value - 26
  end
  letter_value
end

def convert_letter_to_new_letter(letter, number)
  letter_value = ALPHABET_VALUES[letter.downcase] + number
  reversed_hash = ALPHABET_VALUES.invert
  new_letter = reversed_hash[alphabet_loop(letter_value)]
  if letter == letter.upcase
    letter.replace(new_letter.upcase)
  else
    letter.replace(new_letter)
  end
end

def convert_word_to_separate_letters(word, number)
  letters = word.gsub(/\w/).to_a
  new_word = letters.each { |letter| convert_letter_to_new_letter(letter, number) }.join('')
  word.replace(new_word)
end

def convert_phrase_to_separate_words(phrase, number)
  new_phrase = phrase.split(' ').map { |word| convert_word_to_separate_letters(word, number) }.join(' ')
  phrase.replace(new_phrase)
end

def caesar_cipher(phrase, number)
  cipher = convert_phrase_to_separate_words(phrase, number)
  return cipher
end  

alphabet = ("a".."z").to_a
ALPHABET_VALUES = Hash[alphabet.each_with_index.map {|value, index| [value, index + 1]}]

describe "caesar cipher shifts the letters in text by a specified number" do
  it "should shifts all letters by 5 letters" do
    caesar_cipher("What a string", 5).must_equal "Bmfy f xywnsl"
  end
end