*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
RadioButtonValidation
    open browser    http://www.practiceselenium.com/practice-form.html      chrome
    maximize browser window
    # radio button should not be selected      sex    Female
    select radio button    sex      Female

    # radio button should not be selected      exp      5
    select radio button    exp      5

    sleep    5
    close browser

