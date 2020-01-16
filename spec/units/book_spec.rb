describe Book do
  it 'should be able to list all the books' do
    # retrieve a list of books from db (method we are testing)
    books = Book.all
    # look at the first item in the list
    book = books.first
    #check that the books name matches the entry in the database
    expect(book.name).to include('test book')
    #check that the books author matches the entry in the database
    expect(book.author).to include('test author')
  end

  it 'should be able to create a book' do
    # Call the add book method (method we are testing)
    Book.add('new book', 'new author')
    # retrieve all the books from the database
    books = Book.all
    # Find the latest book in the list
    book = books.first
    # Check the name matches the name passed into Book.add
    expect(book.name).to include('test book')
    # Check the author matches the name passed into Book.add
    expect(book.author).to include('test author')
  end
end
