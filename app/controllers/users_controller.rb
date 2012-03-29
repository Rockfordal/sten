class UsersController < InheritedResources::Base
load_and_authorize_resource
respond_to :html

#before_filter :authenticate_user! #mongoid
#before_filter :set_pagetitle
#in_place_edit_for :user, :username
#in_place_edit_for :user, :email

#  def set_pagetitle
#    @pagetitle = "Administration för användare"
#  end

#  def edit
#   @pagetitle = "ändrar Profil"
#   @user = User.find(params[:id])
##  @user = current_user
#  end

#  def update
#    if params[:id] == "nuvarande"
#      @user = current_user
#    else
#      @user = User.find(params[:id])
#    end
#    if @user.update_attributes(params[:user])
#      redirect_to root_url :notice => "Användaren har uppderats."
#    else
#      render :action => "ändra"
#    end
#  end

#  def create
#    create! { links_url }
#  end


  def create
    @user = User.new(params[:user])
      if @user.save
        redirect_to(links_url, :notice => 'klart')
      else
        render :action => "new"
      end
   end



#  def update
#    update! { users_url }
#  end
 
end
