class ListsController < ApplicationController
  def home
  end

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  # def destroy
  #   @list = List.find(params[:id])
  #   # bookmarks = Bookmark.select { |b| b.list.id == list.id }
  #   # raise
  #   # bookmarks.each do |bookmark|
  #   #   bookmark.destroy
  #   # end
  #   @list.destroy
  #   redirect_to lists_path, status: :see_other
  # end

  def show
    @list = List.find(params[:id])
    @movies = @list.movies
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
