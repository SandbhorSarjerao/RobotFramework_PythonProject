*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome

*** Test Cases ***
Browser Navigation Test
    open browser    https://www.google.com/      ${browser}
    maximize browser window
    ${page1Location}=      get location
    log to console      ${page1Location}
    sleep    2

    go to    https://en.wikipedia.org/wiki/Wikipedia
    maximize browser window
    ${page2Location}=      get location
    log to console      ${page2Location}
    sleep    2

    go back

    ${page1Location}=      get location
    log to console      ${page1Location}
    sleep    2

    close all browsers
