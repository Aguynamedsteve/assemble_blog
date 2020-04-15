class HomeController < ApplicationController

  def index
    current_user.nil? ? redirect_to(new_user_session_path) : redirect_to(posts_path)
  end
end
