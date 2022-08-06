class CommentsController < ApplicationController
  before_action :set_book
  before_action :set_comments, only: [:index]
  before_action :set_comment,  only: [:update, :destroy]

  def index
    render json: @comments
  end

  def update
    render json: @comment
  end

  def delete
    if @comment.destroy
      render json: nil
    else
      render json: {errors: 'Not Able to Delete'}, status: 422
    end
  end

  private

    def set_comment
      @comment = comments.find(params[:id])
    end

    def comments
      @comments = @book.comments
    end

end
