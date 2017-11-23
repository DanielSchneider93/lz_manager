class BookmarksController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @bookmark = @group.bookmarks.create(bookmark_params)
    redirect_to group_path(@group)
  end

  def destroy
   @group = Group.find(params[:group_id])
   @bookmark = @group.bookmarks.find(params[:id])
   @bookmark.destroy
   redirect_to group_path(@group)
 end

  private
    def bookmark_params
      params.require(:bookmark).permit(:bmark)
    end
end
