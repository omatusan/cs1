Rails.application.routes.draw do
  # トップページ表示のルート (GET)
  root 'top#main'  # 'top_controller.rb'から'top#main'に変更

  # ログイン処理のルート (POST)
  post 'top/login', to: 'top#login' # 'application#login'から変更

  # ログイン成功時のルート
  get 'login_success', to: 'application#login_success'

  # ログイン失敗時のルート
  get 'login_error', to: 'top#error'

  # ログアウト時のルート
  get 'logout', to: 'top#logout' # 'application#logout'から変更
end
