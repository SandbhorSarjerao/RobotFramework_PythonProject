*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          http://demo.automationtesting.in/Windows.html

*** Test Cases ***
Tabbed Windows Test
    open browser    ${url}      ${browser}
    maximize browser window

    click element       xpath://*[@id="Tabbed"]/a/button
    switch window       title=SeleniumHQ Browser Automation
    sleep    3

    click element    xpath://a[contains(text(),'Support')]
    sleep    3

    close all browsers
