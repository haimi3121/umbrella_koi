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
  def destroy
    @userdates2  = User.find_by(twitter: session[:twitter])
    @userdates2.username = nil
    @userdates2.twitter = session[:twitter]
    @userdates2.save
    session[:content1] = nil
    session[:content2] = nil
  end
