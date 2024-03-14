*** Settings ***
Documentation       Camada de ações da funcionalidade de login

Library             Browser

*** Keywords ***
Submit Credentials
    [Arguments]    ${user}    ${pass}

    Fill Text    css=[name=user]    ${user}
    Fill Text    css=[name=pass]    ${pass}
    Click    css=button >> text=Entrar

Toast have text
    [Arguments]    ${target}

    ${selector}    Set Variable    div[role=status]

    Wait For Elements State    css=${selector}    visible    5
    Get Text                   css=${selector}    equal      ${target}

    Take Screenshot        selector=${selector}

 Modal have text
    [Arguments]    ${target}

    ${ele}    Set Variable    css=#swal2-title

    Wait For Elements State    ${ele}    visible    5
    Get Text                   ${ele}    equal      ${target}
