*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
DropDownValidation
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    2Seconds

    select from list by index    continents     2
    sleep    2
    select from list by label   continents      Australia
    sleep    2
    # select from list by value   continents    Antartica
    # sleep    2

    close browser

