require 'uri'
require 'json'

module CocktailsHelper
  def retrieve_instructions(cocktail)
    base_url = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s='
    url = base_url + cocktail.name
    read_url = open(url).read
    parsed = JSON.parse(read_url)
    @instructions = parsed['drinks'][0]['strInstructions']
  end

  def retrieve_photo(cocktail)
    base_url = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s='
    url = base_url + cocktail.name
    read_url = open(url).read
    parsed = JSON.parse(read_url)
    @photo_url = parsed['drinks'][0]['strDrinkThumb']
  end
end
