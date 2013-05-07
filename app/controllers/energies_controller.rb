class EnergiesController < ApplicationController
  before_filter :new_energy, only: [:new, :create]
  #before_filter do
    #params[:energy] &&= energy_params
  #end

  #filter_resource_access
  #include Heimdallr::Resource
  load_and_authorize_resource

  #cancan fix för Rails4 strong params
  #before_action :set_energy, only: [:show, :edit, :update, :destroy]

  def index
    @energies = Energy.all
  end

  def new
    @energy = Energy.new
  end

  def create
    @energy = Energy.new(energy_params)

    if @energy.save
      redirect_to @energy, notice: 'Energin har skapats.'
    else
      render :new
    end
  end

  def update
    if @energy.update_attributes(energy_params)
      redirect_to @energy, notice: 'Energin har uppdaterats.'
    else
      render :edit
    end
  end

  def destroy
    @energy.destroy
    redirect_to energies_url, notice: 'Energi raderad.'
  end

  private

  def set_energy
    @energy = Energy.find(params[:id])
  end

  def new_energy
    @energy = Energy.new(safe_params)
  end

  def energy_params
    #if admin?
      params.require(:energy).permit!
    #else
      #params.require(:energy).permit(:name)
      #params.require(:energy).permit(:name, :info)
    #end
  end
end
