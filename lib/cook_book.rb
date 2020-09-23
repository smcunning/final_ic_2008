require 'date'
class CookBook
  attr_reader :recipes,
              :date

  def initialize
    @recipes = []
    @date = self.todays_date
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

  def highest_calorie_meal
    @recipes.max_by do |recipe|
      recipe.total_calories
    end
  end

  def todays_date
    Date.today.strftime("%m-%d-%Y")
  end
end
