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

  def modify
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    @book.update(title: params[:book][:title], author: params[:book][:author], description: params[:book][:description])

    redirect_to books_path
  end

  def destroy
    @book = Book.find(params[:id])

    @book.destroy

    redirect_to books_path
  end
end