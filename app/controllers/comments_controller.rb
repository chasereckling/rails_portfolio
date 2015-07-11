class CommentsController < ApplicationController

  def new
      @blog = Blog.find(params[:blog_id])
      @comment = @blog.comments.new
      if current_user === nil
      flash[:notice] = "you have to be signed in to comment."
      redirect_to blog_path(@blog)
      end
  end

  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to blog_path(@blog)
    else
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
