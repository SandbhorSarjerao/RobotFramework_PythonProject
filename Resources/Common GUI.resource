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
