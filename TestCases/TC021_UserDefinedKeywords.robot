*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resource.robot

*** Variables ***
${browser}      chrome
${url}          http://www.newtours.demoaut.com/

*** Test Cases ***
User Defined Keywords Test
    ${pageTitle}=       OpenBrowserHitURL       ${url}          ${browser}
    log to console      ${pageTitle}
    input text    name:userName     mercury
    input text    name:password     mercury

    close browser
