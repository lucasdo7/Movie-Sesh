class SessionsController < ApplicationController
  def index
    # @sessions = Session.all
    @sessions = policy_scope(Session)
  end

  def show
    @session = Session.find(params[:id])
    authorize @session
  end

  def new
    @session = Session.new(session_params)
    authorize @session
  end

  def create
    authorize @session
  end

  def destroy
    authorize @session
  end

  private

  def session_params
    params.require(:session).permit(:date, :hour)
  end
end
