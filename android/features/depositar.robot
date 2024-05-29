*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve ser possível acessar a funcionalidade Depositar da conta
    Dado que o usuário acessou a tela inicial de sua conta
    Quando acessar a funcionalidade Depositar
    Então terá acesso a tela de informações da área Depositar da conta

CT002 - Deve ser possível visualizar a funcionalidade de depositar com Pix
    Dado que o usuário acessou a tela da área Depositar da conta
    Então visualizará a funcionalidade de depositar com Pix

CT003 - Deve ser possível visualizar a funcionalidade de depositar com Boleto
    Dado que o usuário acessou a tela da área Depositar da conta
    Então visualizará a funcionalidade de depositar com Boleto

CT004 - Deve ser possível visualizar a funcionalidade de depositar com TED/DOC
    Dado que o usuário acessou a tela da área Depositar da conta
    Então visualizará a funcionalidade de depositar com TED/DOC

CT005 - Deve ser possível visualizar a funcionalidade de Trazer seu salário via depósito
    Dado que o usuário acessou a tela da área Depositar da conta
    Então visualizará a funcionalidade de Trazer seu salário via depósito

CT006 - Deve ser possível fechar a tela de Depositar com o botão X no canto superior esquerdo da tela
    Dado que o usuário acessou a tela da área Depositar da conta
    Quando acessar o botão X localizado no canto superior esquerdo da tela
    Então o usuário deverá ser redirecionado para tela inical

CT007 - Deve ser possível vizualizar um elemento com a descirção scrim no topo da tela
    Dado que o usuário acessou a tela da área Depositar da conta
    Então o usuário deverá visualizar o elemento com a descrição scrim no topo da tela
