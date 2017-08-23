class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    home_path
  end

  def home
  end

  def index
    if signed_in?
      redirect_to '/home'
    end
  end

end
