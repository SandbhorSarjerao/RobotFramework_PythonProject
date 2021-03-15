*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://www.javadoc.io/static/org.seleniumhq.selenium/selenium-api/2.50.1/index.html?overview-summary.html
# ${url}          https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html

*** Test Cases ***
Frames Demo
    open browser    ${url}      ${browser}
    maximize browser window

    select frame    packageListFrame
#    click link      orq.openqa.selenium
    click element    xpath://a[contains(text(),'org.openqa.selenium')]
    unselect frame
    sleep    3

    select frame    packageFrame
#    click link      WebDriver
    click element    xpath://a[contains(text(),'WebDriver')]
    unselect frame
    sleep    3

    select frame    classFrame
    click link      Help
    unselect frame
    sleep    3

    close browser