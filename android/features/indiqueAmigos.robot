*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Acessar a funcionalidade para indicar amigos
    Dado que o usuário acessou a tela inicial de sua conta
    Quando acessar a funcionalidade para indicar amigos no canto superior direito da tela
    Então terá acesso a tela de indicação de amigos

CT002 - Deve ser possível visualizar uma mensagem para Resgatar amigos
    Dado que o usuário acessou a tela de indicação de amigos
    Então visualizará uma mensagem para resgatar amigos na fila do banco

CT003 - Deve ser possível visualizar uma mensagem com informações sobre cada indicação feita
    Dado que o usuário acessou a tela de indicação de amigos
    Então visualizará uma mensagem informando que um amigo será salvo da burocracia após aceitar a indicação

CT004 - Deve ser possível visualizar um botão para indicar amigos
    Dado que o usuário acessou a tela de indicação de amigos
    Então visualizará uma botão com descrição: indicar amigos

CT005 - Deve ser possível fechar a tela de indição com o botão X no canto superior esquerdo da tela
    Dado que o usuário acessou a tela de indicação de amigos
    Quando acessar o botão X localizado no canto superior esquerdo da tela
    Então o usuário deverá ser redirecionado para tela inical

CT006 - Deve ser possível vizualizar um elemento com a descirção scrim no topo da tela
    Dado que o usuário acessou a tela de indicação de amigos
    Então o usuário deverá visualizar o elemento com a descrição scrim no topo da tela
