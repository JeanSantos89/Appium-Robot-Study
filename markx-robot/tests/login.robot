*** Settings ***
Documentation    Testes de login

Resource         ../resources/base.resource

*** Test Cases ***
Deve logar com sucesso
    Open Application    http://localhost:4723
    ...                 automationName=uiautomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    ...                 app=${EXECDIR}/apps/markx.apk

    Wait Until Page Contains       Endereço IP da Api
    ${el1} =      Set Variable     class=android.widget.EditText
    Input Text    ${el1}           192.168.0.13
    Click Element                  xpath=//android.view.ViewGroup[@resource-id="signInButton"]
    Wait Until Page Contains       Minhas tarefas    5
    Sleep                          10
