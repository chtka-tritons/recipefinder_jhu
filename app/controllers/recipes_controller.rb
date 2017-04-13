class RecipesController < ApplicationController
  def index
  	@search = params[:q] || "chocolate"
  end
end
