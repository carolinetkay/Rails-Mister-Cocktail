require 'uri'
require 'json'

module CocktailsHelper
  def call_cocktail_api(cocktail, requirement)
    base_url = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s='
    url = base_url + cocktail.name
    read_url = open(url).read
    parsed = JSON.parse(read_url)
    @results = parsed['drinks'][0]["#{requirement}"]
  end

  def render_photo_url(cocktail)
    if cocktail.photo.attached?
      cl_image_path cocktail.photo.key, height: 300, width: 400, crop: :fill
    else
      call_cocktail_api(cocktail, 'strDrinkThumb')
      @results
    end
  end

  def render_photo_html(cocktail)
    if cocktail.photo.attached?
      cl_image_tag cocktail.photo.key, height: 300, width: 400, crop: :fill
    else
      call_cocktail_api(cocktail, 'strDrinkThumb')
      raw("<img src=\"#{@results}\" alt=\"#{@cocktail.name}\" width=\"400\" height=\"400\">")
    end
  end
end