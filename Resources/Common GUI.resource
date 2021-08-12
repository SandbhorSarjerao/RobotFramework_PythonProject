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

Select item from dropdown by partial text
  [Documentation]  the keyword selects an item from the dropdown containing text and checks that the item was selected
  [Arguments]  ${dropdown}  ${value}
  click element  ${dropdown}
  click element  xpath://*[contains(text(),'${value}')]
  ${selected_value}=  get selected list label  ${dropdown}
  should contain  ${selected_value}  ${value}
