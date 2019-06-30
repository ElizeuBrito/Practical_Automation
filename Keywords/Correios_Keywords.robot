*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  ../ExternalKeywords/Correios_External_Keywords.py
Library  ../Locators/Correios_Locators.py

Variables  ../Variables/Correios_Variables.py

*** Keywords ***
Open Correios Website in Chrome and Maximize
    open browser  ${correios_url}  chrome
    maximize browser window
    log  Browser maximized maximized successfully
    log to console  Browser maximized successfully

Type Zip Code in Endereco or Zip Code Field
    ${search_text_field}=  get_search_text_field
    Wait Until Element Is Visible  ${search_text_field}
    double click element  ${search_text_field}
    input text  ${search_text_field}  ${correios_valid_zip}
    log  Zip Code is typed successfully
    log to console  Zip Code is typed successfully

Type Address in Endereco or Zip Code Field
    ${search_text_field}=  get_search_text_field
    Wait Until Element Is Visible  ${search_text_field}
    double click element  ${search_text_field}
    input text  ${search_text_field}  ${correios_valid_address}
    log  Address is typed successfully
    log to console  Address is typed successfully

Type an Invalid Zip Code in Endereco or Zip Code Field
    ${arg}=  convert to integer  10
    ${invalid_zip_code}=  invalid_zip_code_generator  ${arg}
    ${search_text_field}=  get_search_text_field
    Wait Until Element Is Visible  ${search_text_field}
    double click element  ${search_text_field}
    input text  ${search_text_field}  ${invalid_zip_code}
    log  Invalid Zip Code is typed successfully
    log to console  Invalid Zip Code is typed successfully

Click on Buscar Zip Code button
    ${buscar_button}=  get_search_button
    ${result_search}=  get_result_zip_search
    click button  ${buscar_button}
    sleep  5
    element text should be  ${result_search}  ${result_zip_search}
    log  Button is clicked successfully
    log to console  Button is clicked successfully

Click on Buscar Address button
    ${buscar_button}=  get_search_button
    ${result_search}=  get_result_address_search
    click button  ${buscar_button}
    sleep  5
    element text should be  ${result_search}  ${result_address_search}
    log  Button is clicked successfully
    log to console  Button is clicked successfully

Click on Buscar Invalid Zip Code button
    ${buscar_button}=  get_search_button
    ${result_invalid_search}=  get_invalid_zip_code_search
    click button  ${buscar_button}
    sleep  5
    element text should be  ${result_invalid_search}  ${result_invalid_zip_code}
    log  Button is clicked successfully
    log to console  Button is clicked successfully

