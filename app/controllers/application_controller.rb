class ApplicationController < ActionController::Base
  require 'bcrypt'
  def top
  end
  
  def login
    user_id = params[:uid]
    entered_password = params[:pass]
  
    correct_user_id = "user1"
    correct_password_hash = BCrypt::Password.new("$2a$12$...")
  
    if user_id == correct_user_id && correct_password_hash.is_password?(entered_password)
      redirect_to login_success_path
    else
      redirect_to login_error_path
    end
  end

  def login_success
    render template: 'main'
  end

  def login_error
    render template: 'error' 
  end

  def logout
    redirect_to root_path
  end
end
