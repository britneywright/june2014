def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

def word_frequency(word_list)
  counts = Hash.new(0)
  for word in word_list
    counts[word] += 1
  end
  counts
end

raw_text = %{The problem breakes down into two parts.
First, given some text asa string, return a list of words. 
That sunds like an array. Then, build a count for each distinct word.
That sounds like a use for a hash---we can index it with the word and use the corresponding entry to keep a count.}

word_list = words_from_string(raw_text)
counts = word_frequency(word_list)
sorted = counts.sort_by{|word, count| count}
top_five = sorted.last(5)
print top_five.to_a