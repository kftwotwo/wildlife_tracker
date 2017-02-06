class WildlivesController < ApplicationController
  def index
    @wildlives = Wildlife.all
    render :index
  end

  def show
    @wildlife = Wildlife.find(params[:id])
    render :show
  end

  def new
    @wildlife = Wildlife.new
    render :new
  end

  def create
    @wildlife = Wildlife.new(wildlife_params)
    if @wildlife.save
      redirect_to wildlives_path
    else
      render :new
    end
  end

  def edit
    @wildlife = Wildlife.find(params[:id])
    render :edit
  end

  def update
    @wildlife = Wildlife.find(params[:id])
    if @wildlife.update(wildlife_params)
      redirect_to wildlives_path
    else
      render :edit
    end
  end

  def destroy
    @wildlife = Wildlife.find(params[:id])
    @wildlife.destroy
    redirect_to wildlives_path
  end

  private
  def wildlife_params
    params.require(:wildlife).permit(:name)
  end
end
