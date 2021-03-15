*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
Capture Screenshot
    open browser    ${url}      ${browser}
    maximize browser window

    input text    id:txtUsername    Admin
    input text    id:txtPassword    admin123
    sleep    2

    # capture element screenshot        xpath://*[@id="divLogo"]/img      OrangeHRMLogo.png
    # capture page screenshot           OrangeHRMLogin.png

    capture element screenshot    xpath://*[@id="divLogo"]/img      C:/Users/Sarjerao Sandbhor/PycharmProjects/RobotFramework_PythonProject/Screenshots/OrangeHRMLogo.png
    capture page screenshot         C:/Users/Sarjerao Sandbhor/PycharmProjects/RobotFramework_PythonProject/Screenshots/OrangeHRMLogin.png

    close browser