Rails.application.routes.draw do
  get 'timers/time'
  constraints ->  request { request.session[:nickname].present? } do
     # ログインしてる時のパス
     root to: 'homes#index'
   end
   # ログインしてない時のパス
   root to: 'homes#login'



  get '/users/post' , to: 'homes#login'
  get '/homes/login', to: 'homes#login'
  get '/homes', to: 'homes#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/homes/logout', to: 'sessions#destroy'
  post  '/homes/content', to: 'sessions#content'
  get '/homes/post', to: 'homes#create'
  get '/result' , to: 'items#result'
  get '/show' , to: 'items#show'
  get '/timer' , to: 'timers#time'
  get '/homes/update', to: 'homes#update'
end
