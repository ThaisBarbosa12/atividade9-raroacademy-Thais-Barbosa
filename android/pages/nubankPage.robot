*** Settings ***
Resource    ../../base.robot


*** Variables ***
${BOTÃO_PERFIL}                 xpath=//android.widget.ScrollView/android.view.View[1]
${BOTAO_OCULTAR_SALDO}          xpath=//android.widget.ScrollView/android.widget.Button[1]
${BOTÃO__DÚVIDAS}               xpath=//android.widget.ScrollView/android.widget.Button[2]
${BOTÃO_CONVITE}                xpath=//android.widget.ScrollView/android.widget.Button[3]
${MENSAGEM_OLÁ}                 xpath=//android.view.View[contains(@content-desc,"Olá, Breno Freitas")]
${CONTA_E_SALDO}                xpath=//android.view.View[contains(@content-desc,"Conta")]
${CARROSSEL_1}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${CARROSSEL_2}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${CARROSSEL_3}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${CARROSSEL_4}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BOTÃO_PIX}                    xpath=//android.view.View[@content-desc="Pix"]
${BOTÃO_PAGAR}                  xpath=//android.view.View[@content-desc="Pagar"]
${BOTÃO_TRANSFERIR}             xpath=//android.view.View[@content-desc="Transferir"]
${BOTÃO_DEPOSITAR}              xpath=//android.view.View[@content-desc="Depositar"]
${BOTÃO_EMPRÉSTIMOS}            xpath=//android.view.View[@content-desc="Empréstimos"]
${BOTÃO_RECARGA}                xpath=//android.view.View[contains(@content-desc,"Recarga")]
${BOTÃO_COBRAR}                 xpath=//android.view.View[@content-desc="Cobrar"]
${BOTÃO_DOAÇÃO}                 xpath=//android.view.View[@content-desc="Doação"]
${BOTÃO_ATALHOS}                xpath=//android.view.View[contains(@content-desc,"Encontrar atalhos")]
${BOTÃO_DICA}                   xpath=//android.view.View[contains(@content-desc,"Dica")]
${CARD_MEUS_CARTÕES}            xpath=//android.view.View[@content-desc="Meus cartões"]
${CARD_EMPRÉSTIMO_DISP}         xpath=//android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${CARD_GUARDAR_DINHEIRO}        xpath=//android.view.View[@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]
${FUNÇÃO_CARTÃO_CRÉDITO}        xpath=//android.view.View[contains(@content-desc,"Cartão de Crédito")]
${FUNÇÃO_EMPRÉSTIMO}            xpath=//android.view.View[contains(@content-desc,"Empréstimo")]
${FUNÇÃO_INVESTIMENTOS}         xpath=//android.view.View[contains(@content-desc,"Investimentos")]
${FUNÇÃO_SEGURO_VIDA}           xpath=//android.view.View[contains(@content-desc,"Seguro de vida")]
${BOTÃO_INVEST_CONHECER}        xpath=//android.view.View[@content-desc="Conhecer"]
${FUNÇÃO_DESCUBRA_MAIS}         xpath=//android.view.View[@content-desc="Descubra mais"]
${FUNÇÃO_WHATSAPP}              xpath=//android.view.View[contains(@content-desc,"WhatsApp")]
${BOTÃO_QUERO_CONHECER}         xpath=//android.view.View[@content-desc="Quero conhecer"]
${MENSGAEM_RESGATE_AMIGOS}      xpath=//android.widget.ImageView[contains(@content-desc,"Resgate seus amigos da fila do banco")]
${BTN_INDICAR}                  xpath=//android.widget.Button[@content-desc="INDICAR AMIGOS"]
${BTN_X_INDICAR}                xpath=//android.widget.Button[1]
${SCRIM_INDICAR}                xpath=//android.view.View[@content-desc="Scrim"]
${SALDO_DISPONÍVEL}             xpath=//android.view.View[@content-desc="Saldo disponível"]
${BTN_SAIR_EXTRATO}             xpath=//android.widget.Button[1]
${BTN_DUVIDAS_EXTRATO}          xpath=//android.widget.Button[2]
${SALDO_EXTRATO}                xpath=//android.view.View[@content-desc="R$ 181,79"]
${DINHEIRO_GUARDADO}            xpath=//android.view.View[contains(@content-desc,"Dinheiro guardado")]


*** Keywords ***
Dado que o usuário esta logado no app
    Wait Until Element Is Visible    ${CONTA_E_SALDO}

