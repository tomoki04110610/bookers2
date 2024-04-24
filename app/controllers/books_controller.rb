class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "You have created book successfully"
      redirect_to book_path(@book.id)
    else
      flash.now[:notice] = "error"
      @books = Book.all
      @user = User.find(current_user.id)
      @booknew = Book.new
      render :index
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      flash[:notice] = "You have updated book successfully"
      redirect_to book_path(book.id)
    else
      flash.now[:notice] = "error"
      @book = Book.find(params[:id])
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  def index
    @books = Book.all
    @user = User.find(current_user.id)
    @booknew = Book.new
  end

  def show
    @book = Book.find(params[:id])
    @booknew = Book.new
  end


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end