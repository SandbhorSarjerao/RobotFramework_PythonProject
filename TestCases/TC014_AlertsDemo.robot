*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          http://testautomationpractice.blogspot.com/

*** Test Cases ***
Alerts Demo
    open browser    ${url}      ${browser}
    click element    xpath://button[contains(text(),'Click Me')]
    sleep    3
    handle alert    accept
    sleep    3
    element should be visible    xpath://*[contains(text(),'You pressed OK!')]

    click element    xpath://button[contains(text(),'Click Me')]
    sleep    3
    handle alert    dismiss
    sleep    3
    element should be visible    xpath://*[contains(text(),'You pressed Cancel!')]

    alert should be present     Press a button!

    click element    xpath://button[contains(text(),'Click Me')]
    sleep    3
    handle alert    leave
    sleep    3

    close browser