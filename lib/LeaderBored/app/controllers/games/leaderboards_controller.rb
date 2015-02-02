class Games::LeaderboardsController < ApplicationController
  before_action :set_games_leaderboard, only: [:show, :update, :destroy]

  # GET /games/leaderboards
  # GET /games/leaderboards.json
  def index
    @games_leaderboards = Games::Leaderboard.all

    render json: @games_leaderboards
  end

  # GET /games/leaderboards/1
  # GET /games/leaderboards/1.json
  def show
    render json: @games_leaderboard
  end

  # POST /games/leaderboards
  # POST /games/leaderboards.json
  def create
    @games_leaderboard = Games::Leaderboard.new(games_leaderboard_params)

    if @games_leaderboard.save
      render json: @games_leaderboard, status: :created, location: @games_leaderboard
    else
      render json: @games_leaderboard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/leaderboards/1
  # PATCH/PUT /games/leaderboards/1.json
  def update
    @games_leaderboard = Games::Leaderboard.find(params[:id])

    if @games_leaderboard.update(games_leaderboard_params)
      head :no_content
    else
      render json: @games_leaderboard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/leaderboards/1
  # DELETE /games/leaderboards/1.json
  def destroy
    @games_leaderboard.destroy

    head :no_content
  end

  private

    def set_games_leaderboard
      @games_leaderboard = Games::Leaderboard.find(params[:id])
    end

    def games_leaderboard_params
      params[:games_leaderboard]
    end
end
