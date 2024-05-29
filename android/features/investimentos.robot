*** Settings ***
Resource            ../utils/config.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Test Cases ***
CT001 - Deve ser possível acessar a funcionalidade Investimentos
    Dado que o usuário acessou a tela inicial de sua conta
    Quando acessar a funcionalidade Investimentos
    Então terá acesso a tela de Investimentos

CT002 - Deve ser possível visualizar uma imagem na tela
    Dado que o usuário acessou a tela de Investimentos
    Então visualizará uma imagem na tela

CT003 - Deve ser possível visualizar uma mensagem para investir sem taxas e burocracia
    Dado que o usuário acessou a tela de Investimentos
    Então visualizará uma mensagem para investir sem taxas e burocracia

CT004 - Deve ser possível visualizar uma mensagem informando que o banco esta convidando clientes para investir
    Dado que o usuário acessou a tela de Investimentos
    Então visualizará uma mensagem informando que o banco esta convidando clientes para investir

CT005 - Deve ser possível visualizar uma mensagem informando que o cliente terá taxa zero na corretagem
    Dado que o usuário acessou a tela de Investimentos
    Então visualizará uma mensagem informando que o cliente terá taxa zero na corretagem

CT006 - Deve ser possível visualizar um botão para avançar página
    Dado que o usuário acessou a tela de Investimentos
    Então visualizará um botão para avançar página

CT007 - Deve ser possível retornar a tela incial com o botão < no canto superior esquerdo da tela
    Dado que o usuário acessou a tela de Investimentos
    Quando acessar o botão < localizado no canto superior esquerdo da tela
    Então o usuário deverá ser redirecionado para tela inical onde acessou a função investimentos
