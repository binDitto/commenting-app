class CommentsController < ApplicationController
  before_action :comment_id, only: [ :edit, :update, :show, :destroy ]

  def index
    @comments = Comment.all
    @comment = Comment.new()
  end

  def new

  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      flash[:success] = "Your comment went through @ #{comment.user}"
      redirect_to 'index'
    else
      render 'index'
    end
  end

  def edit

  end

  def update

  end

  def show

  end

  def destroy

  end

  private

    def comment_id
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:user, :description)
    end

end
