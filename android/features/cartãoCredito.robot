*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve ser possível acessar a funcionalidade Cartão de Crédito
    Dado que o usuário acessou a tela inicial de sua conta
    Quando acessar a funcionalidade Cartão de Crédito
    Então terá acesso a tela Cartão de Crédito

CT002 - Deve ser possível visualizar o valor da fatura atual
    Dado que o usuário acessou a tela Cartão de Crédito
    Então visualizará o valor da fatura atual

CT003 - Deve ser possível visualizar o valor de limite disponível
    Dado que o usuário acessou a tela Cartão de Crédito
    Então visualizará o valor de limite disponível

CT004 - Deve ser possível visualizar o botão de acesso para funcionalidade Pagar fatura
    Dado que o usuário acessou a tela Cartão de Crédito
    Então visualizará o botão de acesso para funcionalidade Pagar fatura

CT005 - Deve ser possível visualizar o botão de acesso para funcionalidade Resumo de faturas
    Dado que o usuário acessou a tela Cartão de Crédito
    Então visualizará o botão de acesso para funcionalidade Resumo de faturas

CT006 - Deve ser possível visualizar o botão de acesso para funcionalidade Ajustar limites
    Dado que o usuário acessou a tela Cartão de Crédito
    Então visualizará o botão de acesso para funcionalidade Ajustar limites

CT007 - Deve ser possível visualizar o botão de acesso para funcionalidade Cartão virtual
    Dado que o usuário acessou a tela Cartão de Crédito
    Então visualizará o botão de acesso para funcionalidade Cartão virtual

CT008 - Deve ser possível visualizar o botão de acesso para funcionalidade Bloquear cartão
    Dado que o usuário acessou a tela Cartão de Crédito
    Então visualizará o botão de acesso para funcionalidade Bloquear cartão

CT009 - Deve ser possível visualizar o botão de acesso para funcionalidade Indicar amigos
    Dado que o usuário acessou a tela Cartão de Crédito
    Então visualizará o botão de acesso para funcionalidade Indicar amigos

CT010 - Deve ser possível visualizar o historico da fatura e suas informações
    Dado que o usuário acessou a tela Cartão de Crédito
    Então visualizará o historico da fatura e suas informações

CT011 - Deve ser possível retornar a tela incial com o botão < no canto superior esquerdo da tela
    Dado que o usuário acessou a tela Cartão de Crédito
    Quando acessar o botão < localizado no canto superior esquerdo da tela
    Então o usuário deverá ser redirecionado para tela inical onde acessou a função cartão de crédito

CT012 - Deve ser possível visualizar o botão de busca no canto superior direito da tela
    Dado que o usuário acessou a tela Cartão de Crédito
    Então deverá visualizar o botão de acesso para busca no canto superior direito da tela

CT013 - Deve ser possível visualizar o botão de dúvidas no canto superior direito da tela
    Dado que o usuário acessou a tela Cartão de Crédito
    Então deverá visualizar o botão de acesso para dúvidas sobre Cartão de Crédito
