class LinksController < InheritedResources::Base
  load_and_authorize_resource

  def index
    render 'index'
  end

end
