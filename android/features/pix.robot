*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT003 - Deve ser possível acessar a funcionalidade Pix da conta
    Dado que o usuário acessou a tela inicial do app
    Quando acessar a funcionalidade Pix
    Então deverá ser direcionado para tela da area pix
    E deverá vizualizar opções para executar esta funcionalidade
