class ItemsController < ApplicationController

    def result

    @forme = User.find_by(twitter: session[:content1], username: session[:twitter])
    if @forme
   session[:result] = @forme

    redirect_to '/show'
  elsif

    @forme2 = User.find_by(twitter: session[:content2], username: session[:twitter])
     session[:result2] = @forme2
    redirect_to '/show'

  else
     @userdates2  = User.find_by(twitter: session[:twitter])
     session[:content2] = @userdates2.username
  redirect_to '/show'
   end
  end


  def show


  end

  end
