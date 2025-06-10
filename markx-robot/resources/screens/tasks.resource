*** Settings ***
Documentation    Elementos e ações da tela de tarefas
Library          AppiumLibrary

*** Variables ***
${insert_task}       xpath=//android.widget.EditText[@resource-id="newTask"]
${confirm_create}    xpath=//android.view.ViewGroup[@resource-id="createTask"]
${delete_element}    xpath=//*[@resource-id="removeTask"]
${confirm_delete}    xpath=//*[@resource-id="android:id/button2"]
${task_name}         TarefaExemplo
${conclusion_btn}    xpath=//*[@resource-id="updateTask"]


*** Keywords ***
Create task
    sleep                       2
    Input Text                  ${insert_task}    ${task_name}
    Click Element               ${confirm_create}

Delete task
    sleep                               1
    Click Element                       ${delete_element}
    Wait Until Page Contains Element    ${confirm_delete} 
    Click Element                       ${confirm_delete} 

Conclusion task
    sleep                       1
    Click Element               ${conclusion_btn}

    