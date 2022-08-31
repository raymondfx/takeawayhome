// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add('login', (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })
Cypress.Commands.add("productFilter", (item)=>{
    cy.contains('Electronics').click()
    cy.contains('Fashion').click()
    cy.contains('Jewllery').click()
})
Cypress.Commands.add("searchProduct", (item) => {
    cy.get('.form-control').type(item)
  })
Cypress.Commands.add("productSearchSuccessful", () => {
    cy.contains("Mens Casual Slim Fit")
})
Cypress.Commands.add("launchPage", ()=>{
    cy.visit('/')
})
Cypress.Commands.add("cartPage", ()=>{
    cy.url().should('include','/cart')
})
Cypress.Commands.add("addMultipleProducts", ()=> {
    cy.get(':nth-child(3) > .btn').click()
    cy.get(':nth-child(4) > .btn').click()
    cy.get(':nth-child(5) > .btn').click()
})

//Cypress.Commands.add("addProduct", ()=>{
//    cy.get('.card > .btn').click;
//})