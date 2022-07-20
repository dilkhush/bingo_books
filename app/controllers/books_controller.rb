class BooksController < ApplicationController
  def index
    render Pages::Books::Index
  end
end