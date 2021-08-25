# The following group of keywords do not depend on the page-object model
# They use a partial ID instead

Fill field 
  [Arguments]  ${field}  ${value}
  Input text  <locator>  ${value}

Fill date 
  [Arguments]  ${field}  ${args}
  ${date}  Get Current Date  result_format=%d/%m/%y
  Input text  //input[contains(@id,"${field}")]  ${{$date}}

Select
  [Arguments]  ${field}  ${value}
  Select from list by label  //select[contains(@id,"${field}")]  ${value}

Click
  [Arguments]  ${field}
  Wait Until Element Is Visible  //*[(self:: button or self::a or self::span) and (contains(@id, "${field}") or (. = "${field}")]
  Press keys  //*[(self:: button or self::a or self::span) and (contains(@id, "${field}") or (. = "${field}"  SPACE
  Wait For Document Ready

Enter text in field
  [Arguments]  ${field}  ${text}
  element text should be   xpath://*[contains(text(),'${field}')]  ${text}
  
Element status should be enabled
  [Arguments]  ${element}  
  element should be visible  xpath://*[text()='${element}' and not(contains(@class,'disabled'))]

Element status should be disabled
  [Arguments]  ${element}  
  element should be visible  xpath://*[text()='${element}' and contains(@class,'disabled')]

Button is disabled
    [Arguments]    ${field}
    element attribute value should be   ${field}    class: btn btn-default btdisabled;      type: button;     style: ;

Button should be disabled
    [Arguments]      ${xpath}
    ${elem_attr}=    get element attribute  ${${current_page}.${xpath}}  @disabled
    run keyword and continue on failure  should be equal  ${elem_attr}  true

Button is enabled
    [Arguments]    ${field}
    Element attribute value should be    ${id}    style    pointer-events: unset; cursor: auto; background: rgb(30, 116, 186);

Button should be enabled
    [Arguments]      ${xpath}
    log to console  Verifying button enabled: ${xpath}..........  no_newline=true
    ${elem_attr}=    get element attribute  ${${current_page}.${xpath}}  @disabled
    run keyword and continue on failure  should be equal  ${elem_attr}  ${None}
    log to console  DONE!

Click-on button
    [Arguments]      ${xpath}
    ${element}=    Get WebElement    ${xpath}
    Execute JavaScript    arguments[0].click();    ARGUMENTS    ${element}

Select element
  [Arguments]  ${element}  
  wait until element is visible  xpath://*[contains(text(),'${element}')]
  click element  xpath://*[contains(text(),'${element}')]

Verify element text
  [Arguments]  ${element}  ${text}
  element text should be   xpath://*[contains(text(),'${text}')]  ${text}
  
Get element text
  [Arguments]  ${element}
  ${element_text}  get text  xpath://*[contains(text(),'${element}')]
  [Return]  ${element_text}

Verify element text contains
  [Arguments]  ${element}  ${text}
  element should contain  xpath://*[contains(text(),'${text}')]  ${text}
  
Select item from dropdown by partial text
  [Documentation]  the keyword selects an item from the dropdown containing text and checks that the item was selected
  [Arguments]  ${dropdown}  ${value}
  click element  ${dropdown}
  click element  xpath://*[contains(text(),'${value}')]
  ${selected_value}=  get selected list label  ${dropdown}
  should contain  ${selected_value}  ${value}

Scroll vertical bar to the bottom
  execute javascript window.scrollBy(0,2500)

Scroll vertical bar to the top
  execute javascript window.scrollBy(0,-2500)

Scroll horizontally
  Press Keys  None  RIGHT

Zoom out browser window
  execute javascript document.body.style.zoom="75%"

Close browser
  close all browsers

Close all open browsers
  close all browsers

Dropdown options are
    [Arguments]    ${field}    @{options}
    ${observed}      Get List Items    //select[contains(@id, "${field}")]

Mouse over element
    [Arguments]  ${element}
    Wait until element is visible   ${${current_page}.${element}}
    mouse over  ${${current_page}.${element}}

Submit ${field:(Create User|Create Contact)} form
    wait until element is visible  ${${current_page}.Submit Button}  timeout=9 seconds
    click button  ${${current_page}.Submit Button}
    wait until page load indicator is visible

Verify all the buttons are enabled on screen
    element should be enabled  //button[contains(text(),'Cancel')]
    element should be visible  //button[contains(text(),'Reset')]
    element should be enabled  //button[contains(text(),'Submit')]
    element should be enabled  frmCloseId

Verify file exists
    [Arguments]  ${filename}
    wait until keyword succeeds  5x  1 seconds   OperatingSystem.file should exist  ${download_dir}/${filename}

Remove exported file
    @{temp}=    OperatingSystem.List Files In Directory     ${download_dir}
    FOR    ${item}     IN    @{temp}
        OperatingSystem.move file  ${download_dir}/${item}  ${download_dir}/archive/${item}
    END

If Element Present then Run Keyword
    [Arguments]  ${element}    ${RunKeyword}
    ${ElementPresent}=    Run Keyword And Return Status    Element Should Be Visible    ${element}
    Run Keyword If    ${ElementPresent}    ${RunKeyword}

Login page should be opened
    wait until page contains    Welcome    timeout=5seconds
    set suite variable    ${current_page}    LoginPage


Logout from application
    wait until element is visible    xpath://*[contains(text(),'logout')]    timeout=5seconds
    wait until keyword succeeds    5x    1seconds    click element    xpath://*[contains(text(),'logout')]   
    Login page should be opened
