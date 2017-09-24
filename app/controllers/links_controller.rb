class LinksController < ApplicationController

  def index
    @links = Link.all
    render :index
  end

  def new
    render :new
  end

  def create
    @links = Link.create(
      user_id: current_user.id
      )
    redirect_to "/links"
  end

end
