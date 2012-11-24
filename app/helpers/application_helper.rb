module ApplicationHelper
  def avatar_url(user)
    if user.avatar_url?
      user.avatar_url
    else
      gravhost = 'http://gravatar.com/avatar'
      gravhex  = Digest::MD5.hexdigest(user.email.downcase)
      #"#{gravhost}images/guest.png"
      "#{gravhost}/#{gravhex}.png?s=30"
    end
  end
end
