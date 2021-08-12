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

Close browser
  close all browsers

Close all open browsers
  close all browsers


