class Recipe
  attr_reader :name, :ingredients_required
  def initialize(name)
    @name = name
    @ingredients_required = {}
  end

  def add_ingredient(ingredient_obj, quantity)
    if @ingredients_required.include?(ingredient_obj)
       @ingredients_required[ingredient_obj] += quantity
    else
       @ingredients_required[ingredient_obj] = quantity
     end
  end

  def ingredients
    @ingredients_required.map do |ingredient, quantity|
      ingredient
    end
  end
end
