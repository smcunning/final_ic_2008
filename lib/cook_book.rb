class CookBook
  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe_obj)
    @recipes << recipe_obj
  end

  def ingredients
    @recipes.map do |recipe|
      recipe.ingredients_required.map do |ingredient|
        ingredient[0].name
      end
    end.flatten.uniq
  end
end
