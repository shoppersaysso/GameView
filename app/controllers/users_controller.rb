class UsersController < ApplicationController
  before_action :disable_flash

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews
    respond_to do |format|
      format.html { render :show }
      format.json { render :json => @user.to_json(:methods => [:level, :avatar_url]) }
    end
  end

end
