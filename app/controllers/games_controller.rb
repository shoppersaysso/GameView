class GamesController < ApplicationController
  before_action :set_game, only: [:edit, :show, :update, :destroy]
  before_action :disable_flash

  def index
    @games = Game.where("user_id IN (?)", current_user.id)
  end

  def show
    @games = Game.where("user_id IN (?)", current_user.id)
    respond_to do |format|
      format.html { render :show }
<<<<<<< HEAD
      format.json { render json: @games}
=======
      format.json { render json: @games }
>>>>>>> final-touches
    end
  end

  def new
    @game = Game.new
  end

  def edit
  end

  def create
    @game = current_user.games.build(game_params)

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

  def details
<<<<<<< HEAD
   game = Game.find(params[:id])
   render json: game.details
 end
=======
    game = Game.find(params[:id])
    render plain: game.details
  end

  def game_data
    @game = Game.find(params[:id])
    render :json => @game
  end
>>>>>>> final-touches

  private

    def set_game
      @game = Game.find(params[:id])
    end

    def game_params
<<<<<<< HEAD
      params.require(:game).permit(:title, :developer, :status, :genre, :esrb_rating, :multiplayer)
=======
      params.require(:game).permit(:title, :developer, :status, :id, :genre, :esrb_rating, :multiplayer)
>>>>>>> final-touches
    end
end
