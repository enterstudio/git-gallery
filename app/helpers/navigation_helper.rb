module NavigationHelper
  def login_logout
    if logged_in?
      link_to "Logout", logout_path
    else
      link_to "Login", login_path
      link_to "Sign Up", new_user_path
    end
  end
end