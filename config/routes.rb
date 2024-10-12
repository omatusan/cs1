Rails.application.routes.draw do
  
  root 'top#main'  
  post 'top/login', to: 'top#login'
  get 'login_success', to: 'application#login_success'
  get 'login_error', to: 'top#error'
  get 'logout', to: 'top#logout'
end
