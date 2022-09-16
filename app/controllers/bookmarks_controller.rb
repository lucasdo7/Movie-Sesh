class BookmarksController < ApplicationController
  def create
  end

  def destroy
  end

  private
  
  def bookmark_params
    params.require(:bookmark).permit(:comment, :user_rating, :movie_id, :list_id)
  end
end
