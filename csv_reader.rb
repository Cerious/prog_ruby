class CsvReader
  def initialize
    @book_in_stock = []
  end

  def read_in_csv_file_name(csv_file)
    CSV.foreach(csv_file, headers: true) do |row|
      @books_in_stock << BooksInStock.new(row["ISBN"], row["Price"])
    end
  end

  def total_value_in_stock
    sum = 0.0
    @books_in_stock.each {|book| sum += book.price}
    sum
  end

  def number_of_each_isbn
  end

end
