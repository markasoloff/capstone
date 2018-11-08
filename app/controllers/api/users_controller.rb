class Api::UsersController < ApplicationController

  def index
    @users = User.all
    # @users = @users.where(remote: true)
    render "index.json.jbuilder"
  end

  def show
    @user = User.find(params[:id])
    render "show.json.jbuilder"
  end

  def create
   @user = User.new(
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation]
                    )
    @user.save
    render 'show.json.jbuilder'
  end

  def update
    @user = User.find(params[:id])
    
    @user.email = params[:email] || @user.email
    @user.password_digest = params[:password_digest] || @user.password_digest

    if @user.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user.errors.full_messages }, status: :unprocessable_entity
    end

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {status: "User was removed."}
  end
end
