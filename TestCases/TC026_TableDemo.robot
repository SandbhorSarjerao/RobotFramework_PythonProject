*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          http://testautomationpractice.blogspot.com/

*** Test Cases ***
HTML Table Test
    open browser    ${url}      ${browser}
    maximize browser window
    ${rowsCount}=     get element count    xpath://table[@name="BookTable"]/tbody/tr
    log to console    ${rowsCount}
    ${colsCount}=       get element count    xpath://table[@name="BookTable"]/tbody/tr[1]/th
    log to console    ${colsCount}

    ${cellData}=        get text    xpath://table[@name="BookTable"]/tbody/tr[5]/td[1]
    log to console      ${cellData}

    table header should contain    xpath://table[@name="BookTable"]     Price
    table column should contain     xpath://table[@name="BookTable"]    3       Selenium
    table row should contain    xpath://table[@name="BookTable"]        5       Master In Selenium
    table cell should contain   xpath://table[@name="BookTable"]        5       3       Selenium

    close browser
