class Games::Leaderboards::ScoresController < ApplicationController
  before_action :set_games_leaderboards_score, only: [:show, :update, :destroy]

  # GET /games/leaderboards/scores
  # GET /games/leaderboards/scores.json
  def index
    @games_leaderboards_scores = Games::Leaderboards::Score.all

    render json: @games_leaderboards_scores
  end

  # GET /games/leaderboards/scores/1
  # GET /games/leaderboards/scores/1.json
  def show
    render json: @games_leaderboards_score
  end

  # POST /games/leaderboards/scores
  # POST /games/leaderboards/scores.json
  def create
    @games_leaderboards_score = Games::Leaderboards::Score.new(games_leaderboards_score_params)

    if @games_leaderboards_score.save
      render json: @games_leaderboards_score, status: :created, location: @games_leaderboards_score
    else
      render json: @games_leaderboards_score.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/leaderboards/scores/1
  # PATCH/PUT /games/leaderboards/scores/1.json
  def update
    @games_leaderboards_score = Games::Leaderboards::Score.find(params[:id])

    if @games_leaderboards_score.update(games_leaderboards_score_params)
      head :no_content
    else
      render json: @games_leaderboards_score.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/leaderboards/scores/1
  # DELETE /games/leaderboards/scores/1.json
  def destroy
    @games_leaderboards_score.destroy

    head :no_content
  end

  private

    def set_games_leaderboards_score
      @games_leaderboards_score = Games::Leaderboards::Score.find(params[:id])
    end

    def games_leaderboards_score_params
      params[:games_leaderboards_score]
    end
end
