class BooksController < ApplicationController
  def index
    render Pages::Books::Index
  end

  def show
    render Pages::Books::Show
  end
end