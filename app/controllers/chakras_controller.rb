class ChakrasController < ApplicationController
  load_and_authorize_resource

  def index
    @chakras = Chakra.order('id DESC')
  end
  
  def show
    @chakra = Chakra.find params[:id]
  end
  
  def new
    @chakra = Chakra.new
  end
  
  def create
    @chakra = Chakra.new params[:chakra]
    if @chakra.save
      flash[:notice] = 'Chakra skapad.'
      redirect_to @chakra
    else
      render 'new'
    end
  end
  
  def edit
    @chakra = Chakra.find params[:id]
  end
  
  def update
    @chakra = Chakra.find params[:id]
    if @chakra.update_attributes(params[:chakra])
      flash[:notice] = 'Chakra uppdaterad.'
      redirect_to @chakra
    else
      render 'edit'
    end
  end
  
  def destroy
    @chakra = Chakra.find params[:id]
    @chakra.destroy
    flash[:notice] = "Crakra raderad."
    redirect_to chakras_url
  end
end
