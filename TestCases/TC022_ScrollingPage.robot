*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
Scrolling Page Test
    open browser    ${url}      ${browser}
    maximize browser window

    execute javascript      window.scrollTo(0,500)    # scroll vertically 2500 pixel
    sleep    3
    execute javascript      window.scrollTo(0,document.body.scrollHeight)       # Scroll Till the end of the Page
    sleep    3
    execute javascript      window.scrollTo(0,-document.body.scrollHeight)      # Scroll at the Top of the Page
    sleep    3
    scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img
    sleep    3

    close browser