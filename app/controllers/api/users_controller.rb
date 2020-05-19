class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      balance: params[:balance],
      bet_id: params[:bet_id],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    if params[:id] == "profile"
      @user = current_user
    else
      @user = User.find_by(id: params[:id])
    end
    @bet = Bet.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name] || @user.name
    @user.email = params[:email] || @user.email
    @user.balance = params[:balance] || @user.balance
    @user.password = params[:password] || @user.password
    @user.bet_id = params[:bet_id] || @user.bet_id
    @user.save
    render "show.json.jb"
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: { message: "user successfully destroyed." }
  end
end
