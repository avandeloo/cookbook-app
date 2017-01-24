class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new

  end

  def create
    recipe = Recipe.new(
                        title: params[:title],
                        chef: params[:chef],
                        ingredients: params[:ingredients],
                        directions: params[:directions],
                        prep_time: params[:prep_time],
                        image: params[:image]

                        )
    recipe.save

    flash[:success] = "Recipe #{recipe.title} Created Successfully."
    redirect_to "/recipes/#{recipe.id}"
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])

    recipe.assign_attributes(
                              title: params[:title],
                              chef: params[:chef],
                              ingredients: params[:ingredients],
                              directions: params[:directions],
                              prep_time: params[:prep_time],
                              image: params[:image]
                            )

    flash[:success] = "Recipe #{recipe.title} Updated Successfully."
    redirect_to "/recipes/#{recipe.id}"

    recipe.save
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy

    flash[:warning] = "Recipe #{recipe.title} Deleted Successfully."
    redirect_to "/recipes"
  end

end
