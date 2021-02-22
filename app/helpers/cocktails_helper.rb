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

#   refactor the below to have one render_photo_url vs render_photo_html
  def render_photo(cocktail, render_html=true)
    if cocktail.photo.attached?
      # gives me a url
      if render_html
        cl_image_tag cocktail.photo.key, height: 300, width: 400, crop: :fill
      else
        cl_image_path cocktail.photo.key, height: 300, width: 400, crop: :fill
      end
    else
      base_url = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s='
      url = base_url + cocktail.name
      read_url = open(url).read
      parsed = JSON.parse(read_url)
      @photo_url = parsed['drinks'][0]['strDrinkThumb']
      #gives me raw html
      if render_html
        raw("<img src=\"#{@photo_url}\" alt=\"#{@cocktail.name}\" width=\"400\" height=\"400\">")
      else
        @photo_url
      end
    end
  end
end
