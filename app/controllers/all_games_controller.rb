class AllGamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @games = Game.all
    @game = Game.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @games }
    end
  end


  def game_data
    @game = Game.find(params[:id])
    render :json => @game
  end

end
