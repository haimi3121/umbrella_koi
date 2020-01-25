class TimersController < ApplicationController
  def time
  @userdates2  = User.find_by(twitter: session[:twitter])
session[:userdate2] = (Date.today - Date.parse(@userdates2.updated_at.to_s)).to_i
if session[:userdate2] < -1
session[:userdate3] = 1
session[:content2] = @userdates2.username
session[:content1] = nil
session[:result]  = nil
redirect_to root_path

else
  redirect_to "/homes/update"
  end
  end
end
