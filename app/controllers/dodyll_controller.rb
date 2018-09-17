class DodyllController < ApplicationController
  def show
    @dodyll = Dodyll.find(params[:id])
  end

  def new
    @dodyll = Dodyll.new
  end

  def create
    @dodyll = Dodyll.new(dodyll_params)

    if @dodyll.save
      redirect_to :action => 'show'
    else
      render 'new'
    end
  end

  def edit
    @dodyll = Dodyll.find(params[:id])
  end

  def update
    @dodyll = Dodyll.find(params[:id])
    if @dodyll.update_attributes(dodyll_param)
      redirect_to :action => 'show', :id => @dodyll
    else
      render :action => 'edit'
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
