*** Settings ***
Library    SeleniumLibrary
Suite Setup     open browser    ${url}  ${browser}

Suite Teardown      close all browsers

Test Setup      log to console      This is Test Setup

Test Teardown       log to console      This is Test TearDown

*** Variables ***
${browser}      chrome
${url}          https://admin-demo.nopcommerce.com/login?ReturnUrl=/admin/

*** Test Cases ***
Setup And TearDown Test Demo-1
    log to console    This is Setup And TearDown Test-1

Setup And TearDown Test Demo-2
    log to console    This is Setup And TearDown Test-2

Setup And TearDown Test Demo-3
    log to console    This is Setup And TearDown Test-3