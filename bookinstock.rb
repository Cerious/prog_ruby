class BookInStock
  attr_accessor :isbn
  attr_reader :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def price_in_cents
    Integer(price * 100 + 0.5)
  end
  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end
book = BookInStock.new("isbn1", 4.67)
puts book.isbn
