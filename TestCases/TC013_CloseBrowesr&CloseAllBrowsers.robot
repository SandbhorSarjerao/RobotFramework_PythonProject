*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Close Browser And Close All Browsers
    open browser    http://www.practiceselenium.com/practice-form.html      chrome
    open browser    http://demowebshop.tricentis.com/register               chrome
    open browser    http://automationpractice.com/index.php                 chrome

    sleep   2
    close browser

    open browser    http://automationpractice.com/index.php                 chrome
    open browser    https://www.nopcommerce.com/en/login?returnUrl=%2Fen        chrome

    sleep    2
    close all browsers

