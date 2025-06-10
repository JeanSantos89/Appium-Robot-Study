*** Settings ***
Documentation    Elementos e ações da tela de login
Library          AppiumLibrary

*** Variables ***
${API_key}    192.168.0.13
${el1}        class=android.widget.EditText

*** Keywords ***
Do login
    Input Text    ${el1}    ${API_key}
    Click Element                  xpath=//*[@resource-id="signInButton"]