*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
RadioButtonValidation
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    2Seconds

    checkbox should not be selected    BlackTea
    select checkbox    BlackTea

    select checkbox    RedTea
    sleep    3
    unselect checkbox    RedTea

    # checkbox should not be selected    id:tool-0
    select checkbox    id:tool-0

    sleep    3
    close browser

