*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
OpenBrowserHitURL
    [Arguments]     ${appURL}       ${appBrowser}
    open browser    ${appURL}      ${appBrowser}
    maximize browser window
    ${pageTitle}=       get title
    [Return]        ${pageTitle}
