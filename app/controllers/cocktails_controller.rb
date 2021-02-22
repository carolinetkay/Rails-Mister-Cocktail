require 'open-uri'
require 'json'

class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    # url = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita'
    # read_url = open(url).read
    # parsed = JSON.parse(read_url)
    # @image_url = parsed['drinks'][0]['strImageSource']
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    # @ingredient = Ingredient.find(params[:])
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

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end
end

private

def cocktail_params
  params.require(:cocktail).permit(:name, :photo)
end
