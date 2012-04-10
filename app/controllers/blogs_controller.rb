class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end
  
  def new
    @blog = Blog.new
  end
  
  def create
    @blog = Blog.new(params[:blog])
    if @blog.save
      redirect_to root_url, notice: "Post was successfully updated"
    else
      render action:"new"
    end
  end
  
  def show
    @blog = Blog.find(params[:id])
  end
  
  def edit
    @blog = Blog.find(params[:id])
  end
  
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
  end

end
