class Pet
  attr_accessor :name, :age, :gender, :color

  def initialize(name, age, gender, color)
    @name = name
    @age = age
    @gender = gender
    @color = color
  end
end

class Cat < Pet
  def meow
    puts "Meow!"
  end
end

class Dog < Pet
  def bark
    puts "Bark!"
  end
end

class Snake < Pet
  attr_accessor :length

  def initialize(name, age, gender, color, length)
    super(name, age, gender, color)
    @length = length
  end

  def hiss
    puts "Hiss!"
  end
end

lester = Snake.new("Lester", 2, "male", "green and yellow", "2ft")

puts lester.length

lester.hiss