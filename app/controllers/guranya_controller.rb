class GuranyaController < ApplicationController
  def make_joke
    @response = HTTParty.get("https://api.publicapis.org/categories")
  end
end
