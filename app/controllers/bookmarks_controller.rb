class BookmarksController < ApplicationController
  def destroy
    @bookmark = Bookmark.find(params[:id])
    list_id = @bookmark.list.id
    @bookmark.destroy
    # No need for app/views/movies/destroy.html.erb
    redirect_to list_path(list_id)
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to bookmark(@bookmark)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :list, :id)
  end
end