Dado que o usuário acessou a tela inicial de sua conta
    Element Should Be Visible    ${MENSAGEM_OLÁ}
    Page Should Contain Element    ${MENSAGEM_OLÁ}

Dado que o usuário acessou a tela de indicação de amigos
    Click Element    ${BOTÃO_CONVITE}

Quando acessar a tela inicial de sua conta
    Element Should Be Visible    ${MENSAGEM_OLÁ}
    Page Should Contain Element    ${MENSAGEM_OLÁ}

Quando clicar no botão para ocultar os valores do saldo e fatura atual
    Click Element    ${BOTAO_OCULTAR_SALDO}

Quando acessar a funcionalidade Conta
    Click Element    ${CONTA_E_SALDO}

Quando acessar a funcionalidade para indicar amigos no canto superior direito da tela
    Click Element    ${BOTÃO_CONVITE}

Quando acessar o botão X localizado no canto superior esquerdo da tela
    Click Element    ${BTN_X_INDICAR}

Então deverá visualizar a mensagem Olá, Breno Freitas
    Page Should Contain Text    "Olá, Breno Freitas"

Então deverá visualizar a funcionalidade conta com o saldo disponível
    Element Should Be Visible    ${CONTA_E_SALDO}
    Page Should Contain Element    ${CONTA_E_SALDO}
    Verifica se o contentDesc contains text    ${CONTA_E_SALDO}    Conta
    Verifica se o contentDesc contains text    ${CONTA_E_SALDO}    R$ 181,79

Então deverá visualizar a funcionalidade Meus Cartões
    Element Should Be Visible    ${CARD_MEUS_CARTÕES}
    Page Should Contain Element    ${CARD_MEUS_CARTÕES}
    Wait Until Page Contains    "Meus cartões"

Então deverá visualizar a funcionalidade Cartão de Crédito com os dados de limite disponível e fatura atual
    Swipe By Percent    50    50    50    10
    Wait Until Element Is Visible    ${FUNÇÃO_CARTÃO_CRÉDITO}
    Page Should Contain Element    ${FUNÇÃO_CARTÃO_CRÉDITO}
    Verifica se o contentDesc contains text    ${FUNÇÃO_CARTÃO_CRÉDITO}    Cartão de Crédito
    Verifica se o contentDesc contains text    ${FUNÇÃO_CARTÃO_CRÉDITO}    Fatura atual
    Verifica se o contentDesc contains text    ${FUNÇÃO_CARTÃO_CRÉDITO}    R$ 780,72
    Verifica se o contentDesc contains text    ${FUNÇÃO_CARTÃO_CRÉDITO}    Limite disponível R$ 806,78

Então deverá visualizar a funcionalidade Empréstimo com o valor disponível
    Swipe By Percent    50    50    50    10
    Wait Until Element Is Visible    ${FUNÇÃO_EMPRÉSTIMO}
    Page Should Contain Element    ${FUNÇÃO_EMPRÉSTIMO}
    Verifica se o contentDesc contains text    ${FUNÇÃO_EMPRÉSTIMO}    Empréstimo
    Verifica se o contentDesc contains text    ${FUNÇÃO_EMPRÉSTIMO}    Valor disponível de até
    Verifica se o contentDesc contains text    ${FUNÇÃO_EMPRÉSTIMO}    R$ 10.000,00

Então deverá visualizar a funcionalidade Investimentos com uma opção para conhecer sobre
    Swipe By Percent    50    70    50    10
    Wait Until Element Is Visible    ${FUNÇÃO_INVESTIMENTOS}
    Page Should Contain Element    ${FUNÇÃO_INVESTIMENTOS}
    Verifica se o contentDesc contains text    ${FUNÇÃO_INVESTIMENTOS}    Investimentos
    Verifica se o contentDesc contains text    ${FUNÇÃO_INVESTIMENTOS}    A revolução roxa começou
    Verifica se o contentDesc contains text
    ...    ${FUNÇÃO_INVESTIMENTOS}
    ...    Invista de maneira simples, sem burocracia e 100% digital
    Element Should Be Visible    ${BOTÃO_INVEST_CONHECER}
    Page Should Contain Element    ${BOTÃO_INVEST_CONHECER}
    Verifica se o contentDesc contains text    ${BOTÃO_INVEST_CONHECER}    Conhecer

