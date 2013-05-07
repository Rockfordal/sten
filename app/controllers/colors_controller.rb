class ColorsController < InheritedResources::Base
  load_and_authorize_resource

  def index
    @colors = Color.order('name')
  end

  def create
    create! { colors_url }
  end

  def update
    update! { colors_url }
  end

  private

  def color_params
    params.require(:color).permit(:name, :desc)
  end

end
