class GameAttributesController < ApplicationController
  load_and_authorize_resource
  before_action :set_game_attribute, only: [:show, :edit, :update, :destroy]

  # GET /game_attributes
  # GET /game_attributes.json
  def index
    @game_attributes = GameAttribute.all
  end

  # GET /game_attributes/1
  # GET /game_attributes/1.json
  def show
  end

  # GET /game_attributes/new
  def new
    @game_attribute = GameAttribute.new
  end

  # GET /game_attributes/1/edit
  def edit
  end

  # POST /game_attributes
  # POST /game_attributes.json
  def create
    @game_attribute = GameAttribute.new(game_attribute_params)

    respond_to do |format|
      if @game_attribute.save
        format.html { redirect_to @game_attribute, notice: 'Game attribute was successfully created.' }
        format.json { render :show, status: :created, location: @game_attribute }
      else
        format.html { render :new }
        format.json { render json: @game_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_attributes/1
  # PATCH/PUT /game_attributes/1.json
  def update
    respond_to do |format|
      if @game_attribute.update(game_attribute_params)
        format.html { redirect_to @game_attribute, notice: 'Game attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_attribute }
      else
        format.html { render :edit }
        format.json { render json: @game_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_attributes/1
  # DELETE /game_attributes/1.json
  def destroy
    @game_attribute.destroy
    respond_to do |format|
      format.html { redirect_to game_attributes_url, notice: 'Game attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_attribute
      @game_attribute = GameAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_attribute_params
      params.require(:game_attributes).permit(:genre, :esrb_rating, :multiplayer)
    end
end
