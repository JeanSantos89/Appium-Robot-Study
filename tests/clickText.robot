*** Settings ***

Library    AppiumLibrary


*** Variables ***
${START}    QAX


*** Test Cases ***
Deve realizar um clique simples
    Open Application   http://localhost:4723
    ...                platformName=Android
    ...                deviceName=Android Emulator
    ...                automationName=UIAutomator2
    ...                app=${EXECDIR}/app/yodapp-beta.apk
    ...                udid=emulator-5554
    ...                autoGrantPermissions=true

    Wait Until Page Contains    ${START} 
    Click Text                  ${START} 
    Sleep                       2

    ${hamburguer}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    ${menu_item_cliquebtn}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Clique em Botões"]
    Wait Until Element Is Visible    ${hamburguer}    5
    Click Element                    ${hamburguer}
    Wait Until Element Is Visible    ${menu_item_cliquebtn}    5
    Click Element                    ${menu_item_cliquebtn}

    


    

    Close Application