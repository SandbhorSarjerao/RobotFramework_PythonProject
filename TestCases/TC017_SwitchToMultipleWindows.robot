*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome


*** Test Cases ***
Tabbed Windows Test
    open browser    https://www.google.com/      ${browser}
    maximize browser window
    sleep    3

    open browser    https://en.wikipedia.org/wiki/Wikipedia     ${browser}
    maximize browser window
    sleep    2

    switch browser    1
    ${page1Title}=      get title
    log to console      ${page1Title}
    sleep    2

    switch browser    2
    ${page2Title}=      get title
    log to console      ${page2Title}
    sleep    2
    
    close all browsers
