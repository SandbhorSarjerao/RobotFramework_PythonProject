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

Alerts Demo2
    Open Browser    http://localhost/main.html    ${browser}
    Comment    Click Button    id=btnModal    # works in IE but in FF, Se never returns until dialog is closed :(
    Execute Javascript    setTimeout(function(){window.showModalDialog('modal.html')},200);    # workaround to make script function in both FF & IE
    Sleep    1s
    Select Window    title=modal windows are ugly
    Click Button    id=btnAlert
    Comment    Select Window    # fails in IE unless you uncomment this
    ${msg}=    Get Alert Message
    Select Window    title=modal windows are ugly    # have to select the modal dialog again to interact with it if you selected another window
    Capture Page Screenshot
