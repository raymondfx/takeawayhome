Feature: End to End Tests Scenarios

    Scenario: A user using filters to filer through the product catalogue
        Given A user opens the product page
        Then User clicks filer through Product catalogue
    

    Scenario Outline: A user searching for a specific product
       Given User clicks on the searching tab
       When User enters specific '<Product>'
       Then User gets the specific product item displayed
    Examples:
        | Product |
        | Mens Casual Slim Fit  |
    

    Scenario: A user adding a product to a cart
        Given A user clicks on Add Product button
        When A user clicks on the cart Button
        And User is directed to Cart Page
        Then The product is visible in the cart

    Scenario: A user adding multiple products to a cart
        Given A user opens the product page
        When A user clicks on the Add to Cart Button on multiple products
        And User is directed to Carts Page
        Then The products are added to the cart

    Scenario: A user removing one item from the cart
         Given User is at the cart page
         When User clicks delete button on specific product
         Then The product is removed from the cart

    Scenario: A user emptying the whole cart
        Given User is at the cart page
        When User clicks Empty Cart Button
        Then All the products are removed from the cart




