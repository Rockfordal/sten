class EnergiesController < ApplicationController
  load_and_authorize_resource

  def index
    @energies = Energy.all
  end

  def show
    @energy = Energy.find params[:id]
  end

  def new
    @energy = Energy.new
  end

  def create
    @energy = Energy.new(params[:energy])
    if @energy.save
      flash[:notice] = 'Energin har skapats.'
      redirect_to @energy
    else
      render 'new'
    end
  end

  def edit
    @energy = Energy.find params[:id]
  end

  def update
    @energy = Energy.find params[:id]
    if @energy.update_attributes(params[:energy])
      flash[:notice] = 'Energin har uppdaterats.'
      redirect_to @energy
    else
      render 'edit'
    end
  end

  def destroy
    @energy = Energy.find params[:id]
    @energy.destroy
    flash[:notice] = 'Energi raderad.'
    redirect_to energies_url
  end
end
