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

CT005 - Deve ser possível visualizar e acessar a funcionalidade Empréstimo
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Empréstimo com o valor disponível
    E deverá ser possível acessar a funcionalidade empréstimos

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

CT010 - Deve ser possível visualizar e acessar a funcionalidade Indique seus amigos
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Indique seus amigos
    E um botão de acesso para ser direcionado a tela de indicar amigos

CT011 - Deve ser possível visualizar o botão de acesso para funcionalidade Pix
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Pix

CT012 - Deve ser possível visualizar o botão de acesso para funcionalidade Pagar
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Pagar

CT013 - Deve ser possível visualizar o botão de acesso para funcionalidade Transferir
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Transferir

CT014 - Deve ser possível visualizar o botão de acesso para funcionalidade Depositar
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Depositar

CT015 - Deve ser possível visualizar e acessar o botão de acesso para funcionalidade Emprestimos
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Emprestimos
    E deverá ser possível acessar a funcionalidade pelo botão empréstimos

CT016 - Deve ser possível visualizar o botão de acesso para funcionalidade Recarga de Celular
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Recarga de Celular

CT017 - Deve ser possível visualizar o botão de acesso para funcionalidade Cobrar
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Cobrar

CT018 - Deve ser possível visualizar o botão de acesso para funcionalidade Doação
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Doação

CT019 - Deve ser possível visualizar o botão de acesso para funcionalidade Encontrar Atalhos
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar a funcionalidade Encontrar Atalhos

CT020 - Deve ser possível ocultar as informações de valores do saldo e fatura atual
    Dado que o usuário acessou a tela inicial de sua conta
    Quando clicar no botão para ocultar os valores do saldo e fatura atual
    Então o valor do saldo não deverá ser exibido no campo Conta
    E o valor da fatura atual também não deverá ser exibido no campo Fatura Atual

CT021 - Deve ser possível visualizar o botão de acesso ao perfi do usuário
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar o botão de acesso ao seu perfil

CT022 - Deve ser possível visualizar o botão para dúvidas sorbe a conta
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar o botão de acesso para dúvidas da conta

CT023 - Deve ser possível visualizar o botão para convidar amigos
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar o botão acesso a tela de convidar

CT024 - Deve ser possível visualizar e acessar o card com as informações de valor disponível para empréstimo
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar um card com as informações de valor disponível para empréstimo
    E deverá ser possível acessar o card de empréstimos

CT025 - Deve ser possível visualizar um card com as opções para guardar dinheiro
    Dado que o usuário esta logado no app
    Quando acessar a tela inicial de sua conta
    Então deverá visualizar um card com as opções para guardar dinheiro
