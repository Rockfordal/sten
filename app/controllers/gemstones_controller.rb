class GemstonesController < InheritedResources::Base
load_and_authorize_resource
# after_filter :cache_sweeper, :only=> [:create, :update, :destroy]

#  def cache_sweeper
#    expire_fragment("stenindex")
#  end

  def harsten
      @gemstone = Gemstone.find(params[:id])     
  end

  def index
     @gemstones = Gemstone.search(params[:search]).includes(["links","chakras","energies","color"]).page(params[:page]).per(10)
     #@gemstones = Gemstone.page params[:page]
     @antal = Gemstone.all.length
  end

#  def show
#    @gemstone = Gemstone.find(params[:id])
#  end

  def new
    @gemstone = Gemstone.new
    3.times {@gemstone.properties.build}
  end

 # def edit
 #   @gemstone = Gemstone.find(params[:id])
 # end

  def create
#     create!{gemstones_url}
    @gemstone = Gemstone.new(params[:gemstone])
    @gemstone.creator_id = current_user

      if @gemstone.save
        redirect_to(gemstones_url, :notice => 'Stenen skapades')
      else
        render :action => "new"
      end
  end

  def update
     update!{gemstones_url}
  end

#  def destroy
#    @gemstone = Gemstone.find(params[:id])
#    @gemstone.destroy
#     destroy!{gemstones_url}
#  end
end
