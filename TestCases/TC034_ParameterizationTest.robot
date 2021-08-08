*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://www.google.com/
${SearchTextBox}      dress
${BtnGoogleSearch}     name:btnK
${ListSearchWords}=     ['T-Shirt', 'Jeans']

*** Test Cases ***
Search Test
    Open webpage
    Search for ${SearchTextBox}
    page should contain      dress - Google Search
    close browser

Search Test for multiple words
    Open webpage
    Search for ${ListSearchWords}
    page should contain      Google Search
    close browser

*** Keywords ***
Open webpage
    open browser        ${url}      ${browser}
    maximize browser window

Search for ${SearchTextBox}
    input text      name:q       ${SearchTextBox}
    click element      name:btnK