class RolesController < InheritedResources::Base
 load_and_authorize_resource
 respond_to :html

  def index
    index!
  end

  def create
    create! { roles_url }
  end

  def update
    update! { roles_url }
  end
end
