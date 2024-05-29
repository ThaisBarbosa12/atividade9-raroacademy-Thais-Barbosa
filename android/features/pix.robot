*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve ser possível acessar a funcionalidade Pix da conta
    Dado que o usuário acessou a tela inicial de sua conta
    Quando acessar a funcionalidade Pix
    Então terá acesso a tela de informações da área pix da conta

CT002 - Deve ser possível visualizar a mensagem Minha área Pix
    Dado que o usuário acessou a tela da área pix da conta
    Então visualizará a mensagem informando que esta na área pix

CT003 - Deve ser possível visualizar a mensagem informando opções disponíveis nesta tela
    Dado que o usuário acessou a tela da área pix da conta
    Então visualizará a mensagem informando que esta tela é tudo que o usuário precisa

CT004 - Deve ser possível visualizar a funcionalidade Minhas chaves
    Dado que o usuário acessou a tela da área pix da conta
    Então visualizará a funcionalidade Minhas chaves

CT005 - Deve ser possível visualizar a funcionalidade Meu limite Pix
    Dado que o usuário acessou a tela da área pix da conta
    Então visualizará a funcionalidade Meu limite Pix

CT006 - Deve ser possível visualizar a funcionalidade Me ajuda
    Dado que o usuário acessou a tela da área pix da conta
    Então visualizará a funcionalidade Me ajuda

CT007 - Deve ser possível fechar a área pix com o botão X no canto superior esquerdo da tela
    Dado que o usuário acessou a tela da área pix da conta
    Quando acessar o botão X localizado no canto superior esquerdo da tela
    Então o usuário deverá ser redirecionado para tela inical

CT008 - Deve ser possível vizualizar um elemento com a descirção scrim no topo da tela
    Dado que o usuário acessou a tela da área pix da conta
    Então o usuário deverá visualizar o elemento com a descrição scrim no topo da tela
