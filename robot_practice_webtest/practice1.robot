*** Settings ***
Documentation       Template robot main suite.
Library           SeleniumLibrary
Suite Setup       Open Browser        ${URL}   ${BROWSER}
Suite Teardown    Close All Browsers

*** Variables ***
${URL}              https://dineshvelhal.github.io/testautomation-playground/login.html
${BROWSER}          Chrome


*** Tasks ***
Login
    Click Element  id:user
    Input Text     id:user        admin
    Sleep          0.5
    Click Element  id:password
    Input Text     id:password        admin
    Sleep          0.5
    Click Button   id:login
    Wait Until Element Is Visible    css:h3
#select size pizza, flavor and add toppings
    Click Element                  id:rad_medium
    Sleep          0.5
    Select from list by label      id:select_flavor           Veggie Delight
    Sleep          0.5
    Click Element                  id:rad_buffalo
    Click Element                  id:green_olive
    Sleep          0.5