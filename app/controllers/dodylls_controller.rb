class DodyllsController < ApplicationController
  def index
    @dodyll = Dodyll.all
  end

  def show
    @dodyll = Dodyll.find(params[:id])
  end

  def new
    @dodyll = Dodyll.new
  end

  def create
    @dodyll = Dodyll.new(dodyll_params)
    if @dodyll.save
      redirect_to @dodyll
    else
      render 'new'
    end
  end

  def edit
    @dodyll = Dodyll.find(params[:id])
  end

  def update
    @dodyll = Dodyll.find(params[:id])
    if @dodyll.update(dodyll_param)
      redirect_to @dodyll
    else
      render 'edit'
    end
  end

  def delete
    Dodyll.find(params[:id]).destroy
    redirect_to @user
  end

  private
  def dodyll_params
    params.require(:dodylls).permit(:title, :description, :location, :start, :end)
  end
end
