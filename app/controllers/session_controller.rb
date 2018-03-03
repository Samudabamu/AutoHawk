class SessionController < ApplicationController


  #need to speak
  def create
    user = User.find_by_email(params[:emails])
    #If the user exists AND the password entered is #correct.
    if user && user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This
      # is how we keep the user logged in when they
      # navigate around our website.
      session[:user_id] = user.id
      redirect_to '/login'
    else
      # If user's login doesn't work, send
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end