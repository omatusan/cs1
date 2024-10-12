class ApplicationController < ActionController::Base
  require 'bcrypt'

  
  def top
  end

  # ログイン処理
  def login
    user_id = params[:uid]
    entered_password = params[:pass]
  
    correct_user_id = "user1"
    correct_password_hash = BCrypt::Password.new("$2a$12$...") # 実際のパスワードハッシュ
  
    if user_id == correct_user_id && correct_password_hash.is_password?(entered_password)
      redirect_to login_success_path
    else
      redirect_to login_error_path
    end
  end


  # ログイン成功時のアクション
  def login_success
    render template: 'main' # main.html.erb を表示
  end

  # ログイン失敗時のアクション
  def login_error
    render template: 'error' # error.html.erb を表示
  end

  # ログアウト時のアクション
  def logout
    redirect_to root_path # ログアウト後、ログイン画面にリダイレクト
  end
end
