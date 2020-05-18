class Api::ContestsController < ApplicationController
  def index
    @contests = Contest.all
    render "index.json.jb"
  end

  def create
    @contest = Contest.new(
      date: params[:date],
      time: params[:time],
      win: params[:win],
      line: params[:line],
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
    @contest.time = params[:time] || @contest.time
    @contest.win = params[:win] || @contest.win
    @contest.line = params[:line] || @contest.line
    @contest.save
    render "show.json.jb"
  end

  def destroy
    @contest = contest.find(params[:id])
    @contest.destroy
    render json: { message: "contest successfully destroyed." }
  end
end
