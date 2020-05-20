class Api::BetsController < ApplicationController
  def index
    @bets = Bet.all
    render "index.json.jb"
  end

  def create
    @bet = Bet.new(
      contest_id: params[:contest_id],
      user_id: current_user.id,
      amount: params[:amount],
      pick: params[:pick],
      status: "pending",
    )
    @bet.update_balance
    @bet.save
    render "show.json.jb"
  end

  def show
    @bet = Bet.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @bet = Bet.find_by(id: params[:id])
    @bet.contest_id = params[:contest_id] || @bet.contest_id
    @bet.user_id = params[:user_id] || @bet.user_id
    @bet.amount = params[:amount] || @bet.amount
    @bet.pick = params[:pick] || @bet.pick
    @bet.status = params[:status] || @bet.status
    @bet.save
    render "show.json.jb"
  end

  def destroy
    @bet = Bet.find(params[:id])
    @bet.destroy
    render json: { message: "bet successfully destroyed." }
  end
end
