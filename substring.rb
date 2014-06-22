require 'minitest/autorun'
require 'minitest/pride'

def substrings(phrase, dictionary)
  frequencies = Hash.new(0)
  sorted_phrase = phrase.downcase.scan(/[\w']+/).sort.join
    dictionary.each do |entry| 
      if sorted_phrase.include?(entry)
        frequencies[entry] += sorted_phrase.scan(/#{entry}/).count
      end
    end 
  frequencies
end

describe "return a hash listing each substring found in the second argument and the count" do
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
  it "should display words and the count of words" do
    substrings("Howdy partner, sit down! How's it going?", dictionary).must_equal ({"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=> 3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1})
  end

  it "should display words and the count of words" do
    substrings("below", dictionary).must_equal ({"below"=>1, "low"=>1})
  end 
end   