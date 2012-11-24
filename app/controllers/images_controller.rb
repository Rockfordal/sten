class ImagesController < InheritedResources::Base
  load_and_authorize_resource
  respond_to :html

  #  def create
  #    @image = Image.create(params[:image])
  #    if @image.save
  #      redirect_to @image, notice: "Bilden är skapad."
  #    else
  #      render action: 'new'
  #    end
  #  end

  def create
    create! { images_url }
  end

  def index
    expires_in 10.minutes, private: false, public: true
    @images = Image.all
  end

  def update
    update! { images_url }
  end

end
