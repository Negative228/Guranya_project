class GuranyaController < ApplicationController
  include GuranyaHelper
  
  def make_joke
    j_type = params["name"]
    if (valid_joke?(j_type))
      joke = HTTParty.get('https://official-joke-api.appspot.com/jokes/' + j_type.to_s + '/random')
      @response = JSON.parse(joke.body)[0]["setup"] + "  " + JSON.parse(joke.body)[0]["punchline"]
    else
    redirect_to :main
    end
  end

  def num_fact
    num = params["name"]
    if (valid_num?(num))
      number = HTTParty.get('http://numbersapi.com/' + num.to_s + '/')
      @response = number.body
    else
      redirect_to :main
    end
  end

  def cat_breed
    breed = params["name"]
    breed = breed.capitalize()
    if (valid_cat?(breed))
      cat = HTTParty.get("https://api.api-ninjas.com/v1/cats?name=#{breed}",
        headers: {'X-Api-Key': 'wCwPBOjfVh4Sd6+wk5qlag==iTrhbDSMz9f3ppXh'})
       @response = JSON.parse(cat.body)[0]["image_link"]
    else
      redirect_to :main
    end
  end



  def main
  end


end
