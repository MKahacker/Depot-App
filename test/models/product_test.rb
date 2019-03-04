require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end
  test "product price must be positive" do
    product1 = Product.new(title: "French Chocolate" , description: "Chocolate from the Toulouse region of France. These rich delights will give you the rich taste of French cuisine." , image_url: "french.png")
    product1.price = -1
    product1.save
    assert product1.invalid?
    assert_equal ["must be greater than or equal to 0.01"], product1.errors[:price]
    product1.price = 0
    product1.save
    assert product1.invalid?
    assert_equal ["must be greater than or equal to 0.01"], product1.errors[:price]

    product1.price = 1.0
    product1.save
    assert product1.valid?
  end
end
