class HomesController < ApplicationController
def index

end
def create
 @content = session[:content1]
  @userdates2  = User.find_by(twitter: session[:twitter])
  if @userdates2.nil?
  @posts = User.new
  @posts.username = @content
  @posts.twitter =  session[:twitter]
  @posts.save
 redirect_to  '/result'
else

  redirect_to '/timer'


end
 end


def update
  @userdates2  = User.find_by(twitter: session[:twitter])
  @userdates2.username = session[:content1]
  @userdates2.twitter = session[:twitter]
  @userdates2.save
 session[:userdate3] = nil
  redirect_to '/show'
end




end
