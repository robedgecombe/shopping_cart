class BooksController < ApplicationController

  def index
    @books = Book.all
    # p @books
  end

  def show
    @book = Book.find(params[:id])
  end

end
