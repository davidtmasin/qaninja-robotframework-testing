*** Settings ***
Library   ../Resources/app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas
  ${result}=        Welcome     Jubileu da Silva Xablau
  Log To Console    ${result}
  Should Be Equal   ${result}   Olá Jubileu da Silva Xablau, bem-vindo ao curso básico de Robot Framework!
