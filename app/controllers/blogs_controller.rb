class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def index
    @blogs = Blog.all
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path
    else
      binding.pry
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
