module UserHelper
  def current_user
    User.find_by(remember_token: cookies[remember_token])
  end
end
