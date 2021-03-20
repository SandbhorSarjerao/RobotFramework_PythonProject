*** Settings ***
Library    SeleniumLibrary
Library    DataDriver   ../TestData/LoginData.xlsx  sheet_name=LoginData
Resource    ../Resources/Login_Resources.robot
Suite Setup    Open Chrome Browser And Enter URL
Suite Teardown  Close Browsers
Test Template   Invalid Login


*** Test Cases ***
LoginTestwithCSVData    using   ${UserName} and ${Password}


*** Keywords ***
Invalid Login
    [Arguments] ${UserName} ${Password}
    Input UserName  ${UserName}
    Input Password  ${Password}
    Click Login Button
    Error Message should be Displayed