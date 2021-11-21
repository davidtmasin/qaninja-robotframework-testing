*** Settings ***
Resource                ../Resources/base.robot

Test Setup              Nova Sessão
Test Teardown           Encerrar Sessão

*** Variables ***
${check-thor}            id:thor
${check-ironman}         css=input[value='iron-man']
${check-blackpanther}    xpath=//*[@id='checkboxes']/input[7]

*** Test Cases ***
Checking option with ID
  [tags]      thor
	Go To                          ${urlBase}/checkboxes
  Select Checkbox                ${check-thor}  
  Checkbox Should Be Selected    ${check-thor}  
  Sleep                          5

Checking option with CSS Selector
  [tags]      ironman
  Go To                          ${urlBase}/checkboxes
  Select Checkbox                ${check-ironman}   
  Checkbox Should Be Selected    ${check-ironman}   
  Sleep                          5

Checking option with Xpath
  [tags]      blackpanther
  Go To                          ${urlBase}/checkboxes
  Select Checkbox                ${check-blackpanther}
  Checkbox Should Be Selected    ${check-blackpanther}
  Sleep                          5
