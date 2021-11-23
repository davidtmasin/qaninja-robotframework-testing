*** Settings ***
Resource                ../Resources/base.robot

Test Setup              Nova Sessão
Test Teardown           Encerrar Sessão

*** Variables ***


*** Test Cases ***
Selecting option for text and validation for value
  [tags]      scottlang
	Go To                            ${urlBase}/dropdown
  Select From List By Label        class=avenger-list               Scott Lang
  ${selected}=                     Get Select List Value            class=avenger-list
  Should Be Equal                  ${selected}                      7
  Sleep                            5

Selecting option for value and validation for text
  [tags]      loki
	Go To                            ${urlBase}/dropdown
  Select From List By Value        id=dropdown                    6
  ${selected}=                     Get Selected List Label        id=dropdown   
  Should Be Equal                  ${selected}                    Loki
  Sleep                            5