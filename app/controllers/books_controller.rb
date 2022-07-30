class BooksController < ApplicationController

  before_action :set_books, only: [:index]
  before_action :set_book,  only: [:show, :destroy]

  def index
    render Pages::Books::Index, books: @books
  end

  def show
    render Pages::Books::Show, book: @book
  end

  def new
    @book = Book.new
    render Pages::Books::New, book: @book
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      render json: {
        message: 'Book was successfully created.'
      }, status: :created
    else
      render json: {
        errors: @book.errors,
        message: 'Book could not be created.'
      }, status: :unprocessable_entity
    end
  end

  def destroy
    if @book.destroy
      render json: {
        message: 'Book was successfully deleted.'
      }, status: :created
    else
      render json: {
        errors: @book.errors,
        message: 'Book could not be deleted.'
      }, status: :unprocessable_entity
    end
  end

  private

    def book_params
      params.require(:book).permit(:title, :price, :description)
    end

    def set_book
      @book = Book.find(params[:id])
    end

    def set_books
      @books = Book.all
    end
end
