*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve ser possível acessar a funcionalidade Cobrar
    Dado que o usuário acessou a tela inicial de sua conta
    Quando acessar a funcionalidade Cobrar
    Então terá acesso a tela de informações da área Cobrar

CT002 - Deve ser possível visualizar a mensagem Qual valor voce quer receber? Não especificar um valor
    Dado que o usuário acessou a tela da área Cobrar
    Então visualizará a mensagem: Qual valor voce quer receber? Não especificar um valor

CT003 - Deve ser possível visualizar o campo de preenchimento do valor a ser cobrado
    Dado que o usuário acessou a tela da área Cobrar
    Então visualizará o campo de preenchimento do valor a ser cobrado

CT004 - Deve ser possível preencher o campo de inserir o valor a ser cobrado
    Dado que o usuário acessou a tela da área Cobrar
    Quando preencher um valor no campo de valor a ser cobrado
    Então visualizará o valor preenchido no campo de inserir valor a ser cobrado

CT005 - Deve ser possível fechar a área Pagar com o botão X no canto superior esquerdo da tela
    Dado que o usuário acessou a tela da área Cobrar
    Quando acessar o botão X localizado no canto superior esquerdo da tela
    Então o usuário deverá ser redirecionado para tela inical

CT006 - Deve ser possível vizualizar um elemento com a descirção scrim no topo da tela
    Dado que o usuário acessou a tela da área Cobrar
    Então o usuário deverá visualizar o elemento com a descrição scrim no topo da tela
