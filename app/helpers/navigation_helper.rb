module NavigationHelper
  def login_logout
    if logged_in?
      link_to "Logout", logout_path
    else
      link_to "Login", login_path
    end
  end

  def sign_up
  	  link_to "Sign Up", new_user_path if !logged_in?
  	end

  def current_user
   return current_user
  end
end