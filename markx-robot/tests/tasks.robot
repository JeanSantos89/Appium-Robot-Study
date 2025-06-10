*** Settings ***
Documentation    Testes de login

Resource         ../resources/base.resource


Test Setup       Start session
Test Teardown    Finish session

*** Test Cases ***
Deve criar uma tarefa com sucesso
    Do login
    Create task
    Conclusion task
    Delete task