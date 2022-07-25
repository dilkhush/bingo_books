class BooksController < ApplicationController

  before_action :set_books, only: [:index]
  before_action :set_book,  only: [:show]

  def index
    render Pages::Books::Index, books: @books
  end

  def show
    render Pages::Books::Show, book: @book
  end

  private

    def set_book
      @book = Book.find(params[:id])
    end

    def set_books
      @books = Book.all
    end
end
