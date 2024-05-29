*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve ser possível acessar a funcionalidade Recarregar celular
    Dado que o usuário acessou a tela inicial de sua conta
    Quando acessar a funcionalidade Recarga de celular
    Então terá acesso a tela de informações da área Recarga de celular

CT002 - Deve ser possível visualizar o campo de preenchimento do número do celular
    Dado que o usuário acessou a tela da área Recarregar de celular
    Então visualizará o campo de preenchimento do número do celular

CT003 - Deve ser possível preencher o campo de inserir o número do celular
    Dado que o usuário acessou a tela da área Recarregar de celular
    Quando preencher um número no campo de inserir número do celular
    Então visualizará o valor preenchido no campo inserir número para recarga

CT005 - Deve ser possível fechar a área Pagar com o botão X no canto superior esquerdo da tela
    Dado que o usuário acessou a tela da área Recarregar de celular
    Quando acessar o botão X localizado no canto superior esquerdo da tela
    Então o usuário deverá ser redirecionado para tela inical

CT006 - Deve ser possível vizualizar um elemento com a descirção scrim no topo da tela
    Dado que o usuário acessou a tela da área Recarregar de celular
    Então o usuário deverá visualizar o elemento com a descrição scrim no topo da tela
