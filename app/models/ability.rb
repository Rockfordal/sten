class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # gäst

    can :manage, :all if user.has_role? :admin

   if user.has_role? :skapare
     can :new, [Gemstone, Color]
     can :create, [Gemstone, Color]
     # can :manage, [@user_session,@message,@link,@category,@mobject,@objecttype,@page,@viewer,@role]
   end

   can :read, [Gemstone, Chakra, Energy, Color, Image]
  end
end
