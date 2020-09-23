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
end
