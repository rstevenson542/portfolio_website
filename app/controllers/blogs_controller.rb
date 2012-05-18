class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end
  
  def create
    @blog = Blog.new(params[:blog])
    #cleanly supporting multiple sets of view logic within the same action via XML or JSON
    respond_to do |format|
      if @blog.save
        format.html do
          redirect_to(@blog,
                      :notice => 'Blog was successfully created.')
        end
        format.xml do
          render :xml => @blog,
                 :status => :created,
                 :location => @blog
        end
      else
        format.html { render :new }
        format.xml do 
          render :xml => @blog.errors,
                 :status => :unprocessable_entity
        end
      end
    end
  end
  
  def show
    @blog = Blog.find(params[:id])
  end
  

end
