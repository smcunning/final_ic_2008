require "minitest/autorun"
require "minitest/pride"
require "./lib/ingredient"
require "./lib/pantry"

class PantryTest < Minitest::Test

  def test_it_exists_with_attributes
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    pantry = Pantry.new
    assert_instance_of Pantry, pantry
    assert_equal ({}), pantry.stock
  end
end
