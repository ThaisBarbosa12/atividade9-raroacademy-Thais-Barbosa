*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown

*** Test Cases ***
CT004 - Deve ser possível acessar a funcionalidade Pagar da conta
    Dado que o usuário acessou a tela inicial do app
    Quando acessar a funcionalidade Pagar
    Então deverá ser direcionado para tela de pagamentos
    E deverá vizualizar opções para executar esta funcionalidade