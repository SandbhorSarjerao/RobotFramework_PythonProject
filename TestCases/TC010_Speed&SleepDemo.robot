*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          http://demowebshop.tricentis.com/register

*** Test Cases ***
SpeedAndSleepDemo
    # Get Default Timeout
    ${speed} =  get selenium speed
    log to console    ${speed}
    ${timeout} =   get selenium timeout
    log to console    ${timeout}

    open browser    ${url}      ${browser}
    maximize browser window

    set selenium speed    2 seconds

    select radio button    Gender   M
    sleep    3

    input text    FirstName     Sarjerao
    input text    LastName      Sandbhor
    input text    Email         SarjeraoSandbhor@Gmail.com
    input text    Password      Test@123
    input text    ConfirmPassword      Test@123

    sleep    3

    ${speed} =  get selenium speed
    log to console    ${speed}
    ${timeout} =   get selenium timeout
    log to console    ${timeout}

    click button    register-button

    sleep    3
    close browser