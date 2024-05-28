*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve ser possível acessar a funcionalidade de informações de saldo e extrato da conta
    Dado que o usuário acessou a tela inicial de sua conta
    Quando acessar a funcionalidade Conta
    Então terá acesso a tela de informações de saldo e extrato da Conta
