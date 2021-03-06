class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    @comments = Comment.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new()
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save()
    respond_to do |format|
      format.html { redirect_to blogs_path }
      format.js
    end
    else
      render :new
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      respond_to do |format|
        format.html { redirect_to blogs_path }
        format.js
      end
    else
      render :edit
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_path }
      format.js
    end
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :body)
    end
end
