class GemstonesController < ApplicationController
  load_and_authorize_resource

  def harsten
      @gemstone = Gemstone.find params[:id]
  end

  def index
     @gemstones = Gemstone.search(params[:search]).includes(['links', 'chakras', 'energies', 'color']).page(params[:page]).per(10)
     @antal = Gemstone.all.length
  end

  def new
    @gemstone = Gemstone.new
    3.times { @gemstone.properties.build }
  end

  def create
    @gemstone = Gemstone.new(params[:gemstone])
    @gemstone.creator_id = current_user

    if @gemstone.save
      redirect_to gemstones_url, notice: 'Stenen skapades'
    else
      render 'new'
    end
  end

  def update
    @gemstone = Gemstone.find params[:id]
    if @gemstone.update_attributes(gemstone_params)
      redirect_to @gemstone, notice: 'Stenen uppdaterad.'
    else
      render 'edit'
    end
  end

  def destroy
    @gemstone = Gemstone.find params[:id]
    @gemstone.destroy
    redirect_to gemstones_url
  end

  private

  def gemstone_params
    params.require(:gemstone).permit(:name, :info, :color_id)
  end

end
