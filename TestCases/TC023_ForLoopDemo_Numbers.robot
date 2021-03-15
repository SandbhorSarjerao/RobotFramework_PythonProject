*** Settings ***

*** Test Cases ***
For Loop Demo-1
    FOR       ${i}    IN RANGE    1   11
       log to console      ${i}
    END

For Loop Demo-2
    FOR       ${i}    IN  1 2 3 4 5 6 7 8 9 10
       log to console    ${i}
    END

For Loop Demo-3
    FOR       ${i}    IN  1    2    3    4    5    6    7    8    9    10
       log to console    ${i}
    END

For Loop Demo with List
    @{ListItems}    create list    1    2   3   4   5
    FOR     ${i}    IN      @{ListItems}
        log to console    ${i}

For Loop Demo with Exit
    @{listItems1}    create list    1    2   3   4   5   6   7   8   9   10
    FOR    ${i}    IN      @{listItems1}
        log to console    ${i}
        exit for loop if    ${i}==5
    END