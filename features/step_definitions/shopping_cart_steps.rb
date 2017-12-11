When("I click on {string} on {string}") do |link, title|
  @product = Product.find_by(title: title)
    within("#product-#{@product.id}") do
      click_link_or_button link
    end
end

Then("a cart should be created for me") do
  @cart = Cart.last
  expect(@cart).to_not be nil
end

Then("the cart should contain {string}") do |string|
  expect(@cart.shopping_cart_items.map(&:item)).to include @product
end

Given("there is a cart with cart item {string}") do |product|
  steps %Q{
    And I click on "Add to cart" on "#{product}"
    Then a cart should be created for me
  }
end

Then("I should have {string} products in my cart") do |count|
  expect(@cart.shopping_cart_items.count).to eq count.to_i
end
