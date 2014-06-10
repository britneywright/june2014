class Person
  attr_accessor :age

  def initialize(age)
    @age = age
  end

  def message
    if age >= 18
     puts "You're a an adult."
    else
     puts "You're a child."
    end
  end
end

ginger = Person.new(15)
ginger.message

1.upto(5) do |number| 
  print "jump #{number}! "
end

x = %q{What
are
You
doing?}

puts x

puts "foobar".gsub('o','e')

puts "foobar".sub(/^../, 'bo')

puts "foobar".sub(/..$/, 'er')

"howdy. What's been going on with you lately?".scan(/\w\w/) {|letter| puts letter}