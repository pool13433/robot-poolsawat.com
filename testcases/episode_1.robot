*** Settings ***
Resource    ../resources/imports.robot
Resource    ../keywords/api_keywords.robot
Variables    ../resources/testdata/${ENV}/example_data.yaml

*** Variables ***
${DIRECTORY_CSV}       ../resources/testdata/csv

*** Test Cases ***
CASE_00001 lesson 1 Log to console
    Log To Console    'Hello World 1'

CASE_00002 lesson 2 use external keywords with void
    Print Message from agruments  'Hello world 2'

CASE_00003 lesson 3 use external keywords with return
    ${result}=     Calculate value   5     10
    Log To Console    'Result from Calculate value keywords::=='${result}

CASE_00004 lesson 4 get data from yaml file
    Log To Console   'request ::='${test_data.CASE_00004.request}
    Log To Console   'expect_data ::=='${test_data.CASE_00004.expect_data}

CASE_00005 lesson 5 get env global file
    Log To Console   'app_name ::=='${app_name}

CASE_00006 lesson 6 use custom lib keywords
    ${now}=     get_nowdate
    Log To Console   'now ::=='${now}

CASE_00007 lesson 7 use variable with resource environnment
    Log To Console   'welcome_message from ${ENV}::=='${welcome_message}