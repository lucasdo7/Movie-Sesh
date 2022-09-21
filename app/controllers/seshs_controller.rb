class SeshsController < ApplicationController
  def index
    # @sessions = Session.all
    @seshs = policy_scope(Seshs)
  end

  def show
    @sesh = Sesh.find(params[:id])
    authorize @sesh
  end

  def new
    @sesh = Sesh.new(seshs_params)
    authorize @sesh
  end

  def create
    authorize @sesh
  end

  def destroy
    authorize @sesh
  end

  private

  def seshs_params
    params.require(:sesh).permit(:sesh_date, :sesh_hour)
  end
end