Então deverá visualizar a funcionalidade Seguro de Vida
    Swipe By Percent    50    90    50    10
    Wait Until Element Is Visible    ${FUNÇÃO_SEGURO_VIDA}
    Page Should Contain Element    ${FUNÇÃO_SEGURO_VIDA}
    Verifica se o contentDesc contains text    ${FUNÇÃO_SEGURO_VIDA}    Seguro de vida
    Verifica se o contentDesc contains text
    ...    ${FUNÇÃO_SEGURO_VIDA}
    ...    Conheça Nubank Vida: um seguro simples e que cabe no bolso

Então deverá visualizar a funcionalidade Descubra mais
    Swipe By Percent    50    90    50    5
    Wait Until Element Is Visible    ${FUNÇÃO_DESCUBRA_MAIS}
    Page Should Contain Element    ${FUNÇÃO_DESCUBRA_MAIS}
    Verifica se o contentDesc contains text    ${FUNÇÃO_DESCUBRA_MAIS}    Descubra mais

Então deverá visualizar a funcionalidade WhatsApp
    Swipe By Percent    50    90    50    0
    Wait Until Element Is Visible    ${FUNÇÃO_WHATSAPP}
    Page Should Contain Element    ${FUNÇÃO_WHATSAPP}
    Verifica se o contentDesc contains text    ${FUNÇÃO_WHATSAPP}    Novo
    Verifica se o contentDesc contains text    ${FUNÇÃO_WHATSAPP}    Pagamentos seguros, rápidos e sem tarifa
    Verifica se o contentDesc contains text    ${FUNÇÃO_WHATSAPP}    A experiência Nubank sem nem sair da conversa

E uma opção de acesso para conhecer mais sobre a funcionalidade
    Swipe By Percent    50    40    50    10
    Wait Until Element Is Visible    ${BOTÃO_QUERO_CONHECER}
    Page Should Contain Element    ${BOTÃO_QUERO_CONHECER}
    Verifica se o contentDesc contains text    ${BOTÃO_QUERO_CONHECER}    Quero conhecer

Então deverá visualizar a funcionalidade Pix
    Element Should Be Visible    ${CARROSSEL_1}
    Page Should Contain Element    ${CARROSSEL_1}
    Element Should Be Visible    ${BOTÃO_PIX}
    Verifica se o contentDesc contains text    ${BOTÃO_PIX}    Pix

Então deverá visualizar a funcionalidade Pagar
    Element Should Be Visible    ${CARROSSEL_2}
    Page Should Contain Element    ${CARROSSEL_2}
    Element Should Be Visible    ${BOTÃO_PAGAR}
    Verifica se o contentDesc contains text    ${BOTÃO_PAGAR}    Pagar

Então deverá visualizar a funcionalidade Transferir
    Element Should Be Visible    ${CARROSSEL_3}
    Page Should Contain Element    ${CARROSSEL_3}
    Element Should Be Visible    ${BOTÃO_TRANSFERIR}
    Verifica se o contentDesc contains text    ${BOTÃO_TRANSFERIR}    Transferir

Então deverá visualizar a funcionalidade Depositar
    Element Should Be Visible    ${CARROSSEL_4}
    Page Should Contain Element    ${CARROSSEL_4}
    Element Should Be Visible    ${BOTÃO_DEPOSITAR}
    Verifica se o contentDesc contains text    ${BOTÃO_DEPOSITAR}    Depositar

Então deverá visualizar a funcionalidade Emprestimos
    Swipe By Percent    85    50    15    50
    Wait Until Page Contains Element    ${CARROSSEL_1}
    Element Should Be Visible    ${CARROSSEL_1}
    Element Should Be Visible    ${BOTÃO_EMPRÉSTIMOS}
    Verifica se o contentDesc contains text    ${BOTÃO_EMPRÉSTIMOS}    Empréstimos

Então deverá visualizar a funcionalidade Recarga de Celular
    Swipe By Percent    85    50    15    50
    Wait Until Page Contains Element    ${CARROSSEL_2}
    Element Should Be Visible    ${CARROSSEL_2}
    Element Should Be Visible    ${BOTÃO_RECARGA}
    Verifica se o contentDesc contains text    ${BOTÃO_RECARGA}    Recarga de celular

Então deverá visualizar a funcionalidade Cobrar
    Swipe By Percent    85    50    15    50
    Wait Until Page Contains Element    ${CARROSSEL_3}
    Element Should Be Visible    ${CARROSSEL_3}
    Element Should Be Visible    ${BOTÃO_COBRAR}
    Verifica se o contentDesc contains text    ${BOTÃO_COBRAR}    Cobrar

