module ApplicationHelper

  def gravatar_for(user, options = { size: 150})
    email_address = user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    size = options[:size]
    gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
    image_tag(gravatar_url, alt: "Profile image", class: "rounded shadow mx-auto d-block")
  end

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end

  def logged_in?
    !!current_user # !! turns current_user into a boolean
  end
end
