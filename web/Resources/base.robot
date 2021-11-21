*** Settings ***
Library   				SeleniumLibrary

*** Variables ***
${urlBase}               https://training-wheels-protocol.herokuapp.com/

*** Keywords ***
Nova Sessão
  Open Browser		               ${urlBase} 		          chrome

Encerrar Sessão
  Capture Page Screenshot
  Close Browser	