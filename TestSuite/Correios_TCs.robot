*** Settings ***
Documentation  Testing Correios website

Library  SeleniumLibrary
Library  BuiltIn
Library  ../Locators/Correios_Locators.py

Resource  ../Keywords/Correios_Keywords.robot

Variables  ../Variables/Correios_Variables.py


*** Test Case ***
Test Case1: Fetch an address through a valid zip code
    [Documentation]  This test case is responsible for
    ...  fetch an address through a valid zip code
    [Tags]  Regression
    [Setup]
	    Open Correios Website in Chrome and Maximize
	    Type Zip Code in Endereco or Zip Code Field
	    Click on Buscar Zip Code button

    [Teardown]
	    Close Browser

Test Case2: Fetch a zip code through a valid address
    [Documentation]  This test case is responsible for
    ...  fetch a zip code through a valid address
    [Tags]  Regression
    [Setup]
	    Open Correios Website in Chrome and Maximize
	    Type Address in Endereco or Zip Code Field
	    Click on Buscar Address button

    [Teardown]
	    Close Browser

Test Case3: Fetch an invalid zip code
    [Documentation]  This test case is responsible for
    ...  fetch an invalid zip code
    [Tags]  Regression
    [Setup]
	    Open Correios Website in Chrome and Maximize
	    Type an Invalid Zip Code in Endereco or Zip Code Field
	    Click on Buscar Invalid Zip Code button

    [Teardown]
	    Close Browser

