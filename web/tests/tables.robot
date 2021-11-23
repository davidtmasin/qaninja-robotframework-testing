*** Settings ***
Resource                ../Resources/base.robot

Test Setup              Nova Sessão
Test Teardown           Encerrar Sessão

*** Variables ***


*** Test Cases ***
Verificar o valor ao informar o número da linha
  Go To                            ${urlBase}/tables
  Table Row Should Contain         id:actors          1       $ 10.000.000
  Table Row Should Contain         id:actors          1       @robertdowneyjr
  Sleep                            5

Descobrir a linha pelo texto-chave e validar os demais valores
  [tags]      pantera
  Go To                            ${urlBase}/tables
  ${target}=                       Get WebElement                   xpath:.//tr[contains(. ,"@chadwickboseman")]
  Log To Console                   ${target.text} 
  Log                              ${target.text}  
  Should Contain                   ${target.text}                   $ 700.000
  Should Contain                   ${target.text}                   Pantera Negra