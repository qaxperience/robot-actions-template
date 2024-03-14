*** Settings ***
Documentation       Suíte de testes de login

Resource            ../resources/base.resource

Test Setup          Start Browser
Test Teardown       Finish Browser

*** Test Cases ***
Senha incorreta
    Submit credentials         qa    123456
    Toast have text    Oops! Credenciais inválidas :(

Usuário não cadastrado
    Submit credentials         teste123    123456
    Toast have text    Oops! Credenciais inválidas :(

Usuário deve ser obrigatório
    Submit credentials         ${EMPTY}    123456
    Toast have text    Informe o seu nome de usuário!

Senha deve ser obrigatória
    Submit credentials         teste123    ${EMPTY}
    Toast have text    Informe a sua senha secreta!

Login com sucesso
    [Tags]    smoke

    Submit credentials      qa    xperience
    Modal have text         Tudo certo!
