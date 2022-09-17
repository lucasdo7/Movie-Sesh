class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end

  def show
    @session = Session.find(params[:id])
  end

  def new
    @session = Session.new(session_params)
  end

  def create

  end

  def destroy
  end

  private

  def session_params
    params.require(:session).permit(:date, :hour)
  end
end
