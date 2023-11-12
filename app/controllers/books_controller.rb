class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
  end

  def create
    puts "Params: #{params}"

    # Retrieve the book parameters that we submit in the form
      @book = Book.new(
        title: "#{params[:title]}",
        author: "#{params[:author]}",
        description: "#{params[:description]}"
      )
    # Create a new record in the database with this parameters
    # And then redirect to the index page
      if @book.save
        redirect_to books_path
      end
  end
end