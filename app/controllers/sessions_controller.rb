class SessionsController < ApplicationController
  skip_before_filter :login_required, :only => [:new, :create]
  
  def new
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    RepoScraper.new(user)
    session[:user_id] = user.id
    redirect_to user, notice: "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end
end



