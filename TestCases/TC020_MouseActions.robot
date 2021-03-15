*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mouse Actions Test
    open browser        http://swisnl.github.io/jQuery-contextMenu/demo.html        chrome
    maximize browser window

    # 1.Right-Click (Context Menu) Action
    open context menu        xpath://span[contains(text(),'right click me')]
    sleep   2

    go to    http://testautomationpractice.blogspot.com/
    maximize browser window

    # 2.Double Click Action
    double click element    xpath://button[contains(text(),'Copy Text')]
    sleep   2

    go to    http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    sleep   2

    # 3.Drag-Drop Action
    # drag and drop   xpath://*[contains(text(),'Rome')]  xpath://*[contains(text(),'Italy')]
    drag and drop    id:box6    id:box106
    sleep   2

    close browser