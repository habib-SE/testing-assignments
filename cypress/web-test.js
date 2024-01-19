describe('Book Store App', () => {
    it('Should open the home page and verify elements', () => {
      cy.visit('http://localhost:3000');
      cy.contains('Book List').should('be.visible');
      cy.get('a').contains('Search').should('be.visible');
      cy.get('a').contains('Login').should('be.visible');
      cy.get('a').contains('Register').should('be.visible');
      cy.get('a').contains('Books').should('be.visible');
      cy.get('a').contains('Add Book').should('be.visible');
    });
  
    it('Should navigate to Search page', () => {
      cy.contains('Search').click();
      cy.url().should('include', '/search');
      cy.contains('Search Books').should('be.visible');
    });
  
    it('Should navigate to Login page', () => {
      cy.contains('Login').click();
      cy.url().should('include', '/login');
      cy.contains('Login').should('be.visible');
    });
  
    it('Should navigate to Register page', () => {
      cy.contains('Register').click();
      cy.url().should('include', '/register');
      cy.contains('Register').should('be.visible');
    });
  
    it('Should navigate to Books page', () => {
      cy.contains('Books').click();
      cy.url().should('include', '/books');
      cy.contains('Book List').should('be.visible');
    });
  
    it('Should navigate to Add Book page', () => {
      cy.contains('Add Book').click();
      cy.url().should('include', '/add');
      cy.contains('Add Book').should('be.visible');
    });
  });
  