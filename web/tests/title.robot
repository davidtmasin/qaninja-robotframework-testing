*** Settings ***
Resource                ../Resources/base.robot

Test Setup              Nova Sessão
Test Teardown           Encerrar Sessão

*** Test Cases ***
Should See Page Title
	Title Should Be		Training Wheels Protocol
