class UsersController < ApplicationController
  before_action :disable_flash

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def game_list
    list = Game.find(params[:id])
    render plain: list.games
  end

end
