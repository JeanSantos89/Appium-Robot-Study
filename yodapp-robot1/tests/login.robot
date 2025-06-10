*** Settings ***

Library    AppiumLibrary

Resource    ../resources/base.resource

*** Test Cases ***
Deve logar com informações corretas

    Start Session
    Get Started
    Navigate to                      Formulários
    Go to item                       Login    Olá Padawan, vamos testar o login?

    Input Text       xpath=//android.widget.EditText[@resource-id="com.qaxperience.yodapp:id/etEmail"]   yoda@qax.com
    Input Text       id=com.qaxperience.yodapp:id/etPassword    jedi
    Click Element    id=com.qaxperience.yodapp:id/btnSubmit
    Wait Until Page Contains    Boas vindas, logado você está.

    Close Session

Não deve logar com informações incorretas

    Start Session
    Get Started
    Navigate to                      Formulários
    Go to item                       Login    Olá Padawan, vamos testar o login?

    Input Text                       xpath=//android.widget.EditText[@resource-id="com.qaxperience.yodapp:id/etEmail"]  yoda@qax.com
    Input Text                       id=com.qaxperience.yodapp:id/etPassword    jedi12345
    Click Element                    id=com.qaxperience.yodapp:id/btnSubmit
    Wait Until Page Contains         Oops! Credenciais incorretas.
    Close Session



    