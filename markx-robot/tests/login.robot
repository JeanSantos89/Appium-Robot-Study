*** Settings ***
Documentation    Testes de login

Resource         ../resources/base.resource

Test Setup       Start session
Test Teardown    Finish session

*** Test Cases ***
Deve logar com sucesso
    ${el1} =      Set Variable     class=android.widget.EditText
    Input Text    ${el1}           192.168.0.13
    Click Element                  xpath=//*[@resource-id="signInButton"]
    Wait Until Page Contains       Minhas tarefas    5
    