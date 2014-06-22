class BookInStock

  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def price_in_cents
    Integer(price*100 + 0.5)
  end

  def price_in_cents=(cents)
    @price = cents / 100.0
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end

something = BookInStock.new(123, 33.80)
puts something.isbn
puts something.price
something.price = something.price * 0.5
puts "New price = #{something.price}"
puts "Price in cents = #{something.price_in_cents}"
puts something.price_in_cents = 1234
puts something.price
puts something.price_in_cents