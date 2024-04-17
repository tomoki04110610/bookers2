class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new()

  def edit
  end

  def index
  end

  def show
  end
end
