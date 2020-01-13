class SessionsController < ApplicationController
  def create
    # request.env['omniauth.auth']にユーザのTwitter認証情報が格納されている
    user_data = request.env['omniauth.auth']
    session[:nickname] = user_data[:info][:name]
    session[:twitter] = user_data[:info][:nickname]
    @userdates  = User.find_by(twitter: session[:twitter])
    unless @userdates.nil?
    session[:content2] = @userdates.username
    redirect_to root_path
  else
    
redirect_to root_path
end
  end
  def destroy
    reset_session
    flash[:notice] = "ログアウトしました"
    redirect_to root_path
  end
  def content
    session[:content1]= params[:content]
    redirect_to '/homes/post'
  end
end
