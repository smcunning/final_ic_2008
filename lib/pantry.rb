class Pantry
  attr_reader :stock
  def initialize
    @stock = {}
  end

  def stock_check(ingredient_obj)
    if @stock.include?(ingredient_obj)
      @stock[ingredient_obj]
    else
      0
    end
  end

  def restock(ingredient_obj, quantity)
    if stock_check(ingredient_obj) > 0
      @stock[ingredient_obj] += quantity
    else
      @stock[ingredient_obj] = quantity
    end
  end

  def enough_ingredients_for?(recipe_obj)
    recipe_obj.ingredients_required.all? do |ingredient, quantity|
      stock_check(ingredient) >= quantity
    end
  end
end
