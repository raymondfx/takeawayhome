import { Given, When, And, Then } from "cypress-cucumber-preprocessor/steps";

// A user using filters to filer through the product catalogue
Given("A user opens the product page", ()=>{
    cy.launchPage()
})
Then("User clicks filer through Product catalogue", ()=>{
   cy.productFilter()
})

// A user searching for a specific product
Given("User clicks on the searching tab", ()=>{
    cy.launchPage()
    cy.get('.form-control').click;
})
When("User enters specific {string}", (item) => {
    cy.searchProduct(item)
})
Then("User gets the specific product item displayed", ()=>{
    cy.productSearchSuccessful()
})

// A user adding a product to a cart
Given("A user clicks on Add Product button", ()=>{
    cy.contains("Add to cart").click();
})
When("A user clicks on the cart Button", ()=>{
    cy.get('.navbar > .btn').click();
})
And("User is directed to Cart Page", ()=>{
   cy.cartPage()
})
Then("The product is visible in the cart", ()=>{
   cy.contains("Mens Casual Slim Fit")
})

// A user adding multiple products to a cart
Given("A user opens the product page", ()=>{
    cy.launchPage()
})
When("A user clicks on the Add to Cart Button on multiple products", ()=>{
    cy.addMultipleProducts()
})
And("User is directed to Carts Page", ()=>{
    cy.get('.navbar > .btn').click()
    cy.cartPage()
})
Then("The products are added to the cart", ()=>{
    cy.contains("Mens Cotton Jacket")
    cy.contains("Mens Casual Slim Fit")
    cy.contains("John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet")
})

// A user removing one item from the cart
Given("User is at the cart page", ()=>{
    cy.cartPage()

})
When("User clicks delete button on specific product", ()=>{
    cy.get(':nth-child(1) > :nth-child(8) > .btn > .fas').click()
    
})
Then("The product is removed from the cart", ()=>{
    cy.contains("Mens Cotton Jacket").should('not.exist')
})

// A user emptying the whole cart
Given("User is at the cart page", ()=>{
    cy.cartPage()
})
When("User clicks Empty Cart Button", ()=>{
    cy.get(':nth-child(2) > .btn').click()
})
Then("All the products are removed from the cart", ()=>{
    cy.contains("Your cart is empty!")
})