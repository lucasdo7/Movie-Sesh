class ListsController < ApplicationController
  def index
    # @lists = List.all
    @lists = policy_scope(List) # aqui eu posso continuar a query  # isso faz o .all
                                # exemplo @list = policy_scope(List).where(user_id: current_user)
  end

  private

  def list_params
    params.require(:list).permit(:genre)
  end
end
