*** Settings ***
Resource                ../Resources/base.robot

Test Setup              Nova Sessão
Test Teardown           Encerrar Sessão

*** Variables ***


*** Test Cases ***
Selecting option with ID
  [tags]      cap
	Go To                            ${urlBase}/radios
  Select Radio Button              movies             cap    
  Radio Button Should Be Set To    movies             cap     
  Sleep                            5

Selecting option with value
  [tags]      guardians
  Go To                            ${urlBase}/radios
  Select Radio Button              movies             guardians    
  Radio Button Should Be Set To    movies             guardians     
  Sleep                            5