*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
ListBoxValidation
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    2Seconds

    select from list by index    selenium_commands     2
    sleep    2
    select from list by label   selenium_commands      Browser Commands
    sleep    2
    select from list by label   selenium_commands      WebElement Commands
    # select from list by value   selenium_commands    Wait Commands
    # sleep    2

    close browser

