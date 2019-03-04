require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products
  def new_product(image_url, count)
    Product.new(title: "My Book Title" + count.to_s ,
                description: "lorem",
                price: 1,
                image_url: image_url)
  end
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
  test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif}
    bad = %w{ fred.doc fred.gif/more fred.gif.more}
    @count = 0
    ok.each do |image_url|
      @count = @count + 1
      assert new_product(image_url, @count).valid?, "#{image_url} shouldn't be invalid"
    end
    @count = 0
    bad.each do |image_url|
      @count = @count + 1
      assert new_product(image_url, @count).invalid?, "#{image_url} shouldn't be valid"
    end
  end
end
