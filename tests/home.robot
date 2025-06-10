*** Settings ***

Library    AppiumLibrary

*** Test Cases ***

Deve abrir a tela principal

    Open Application   http://localhost:4723
    ...                platformName=Android
    ...                deviceName=Android Emulator
    ...                automationName=UIAutomator2
    ...                app=${EXECDIR}/app/yodapp-beta.apk
    ...                udid=emulator-5554
    ...                autoGrantPermissions=true

    Wait Until Page Contains    Yodapp
    Wait Until Page Contains    Mobile Training
    Wait Until Page Contains    by Papito

    Close Application