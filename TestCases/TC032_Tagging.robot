*** Settings ***

# robot --include=sanity TestCases\TC032_Tagging.robot
# robot -i sanity -i regression TestCases\TC032_Tagging.robot
# robot -e regression TestCases\TC032_Tagging.robot
# robot -i sanity -e regression TestCases\TC032_Tagging.robot

*** Test Cases ***
TC1 User Registration Test
    [Tags]    sanity
    log to console    This is TC1 User Registration Test

TC2 User Login Test
    [Tags]    regression
    log to console    This is TC2 User Login Test

TC3 Update User Settings Test
    [Tags]    regression
    log to console    This is TC3 Update User Settings Test

TC4 Contacts Us Test
    [Tags]    sanity
    log to console    This is TC4 Contact Us Test

TC5 User Logout Test
    [Tags]    regression
    log to console    This is TC5 User Logout Test
