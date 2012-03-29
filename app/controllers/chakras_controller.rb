class ChakrasController < ApplicationController
load_and_authorize_resource
  def index
    @chakras = Chakra.order("id DESC")
  end
  
  def show
    @chakra = Chakra.find(params[:id])
  end
  
  def new
    @chakra = Chakra.new
  end
  
  def create
    @chakra = Chakra.new(params[:chakra])
    if @chakra.save
      flash[:notice] = "Successfully created chakra."
      redirect_to @chakra
    else
      render :action => 'new'
    end
  end
  
  def edit
    @chakra = Chakra.find(params[:id])
  end
  
  def update
    @chakra = Chakra.find(params[:id])
    if @chakra.update_attributes(params[:chakra])
      flash[:notice] = "Successfully updated chakra."
      redirect_to @chakra
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @chakra = Chakra.find(params[:id])
    @chakra.destroy
    flash[:notice] = "Successfully destroyed chakra."
    redirect_to chakras_url
  end
end
