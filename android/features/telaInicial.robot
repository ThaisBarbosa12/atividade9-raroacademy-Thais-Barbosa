*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve vizualizar a mensagem "Olá, Breno Freitas" ao acessar a tela incial
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a mensagem Olá, Breno Freitas

CT002 - Deve ser possível vizualizar a funcionalidade conta com o saldo disponível
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade conta com o saldo disponível

CT003 - Deve ser possível visualizar a funcionalidade Meus Cartões
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Meus Cartões

CT004 - Deve ser possível visualizar a funcionalidade Cartão de Crédito
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Cartão de Crédito com os dados de limite disponível e fatura atual

CT005 - Deve ser possível visualizar a funcionalidade Empréstimo
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Empréstimo com o valor disponível

CT006 - Deve ser possível visualizar a funcionalidade Investimentos
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Investimentos com uma opção para conhecer sobre

CT007 - Deve ser possível visualizar a funcionalidade Seguro de vida
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Seguro de Vida

CT008 - Deve ser possível visualizar a funcionalidade Descubra mais
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Descubra mais

CT009 - Deve ser possível visualizar a funcionalidade WhatsApp
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade WhatsApp
    E uma opção de acesso para conhecer mais sobre a funcionalidade

CT010 - Deve ser possível visualizar o botão de acesso para funcionalidade Pix
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Pix

CT011 - Deve ser possível visualizar o botão de acesso para funcionalidade Pagar
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Pagar

CT012 - Deve ser possível visualizar o botão de acesso para funcionalidade Transferir
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Transferir

CT013 - Deve ser possível visualizar o botão de acesso para funcionalidade Depositar
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Depositar

CT014 - Deve ser possível visualizar o botão de acesso para funcionalidade Emprestimos
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Emprestimos

CT015 - Deve ser possível visualizar o botão de acesso para funcionalidade Recarga de Celular
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Recarga de Celular

CT016 - Deve ser possível visualizar o botão de acesso para funcionalidade Cobrar
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Cobrar

CT017 - Deve ser possível visualizar o botão de acesso para funcionalidade Doação
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Doação

CT018 - Deve ser possível visualizar o botão de acesso para funcionalidade Encontrar Atalhos
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Encontrar Atalhos

CT019 - Deve ser possível ocultar as informações de valores do saldo e fatura atual
    Dado que o usuário acessou a tela inicial de sua conta
    Quando clicar no botão para ocultar os valores do saldo e fatura atual
    Então o valor do saldo não deverá ser exibido no campo Conta
    E o valor da fatura atual também não deverá ser exibido no campo Fatura Atual

CT020 - Deve ser possível visualizar o botão de acesso ao perfi do usuário
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar o botão de acesso ao seu perfil

CT021 - Deve ser possível visualizar o botão para dúvidas sorbe a conta
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar o botão de acesso para dúvidas da conta

CT022 - Deve ser possível visualizar o botão para convidar amigos
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar o botão acesso a tela de convidar

CT023 - Deve ser possível visualizar o card com as informações de valor disponível para empréstimo
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar um card com as informações de valor disponível para empréstimo

CT024 - Deve ser possível visualizar um card com as opções para guardar dinheiro
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar um card com as opções para guardar dinheiro
