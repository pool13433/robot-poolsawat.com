*** Keywords ***
Print Message from agruments
    [Documentation]    Print Message from agruments
    [Arguments]    ${arg0}
    Log To Console    'Result from Print Message from agruments keywords ::=='${arg0}

Calculate value
    [Documentation]    Calculate value
    [Arguments]    ${a}     ${b}
    ${result}=      Evaluate     ${a}+${b}
    [Return]        ${result}