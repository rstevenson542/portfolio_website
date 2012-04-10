class PortfoliosController < ApplicationController
  
  def index
    @portfolios = Portfolio.all
  end
  
  def new
    @portfolio = Portfolio.new
  end 
  
  def create
    @portfolio = Portfolio.new(params[:portfolio])
    if @portfolio.save 
      redirect_to root_url, notice: "portfolio saved"
    else
      render action:new
    end
  end
  
  def show
    @portfolio = Portfolio.find(params[:id])
  end
  
  def edit
    @portfolio = Portfolio.find(prams[:id])
  end 
  
  def destory
    @portfolio = Portfolio. find(params[:id])
    @portfolio.destroy
    redirect_to root_url, notice: "portfolio destroyed"
  end

  
end
