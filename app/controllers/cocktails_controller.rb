class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all.sort { |c1, c2| c2.popularity <=> c1.popularity }
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def like
    @cocktail = Cocktail.find(params[:id])
    @cocktail.popularity += 1
    @cocktail.save!
    redirect_to cocktail_path(@cocktail)
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
