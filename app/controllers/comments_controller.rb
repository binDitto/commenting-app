class CommentsController < ApplicationController
  before_action :comment_id, only: [ :edit, :update, :show, :destroy ]

  def index
    @comments = Comment.all.order(:created_at).reverse_order
    @comment = Comment.new()
    if @comments.length > 9
      @comments.last.delete
    end
  end

  def new

  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      flash[:success] = "Your comment went through @ #{@comment.user}"
      redirect_to comments_path
    else
      render 'index'
      flash[:danger] = "It didn't work!"
    end
  end

  def edit

  end

  def update

  end

  def show

  end

  def destroy
    @comment.destroy
    flash[:danger] = "Comment Removed!"
    redirect_to comments_path
  end

  private

    def comment_id
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:user, :description)
    end

end
