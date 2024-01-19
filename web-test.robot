*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        http://localhost:3000

*** Test Cases ***
Open Bookstore Application
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Verify Home Page Elements
    Element Should Be Visible    xpath=//h2[contains(text(),'Book List')]
    Element Should Be Visible    link=Search
    Element Should Be Visible    link=Login
    Element Should Be Visible    link=Register
    Element Should Be Visible    link=Books
    Element Should Be Visible    link=Add Book

Navigate to Search Page
    Click Link    Search
    Wait Until Element Is Visible    xpath=//h2[contains(text(),'Search Books')]
    Location Should Be    ${URL}/search

Navigate to Login Page
    Click Link    Login
    Wait Until Element Is Visible    xpath=//h2[contains(text(),'Login')]
    Location Should Be    ${URL}/login

Navigate to Register Page
    Click Link    Register
    Wait Until Element Is Visible    xpath=//h2[contains(text(),'Register')]
    Location Should Be    ${URL}/register

Navigate to Books Page
    Click Link    Books
    Wait Until Element Is Visible    xpath=//h2[contains(text(),'Book List')]
    Location Should Be    ${URL}/books

Navigate to Add Book Page
    Click Link    Add Book
    Wait Until Element Is Visible    xpath=//h2[contains(text(),'Add Book')]
    Location Should Be    ${URL}/add

Close Browser
    Close Browser
