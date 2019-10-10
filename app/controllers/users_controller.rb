class UsersController < ApplicationController
  before_filter :set_user, only: [:show, :update, :destroy]

  def create
    @user = User.new(user_params)
    if @user.save
      SendWelcomeMailToUserWorkerWorker.perform_async(@user.email)
      # WelcomeMailer.send_welcome_email(@user.email).deliver
      render json: @user, status: :created, location:  'users/show/:id_url'
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update_attributes(params[:user])
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @user
  end

  def destroy
    @user.destroy
    head :no_content
  end

  def index
    @users = User.all
    render json: @users, status: :ok
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params[:user]
  end
end
