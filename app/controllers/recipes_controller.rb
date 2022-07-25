class RecipesController < ApplicationController
  skip_before_action :authorize


  def index
    render json: Recipe.all
  end

  def create
    recipe = Recipe.create!(recipe_params)
    render json: recipe, status: :created
  end

  private

  def recipe_params
    params.permit(:title, :instructions, :minutes_to_complete)
  end
end
