class ReviewsController < ApplicationController
  # before_action :set_review, only: [:edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @review = Review.find(params[:game_id])
    @reviews = Review.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @review = Review.find(params[:game_id])
    @game = Game.find(params[:id])
    @review.game_id = @game.id
  #   if params[:game_id]
  #    @game = Game.find_by(id: params[:game_id])
  #    @review = @game.reviews.find_by(id: params[:id])
  #    if @game.nil?
  #      redirect_to game_reviews_path(@game), alert: "Review not found"
  #    end
  #  else
  #    @review = Review.find(params[:id])
  #  end
  end

  # GET /reviews/new
  def new
    @game = Game.find(params[:game_id])
    @review = @game.reviews.new
  #   if params[:game_id] && !Game.exists?(params[:game_id])
  #    redirect_to games_path, alert: "Game not found."
  #  else
  #    @review = Review.new(game_id: params[:game_id])
  #   end
  end

  # GET /reviews/1/edit
  def edit
    @review = Review.find(params[:game_id])
    @game = Game.find(params[:id])
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @game = Game.find(params[:game_id])
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.game_id = @game.id
    current_user.gameview_level += 1
    current_user.save

    respond_to do |format|
    if @review.save
        format.html { redirect_to game_review_path(@review, @review.game_id), notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    @review = Review.find(params[:id])
    @game = Game.find(params[:game_id])
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to game_review_path(@review, @review.game_id), notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review = Review.find(params[:game_id])
    @review.destroy
    current_user.gameview_level -= 1
    current_user.save
    respond_to do |format|
      format.html { redirect_to home_path, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_review
    #   @review = Review.find(params[:game_id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:title, :content)
    end
end
