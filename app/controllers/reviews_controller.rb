class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @game = Review.find(params[:game_id])
    @review.game_id = @game.id
  end

  # GET /reviews/new
  def new
    @game = Game.find(params[:game_id])
    @review = @game.reviews.new

  end

  # GET /reviews/1/edit
  def edit
    @game = Game.find(params[:id])
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @game = Game.find(params[:game_id])
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.game_id = @game.id

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
    @review.destroy
    respond_to do |format|
      format.html { redirect_to user_home_path, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:game_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:title, :content)
    end
end
