*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          http://demowebshop.tricentis.com/register

*** Test Cases ***
WaitsAndTimeOutsDemo

    open browser    ${url}      ${browser}
    maximize browser window

    ${timeout}=     get selenium timeout
    log to console  ${timeout}

    set selenium timeout    10  seconds
    wait until page contains    Registration        # WaitTime is 10 Seconds
    # wait until page contains    Register        # Default MAX WaitTime is 5 Seconds

    select radio button    Gender   M

    input text    FirstName     Sarjerao
    input text    LastName      Sandbhor
    input text    Email         SarjeraoSandbhor@Gmail.com
    input text    Password      Test@123
    input text    ConfirmPassword      Test@123

    click button    register-button

    close browser