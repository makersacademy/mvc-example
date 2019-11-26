require 'sinatra/base'

require './lib/Book'
require './database_connection_setup'

class BookServer < Sinatra::Base

    get '/books' do
      puts "1. **** CONTROLLER RECEIVES REQUEST *****"
      puts "2. **** CONTROLLER MAKES A REQUEST FOR ALL BOOK MODELS ***"
      @books = Book.all
      puts "6. *** CONTROLLER RECEIVES RESPONSE FROM MODELS WITH ALL BOOKS"
      puts "7. *** CONTROLLER MAKES REQUEST TO VIEW TO RENDER BOOKS PAGE WITH BOOK OBJECTS"
      response = erb :books
      puts "8. *** VIEW RESPONSES WITH HTML CONTAINING THE BOOKS"
      puts "9. *** CONTROLLER RESPONDS TO THE REQUEST WITH GENERATED VIEW"
      response
    end

    post '/add_book' do
      name = params['name']
      author = params['author']
      Book.add(name, author)
      redirect('/books')
    end

    run! if app_file == $0
end
