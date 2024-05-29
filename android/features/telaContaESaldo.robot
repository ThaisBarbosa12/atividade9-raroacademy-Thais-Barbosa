*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve ser possível acessar a funcionalidade de informações de saldo e extrato da conta
    Dado que o usuário acessou a tela inicial de sua conta
    Quando acessar a funcionalidade Conta
    Então terá acesso a tela de informações de saldo e extrato da Conta

CT002 - Deve ser possível visualizar o valor do saldo disponível na conta
    Dado que o usuário acessou a tela de informações de saldo e extrato da Conta
    Então visualizará o valor do saldo disponível na conta

CT003 - Deve ser possível visualizar o valor do dinheiro guardado na conta
    Dado que o usuário acessou a tela de informações de saldo e extrato da Conta
    Então visualizará o valor do dinheiro guardado na conta

CT004 - Deve ser possível visualizar o rendimento total da conta
    Dado que o usuário acessou a tela de informações de saldo e extrato da Conta
    Então visualizará o rendimento total da conta

CT005 - Deve ser possível visualizar a funcionalidade historico e suas informações
    Dado que o usuário acessou a tela de informações de saldo e extrato da conta
    Quando visualizar a funcionalidade histórico da conta
    Então visualizará as informações das transações realizadas

CT006 - Deve ser possível visualizar o botão de acesso para funcionalidade Depositar
    Dado que o usuário acessou a tela de informações de saldo e extrato da Conta
    Então deverá visualizar o botão de acesso para funcionalidade Depositar

CT007 - Deve ser possível visualizar o botão de acesso para funcionalidade Pagar
    Dado que o usuário acessou a tela de informações de saldo e extrato da Conta
    Então deverá visualizar o botão de acesso para funcionalidade Pagar

CT008 - Deve ser possível visualizar o botão de acesso para funcionalidade Transferir
    Dado que o usuário acessou a tela de informações de saldo e extrato da Conta
    Então deverá visualizar o botão de acesso para funcionalidade Transferir

CT009 - Deve ser possível visualizar o botão de acesso para funcionalidade Empréstimos
    Dado que o usuário acessou a tela de informações de saldo e extrato da Conta
    Então deverá visualizar o botão de acesso para funcionalidade Empréstimos

CT010 - Deve ser possível visualizar o botão de acesso para funcionalidade Cobrar
    Dado que o usuário acessou a tela de informações de saldo e extrato da Conta
    Então deverá visualizar o botão de acesso para funcionalidade Cobrar

CT011 - Deve ser possível retornar a tela incial com o botão < no canto superior esquerdo da tela
    Dado que o usuário acessou a tela de informações de saldo e extrato da Conta
    Quando acessar o botão < localizado no canto superior esquerdo da tela
    Então o usuário deverá ser redirecionado para tela inical

CT012 - Deve ser possível visualizar o botão de dúvidas no canto superior direito da tela
    Dado que o usuário acessou a tela de informações de saldo e extrato da Conta
    Então deverá visualizar o botão de acesso para dúvidas da tela de saldo e extrato da Conta
