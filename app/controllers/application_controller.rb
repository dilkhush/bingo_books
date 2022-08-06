class ApplicationController < ActionController::Base
  include Matestack::Ui::Core::Helper
  matestack_layout ApplicationLayout

  def set_book
    @book = Book.find(params[:book_id])
  end
end
