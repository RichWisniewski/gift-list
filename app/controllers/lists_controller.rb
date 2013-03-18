class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:list])
    if @list.save
      flash[:success] = "We've added your request"
      redirect_to @list
    else
      flash[:error] = "We're sorry, but we couldn't save your list"
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update_attributes(params[:list])
      flash[:success] = "We've updated your list"
      redirect_to @list
    else
      flash[:error] = "We're sorry, but we couldn't update your list"
      render :edit
    end
  end

  def destroy
    @list = List.find(params[:id]).delete
  end
end
