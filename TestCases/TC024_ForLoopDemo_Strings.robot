*** Settings ***

*** Test Cases ***
For Loop Demo with Strings
    FOR     ${i}    IN      Sarjerao    Amit    Girish     Anil     Vijay
        log to console    ${i}
    END

For Loop Demo with Strings with List
    @{namesList}    create list     Sarjerao    Amit    Girish     Anil     Vijay
    FOR     ${i}    IN      @{namesList}
        log to console    ${i}
    END