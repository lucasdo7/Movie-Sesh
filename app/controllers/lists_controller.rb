class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  private

  def list_params
    params.require(:list).permit(:genre)
  end
end
