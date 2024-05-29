*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve ser possível acessar a funcionalidade Pagar da conta
    Dado que o usuário acessou a tela inicial de sua conta
    Quando acessar a funcionalidade Pagar
    Então terá acesso a tela de informações da área Pagar da conta

CT002 - Deve ser possível visualizar a funcionalidade Pagar com Pix
    Dado que o usuário acessou a tela da área Pagar da conta
    Então visualizará a funcionalidade Pagar com Pix

CT003 - Deve ser possível visualizar a funcionalidade Pagar fatura do cartão
    Dado que o usuário acessou a tela da área Pagar da conta
    Então visualizará a funcionalidade Pagar fatura do cartão

CT004 - Deve ser possível visualizar a funcionalidade Pagar um boleto
    Dado que o usuário acessou a tela da área Pagar da conta
    Então visualizará a funcionalidade Pagar um boleto

CT005 - Deve ser possível fechar a área Pagar com o botão X no canto superior esquerdo da tela
    Dado que o usuário acessou a tela da área Pagar da conta
    Quando acessar o botão X localizado no canto superior esquerdo da tela
    Então o usuário deverá ser redirecionado para tela inical

CT006 - Deve ser possível vizualizar um elemento com a descirção scrim no topo da tela
    Dado que o usuário acessou a tela da área Pagar da conta
    Então o usuário deverá visualizar o elemento com a descrição scrim no topo da tela
