*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
Count All Links on Page Test
    open browser    ${url}      ${browser}
    maximize browser window

    ${AllLinksCount}=        get element count    xpath://a
    log to console    ${AllLinksCount}

    @{linkItems}    create list
    FOR     ${i}    IN RANGE    1       ${AllLinksCount}+1
        ${linkText}=    get text    xpath:(//a)[${i}]
        log to console    ${linkText}
    END

    close browser