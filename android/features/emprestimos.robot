*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve ser possível acessar a funcionalidade Empréstimos da conta
    Dado que o usuário acessou a tela inicial de sua conta
    Quando acessar a funcionalidade Empréstimos
    Então terá acesso a tela da área Empréstimos da conta

CT002 - Deve ser possível visualizar uma mensagem informando o valor de empréstimo disponível
    Dado que o usuário acessou a tela da área Empréstimos da conta
    Então visualizará a mensagem informando o valor de empréstimo disponível para sua conta

CT003 - Deve ser possível visualizar uma mensagem informando que o valor do empréstimo pode mudar
    Dado que o usuário acessou a tela da área Empréstimos da conta
    Então visualizará a mensagem informando que o valor do empréstimo pode mudar

CT004 - Deve ser possível visualizar um link com a mensagem Entenda como funciona
    Dado que o usuário acessou a tela da área Empréstimos da conta
    Então visualizará o link com a mensagem: Entenda como funciona

CT005 - Deve ser possível visualizar um botão de Novo Empréstimo
    Dado que o usuário acessou a tela da área Empréstimos da conta
    Então visualizará o botão de Novo Empréstimo

CT006 - Deve ser possível fechar a tela de Empréstimos com o botão X no canto superior esquerdo da tela
    Dado que o usuário acessou a tela da área Empréstimos da conta
    Quando acessar o botão X localizado no canto superior esquerdo da tela
    Então o usuário deverá ser redirecionado para tela inical

CT007 - Deve ser possível visualizar o botão de dúvidas no canto superior direito da tela
    Dado que o usuário acessou a tela da área Transferir da conta
    Então deverá visualizar o botão QRCODE no canto superior direito da tela
