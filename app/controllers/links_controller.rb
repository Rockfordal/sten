class LinksController < InheritedResources::Base
#load_and_authorize_resource
layout "chat"

def index
 render 'chatta'
end


end
