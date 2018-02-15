Feature: Customer can see a summary of their products and total price
  As a customer
  In order to see what I have ordered and a total price
  I would like be able to see a summary on an cart details page

  Background:
    Given the following products exist
      | title   | description   | price |
      | T-shirt | Blue t-shirt  | 50    |
      | Mug     | Nice mug      | 20    |
      | Gloves  | Stay warm     | 25    |

    Given I visit the "Shop" page
    And there is a cart with cart item "Mug"
    And I click on "Add to cart" on "Gloves"
    Then I should have "2" products in my cart
    Then the cart should contain "Mug"
    And the cart should contain "Gloves"
    Then I should be redirected to the "Shop" page
    And I should see "Gloves has been added to cart"

  Scenario: Customer can access cart page to see order summary and total price
    Given I visit the landing page
    And I click "Cart"
    Then show me the page
    Then I should see "Cart Summary"
    And I should see "Mug 20 $"
    And I should see "Gloves 25 $"
    And I should see "Total: 45.00 $"
