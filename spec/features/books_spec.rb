feature 'books page' do
  scenario 'it can display a list of books' do
      visit('/books')
      expect(page).to have_content('test book test author')
  end

  scenario 'it can add a book to the list' do
      visit('/books')
      fill_in :name, with: 'Harry Potter'
      fill_in :author, with: 'J. K. Rowling'
      click_button 'submit'
      expect(page).to have_content('Harry Potter J. K. Rowling')
  end
end
