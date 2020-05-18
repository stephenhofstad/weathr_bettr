class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      address: params[:address],
      email: params[:email],
      balance: params[:balance],
      phone: params[:phone],
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
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.address = params[:address] || @user.address
    @user.email = params[:email] || @user.email
    @user.balance = params[:balance] || @user.balance
    @user.password = params[:password] || @user.password
    @user.phone = params[:phone] || @user.phone
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
