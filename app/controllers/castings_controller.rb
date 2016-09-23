class CastingsController < ApplicationController
  def index
    @castings = Casting.all
  end

  def show
    @casting = Casting.find(params[:id])
  end

  def new
    @casting = Casting.new
  end

  def create
    @casting = Casting.new
    @casting.character_name = params[:character_name]
    @casting.movie_id = params[:movie_id]
    @casting.actor_id = params[:actor_id]

    if @casting.save
      redirect_to "/castings", :notice => "Casting created successfully."
    else
      render 'new'
    end
  end

  def edit
    @casting = Casting.find(params[:id])
  end

  def update
    @casting = Casting.find(params[:id])

    @casting.character_name = params[:character_name]
    @casting.movie_id = params[:movie_id]
    @casting.actor_id = params[:actor_id]

    if @casting.save
      redirect_to "/castings", :notice => "Casting updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @casting = Casting.find(params[:id])

    @casting.destroy

    redirect_to "/castings", :notice => "Casting deleted."
  end
end
