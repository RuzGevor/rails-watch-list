class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
  end

  def destroy
    @bookmark = Bookmark.destroy(bookmarks[:id])
    redirect_to bookmark_path
  end
end
