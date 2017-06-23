class AccessController < ApplicationController

  layout 'admin'

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def menu
    #display text and links
    @username = session[:username]
  end

  def login
    # login form
  end

  def attempt_login
    # If the username and password are non blank on the submitted form ...
    if params[:username].present? && params[:password].present?
      # ... then search AdminUser for that username and return the first record found.
      found_user = AdminUser.where(:username => params[:username]).first
      # found_user is true if the above located a record.  It is false if found_user is nil.
      if found_user
        # authenticate method will take the entered password and see if it matches the encrypted password.  Either the user object is returned, or false
        authorized_user = found_user.authenticate(params[:password])
      end
    end

    # If we have an object in authorized_user, then it must not be false.  Do this...
    if authorized_user
      session[:user_id] = authorized_user.id
      # Cache the username so it can be used thoughout the session without making another DB call.
      session[:username] = authorized_user.username
      flash[:notice] = "You have successfully logged in."
      redirect_to(admin_path)

    else
      # The now method shows the message on the current request, instead of the next page.
      flash.now[:notice] = "Invalid username/password combination."
      render('login')
    end

  end

  def logout
    session[:user_id] = nil
    # Clear out cached value of username:
    session[:username] = nil
    flash[:notice] = "Logged out.  Thank you for visiting."
    redirect_to(access_login_path)
  end

  private

  def confirm_logged_in
    # unless is like 'if not'  So here we say if there is not a :user_id present....
    unless session[:user_id]
    # do this stuff
      flash[:notice] = "Please log in."
      redirect_to(access_login_path)
      #r edirect_to prevents the requested action from running.
    end
  end

end
