class ListsController < ApplicationController
  before_action :set_list, only: [:new, :create, :show]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list.save

    redirect_to lists_path
  end

  def show
    @bookmarks = @list.bookmarks
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
