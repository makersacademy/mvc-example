
class Book
  attr_reader :name, :author

  def initialize(name = '', author = '')
    @name = name
    @author = author
  end

  def self.all
    puts "3. **** MODEL RECEIVES A REQUEST FOR ALL BOOKS ***"
    puts "4. **** MODEL MAKES A REQUEST TO DB FOR ALL BOOK ROWS ***"
    result = DatabaseConnection.query('SELECT * FROM books;')
    puts "5. **** MODEL RECEIVES RESPONSE FROM DB AND TRANSFORMS ROWS INTO BOOK OBJECTS ***"
    result.map{ |row| Book.new(row['name'], row['author']) }
  end

  def self.add(name, author)
    DatabaseConnection.query("INSERT into books (name, author) values('#{name}', '#{author}');")
  end
end
