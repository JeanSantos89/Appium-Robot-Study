*** Settings ***

Library    AppiumLibrary

*** Variables ***
${START}    QAX

*** Keywords ***
Start Session
    Open Application   http://localhost:4723
    ...                platformName=Android
    ...                deviceName=Android Emulator
    ...                automationName=UIAutomator2
    ...                app=${EXECDIR}/app/yodapp-beta.apk
    ...                udid=emulator-5554
    ...                autoGrantPermissions=true

Get Started
    Wait Until Page Contains    ${START} 
    Click Text                  ${START} 
    Sleep                       2

Navigate to 
    [Arguments]    ${item_text_btn}
    ${hamburguer}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    ${menu_item_cliquebtn}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text_btn}"]
    Wait Until Element Is Visible    ${hamburguer}    5
    Click Element                    ${hamburguer}
    Wait Until Element Is Visible    ${menu_item_cliquebtn}    5
    Click Element                    ${menu_item_cliquebtn}

Go to item
    [Arguments]    ${item_text_simple}    ${checkpoint}
    Wait Until Page Contains         ${item_text_simple}    5
    Click Text                       ${item_text_simple}
    Wait Until Page Contains         ${checkpoint}

Close Session
    Close Application