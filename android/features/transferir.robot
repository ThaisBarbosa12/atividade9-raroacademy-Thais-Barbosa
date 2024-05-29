*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve ser possível acessar a funcionalidade Transferir da conta
    Dado que o usuário acessou a tela inicial de sua conta
    Quando acessar a funcionalidade Transferir
    Então terá acesso a tela de informações da área Transferir da conta

CT002 - Deve ser possível visualizar o valor da transferencia
    Dado que o usuário acessou a tela da área Transferir da conta
    Então visualizará o valor preenchido no campo de inserir o valor para transferencia

CT003 - Deve ser possível preencher o campo de inserir o valor para transferencia
    Dado que o usuário acessou a tela da área Transferir da conta
    Quando preencher um valor no campo de inserir valor para transferencia
    Então visualizará o valor preenchido no campo inserir valor para transferencia

CT005 - Deve ser possível fechar a área Pagar com o botão X no canto superior esquerdo da tela
    Dado que o usuário acessou a tela da área Transferir da conta
    Quando acessar o botão X localizado no canto superior esquerdo da tela
    Então o usuário deverá ser redirecionado para tela inical

CT005 - Deve ser possível visualizar o botão QRCODE no canto superior direito da tela
    Dado que o usuário acessou a tela da área Transferir da conta
    Então deverá visualizar o botão QRCODE no canto superior direito da tela

CT006 - Deve ser possível vizualizar um elemento com a descirção scrim no topo da tela
    Dado que o usuário acessou a tela da área Transferir da conta
    Então o usuário deverá visualizar o elemento com a descrição scrim no topo da tela
