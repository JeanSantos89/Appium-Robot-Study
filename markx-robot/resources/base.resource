*** Settings ***
Documentation    Tudo deve começar nesse arquivo.

Library          AppiumLibrary
Resource         screens/login.resource
Resource         screens/tasks.resource

*** Keywords ***
Start session
    Open Application    http://localhost:4723
    ...                 automationName=uiautomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    ...                 app=${EXECDIR}/apps/markx.apk
    Wait Until Page Contains       Endereço IP da Api

Finish session
    Close Application