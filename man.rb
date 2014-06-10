class Person
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
end

jim = Person.new("Jim", "26", "female")

puts jim.name