class ReviewsController < ApplicationController
  before_action :set_review only: [:edit, :update, :destroy]

  def index
    @review = Review.find(params[:game_id])
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:game_id])
    @game = Game.find(params[:id])
    @review.game_id = @game.id
  end

  def new
    @game = Game.find(params[:game_id])
    @review = @game.reviews.new

  end

  def edit
    @game = Game.find(params[:game_id])
  end

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

  def update
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

  def destroy
    @review.destroy
    current_user.gameview_level -= 1
    current_user.save
    respond_to do |format|
      format.html { redirect_to home_path, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_review
      @review = Review.find(params[:id])
  end

    def review_params
      params.require(:review).permit(:title, :content)
    end
end
