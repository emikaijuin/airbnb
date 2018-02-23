class UsersController < Clearance::UsersController
  
  before_action :require_permission except: [:user_from_params]
    
 def user_from_params
    name = user_params.delete(:name)
    email = user_params.delete(:email)
    password = user_params.delete(:password)

    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.email = email
      user.password = password
    end
  end
  
  def edit
  end
  
  def show
  end
  
  private
  
  def require_permission
    if !signed_in?
      flash[:notice] = "Log in or sign up to get started!"
      redirect_to root
    end
  end
      
  
end
