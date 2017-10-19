class UsersController < ApplicationController
  before_action :disable_flash

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
<<<<<<< HEAD
    respond_to do |format|
      format.html { render :show }
      format.xml  { render json:  @user }
=======
    @reviews = @user.reviews
    respond_to do |format|
      format.html { render :show }
      format.json { render :json => @user }
>>>>>>> final-touches
    end
  end

end