Então deverá visualizar a funcionalidade Doação
    Swipe By Percent    85    50    15    50
    Wait Until Page Contains Element    ${CARROSSEL_4}
    Element Should Be Visible    ${CARROSSEL_4}
    Element Should Be Visible    ${BOTÃO_DOAÇÃO}
    Verifica se o contentDesc contains text    ${BOTÃO_DOAÇÃO}    Doação

Então deverá visualizar a funcionalidade Encontrar Atalhos
    Swipe By Percent    85    50    15    50
    Swipe By Percent    80    50    20    50
    Wait Until Page Contains Element    ${CARROSSEL_4}
    Element Should Be Visible    ${CARROSSEL_4}
    Page Should Contain Element    ${BOTÃO_DICA}
    Element Should Be Visible    ${BOTÃO_DICA}
    Verifica se o contentDesc contains text    ${BOTÃO_ATALHOS}    Encontrar atalhos
    Element Should Be Visible    ${BOTÃO_ATALHOS}

Então o valor do saldo não deverá ser exibido no campo Conta
    Verifica se o contentDesc não contains text    ${CONTA_E_SALDO}    R$ 181,79

E o valor da fatura atual também não deverá ser exibido no campo Fatura Atual
    Verifica se o contentDesc não contains text    ${FUNÇÃO_CARTÃO_CRÉDITO}    R$ 780,72

Então deverá visualizar o botão de acesso ao seu perfil
    Page Should Contain Element    ${BOTÃO_PERFIL}
    Element Should Be Visible    ${BOTÃO_PERFIL}

Então deverá visualizar o botão de acesso para dúvidas da conta
    Page Should Contain Element    ${BOTÃO__DÚVIDAS}
    Element Should Be Visible    ${BOTÃO__DÚVIDAS}

Então deverá visualizar o botão acesso a tela de convidar
    Page Should Contain Element    ${BOTÃO_CONVITE}
    Element Should Be Visible    ${BOTÃO_CONVITE}

Então deverá visualizar um card com as informações de valor disponível para empréstimo
    Element Should Be Visible    ${CARD_EMPRÉSTIMO_DISP}
    Page Should Contain Element    ${CARD_EMPRÉSTIMO_DISP}
    Verifica se o contentDesc contains text    ${CARD_EMPRÉSTIMO_DISP}    Você tem R$ 10.000,00
    Verifica se o contentDesc contains text    ${CARD_EMPRÉSTIMO_DISP}    disponíveis para empréstimo

Então deverá visualizar um card com as opções para guardar dinheiro
    Swipe By Percent    80    80    20    80
    Wait Until Element Is Visible    ${CARD_GUARDAR_DINHEIRO}
    Page Should Contain Element    ${CARD_GUARDAR_DINHEIRO}
    Verifica se o contentDesc contains text
    ...    ${CARD_GUARDAR_DINHEIRO}
    ...    Conquiste planos futuros: conheça as opções para guardar dinheiro.

Então terá acesso a tela de indicação de amigos
    Wait Until Element Is Visible    ${MENSGAEM_RESGATE_AMIGOS}

Então visualizará uma mensagem para resgatar amigos na fila do banco
    Element Should Be Visible    ${MENSGAEM_RESGATE_AMIGOS}
    Verifica se o contentDesc contains text    ${MENSGAEM_RESGATE_AMIGOS}    Resgate seus amigos da fila do banco

Então visualizará uma mensagem informando que um amigo será salvo da burocracia após aceitar a indicação
    Element Should Be Visible    ${MENSGAEM_RESGATE_AMIGOS}
    Verifica se o contentDesc contains text
    ...    ${MENSGAEM_RESGATE_AMIGOS}
    ...    Para cada indicação aceita, um amigo salvo da burocracia

Então visualizará uma botão com descrição: indicar amigos
    Element Should Be Visible    ${BTN_INDICAR}
    Verifica se o contentDesc contains text    ${BTN_INDICAR}    INDICAR AMIGOS
    Click Element    ${BTN_INDICAR}

Então o usuário deverá ser redirecionado para tela inical
    Element Should Be Visible    ${MENSAGEM_OLÁ}
    Page Should Contain Element    ${MENSAGEM_OLÁ}

Então o usuário deverá visualizar o elemento com a descrição scrim no topo da tela
    Element Should Be Visible    ${SCRIM_INDICAR}
    Page Should Contain Element    ${SCRIM_INDICAR}

Então terá acesso a tela de informações de saldo e extrato da Conta
    Element Should Be Visible    ${SALDO_DISPONÍVEL}
    Page Should Contain Element    ${SALDO_DISPONÍVEL}
