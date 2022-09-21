class BookmarksController < ApplicationController
  def create
    authorize @bookmark
  end

  def destroy
    authorize @bookmark
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :user_rating, :watched)
  end
end
