class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  before_action :disable_flash

  def index
    @games = Game.where("user_id IN (?)", current_user.id)
  end

  def show
  end

  def new
    @game = Game.new
  end

  def edit
  end


  def create
    @game = Game.new(game_params)
    @game.user_id = current_user.id

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to games_path, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

    def set_game
      @game = Game.find(params[:id])
    end

    def game_params
      params.require(:game).permit(:title, :developer, :status, game_attributes_attributes: [ :id, :genre, :esrb_rating, :multiplayer ])
    end
end
