class CommentsController < ApplicationController


  def index
    @comments = Comment.all
  end

  def show
    @blog = Blog.find(params[:blog_id])
    @comments = Comment.all
    @comment = @blog.comments
  end

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
      respond_to do |format|
        format.html { redirect_to blogs_path }
        format.js
      end
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to blogs_path
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to blogs_path
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
