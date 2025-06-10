*** Settings ***

Library    AppiumLibrary

Resource    ../resources/base.resource

*** Test Cases ***
Deve marcar os techs que utilizam appium

    Start Session
    Get Started
    Navigate to                      Check e Radio
    Go to item                       Botões de radio    Escolha sua linguagem preferida

    Click Element    xpath=//android.widget.RadioButton[@resource-id="com.qaxperience.yodapp:id/radioButton" and @text="Python "]
    Close Session