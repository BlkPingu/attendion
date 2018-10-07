# frozen_string_literal: true

# Controller for Users class
class UsersController < ApplicationController
  extend Devise::Models

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def users; end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :aboutme, :avatar)
  end
end
