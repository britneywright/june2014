class Book
  def initialize(title, categoy, borrow_time)
  end
end

def Integer.all
  Enumerator.new do |yielder, n: 0|
  loop { yielder.yield(n += 1) }
  end.lazy
end

def palindrome?(n)
  n = n.to_s
  n == n.reverse
end

p Integer
  .all
  .select {|i| (i % 3).zero? }
  .select { |i| palindrome?(i) }
  .first(10)

def create_block_object(&block)
  block
end

bo = create_block_object { |param| puts "You called me with #{param}" }
bo.call 99
bo.call "cat"

def my_each

end

something = [1,2,3].each {|number| number + 2}

p something