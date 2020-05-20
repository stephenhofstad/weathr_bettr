class Api::ContestsController < ApplicationController
  def index
    @contests = Contest.all
    render "index.json.jb"
  end

  def create
    @contest = Contest.new(
      date: params[:date],
      game: params[:game],
      win: params[:win],
      line: params[:line],
      real_temp: params[:real_temp],
    )
    @contest.save
    render "show.json.jb"
  end

  def show
    @contest = Contest.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @contest = Contest.find_by(id: params[:id])
    @contest.date = params[:date] || @contest.date
    @contest.game = params[:game] || @contest.game
    @contest.win = params[:win] || @contest.win
    @contest.line = params[:line] || @contest.line
    @contest.real_temp = params[:real_temp] || @contest.real_temp
    @contest.save
    @contest.bets.each do |bet|
      bet.update_results
    end
    render "show.json.jb"
  end

  def destroy
    @contest = contest.find(params[:id])
    @contest.destroy
    render json: { message: "contest successfully destroyed." }
  end
end
