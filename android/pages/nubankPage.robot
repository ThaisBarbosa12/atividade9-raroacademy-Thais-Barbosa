*** Settings ***
Resource    ../../base.robot
Library     XML


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
${BTN_TOPO_ESQ}                 xpath=//android.widget.Button[1]
${SCRIM_INDICAR}                xpath=//android.view.View[@content-desc="Scrim"]
${SALDO_DISPONÍVEL}             xpath=//android.view.View[@content-desc="Saldo disponível"]
${VALOR_SALDO_DISP}             xpath=//android.view.View[@content-desc="R$ 181,79"]
${BTN_TOPO_DIR}                 xpath=//android.widget.Button[2]
${SALDO_EXTRATO}                xpath=//android.view.View[@content-desc="R$ 181,79"]
${DINHEIRO_GUARDADO}            xpath=//android.view.View[contains(@content-desc,"Dinheiro guardado")]
${RENDIMENTO_CONTA}             xpath=//android.view.View[contains(@content-desc,"Rendimento total da conta")]
${CARROSSEL_EXT_1}              xpath=//android.widget.HorizontalScrollView/android.widget.Button[1]
${CARROSSEL_EXT_2}              xpath=//android.widget.HorizontalScrollView/android.widget.Button[2]
${CARROSSEL_EXT_3}              xpath=//android.widget.HorizontalScrollView/android.widget.Button[3]
${CARROSSEL_EXT_4}              xpath=//android.widget.HorizontalScrollView/android.widget.Button[4]
${BTN_EXT_DEPOSITAR}            xpath=//android.view.View[@content-desc="Depositar"]
${BTN_EXT_PAGAR}                xpath=//android.view.View[@content-desc="Pagar"]
${BTN_EXT_TRANSFERIR}           xpath=//android.view.View[@content-desc="Transferir"]
${BTN_EXT_EMPRÉSTIMOS}          xpath=//android.view.View[@content-desc="Empréstimos"]
${BTN_EXT_COBRAR}               xpath=//android.view.View[@content-desc="Cobrar"]
${HISTÓRICO}                    xpath=//android.view.View[@content-desc="Histórico"]
${TRANSF_PATRICIA}              xpath=//android.view.View[contains(@content-desc,"PATRICIA COSTA")]
${TRANSF_JEY}                   xpath=//android.view.View[contains(@content-desc,"ANDRE JEY")]
${TRANSF_ERIKO}                 xpath=//android.view.View[contains(@content-desc,"ERIKO BARBOSA")]
${TRANSF_IVAN}                  xpath=//android.view.View[contains(@content-desc,"IVAN COELHO")]
${ÁREA_PIX}                     xpath=//android.widget.ImageView[contains(@content-desc,"Minha área Pix")]
${MINHAS_CHAVES}                xpath=//android.view.View[@content-desc="Minhas chaves"]
${MEU_LIMITE_PIX}               xpath=//android.view.View[@content-desc="Meu limite Pix"]
${ME_AJUDA_PIX}                 xpath=//android.view.View[@content-desc="Me ajuda"]
${SCRIM_PIX}                    xpath=//android.view.View[@content-desc="Scrim"]
${PAGAR_C_PIX}                  xpath=//android.view.View[contains(@content-desc,"Pagar com Pix")]
${PAGAR_FAT_CARTÃO}             xpath=//android.view.View[contains(@content-desc,"Pagar fatura do cartão")]
${PAGAR_BOLETO}                 xpath=//android.view.View[contains(@content-desc,"Pagar um boleto")]
${TRANSFERIR}                   xpath=//android.widget.EditText
${MSG_TRANSFERIR}               xpath=//android.widget
${COMO_DEPOSITAR}               xpath=//android.view.View[contains(@content-desc,"Como você quer depositar")]
${DEPOSITAR_PIX}                xpath=//android.view.View[contains(@content-desc,"Pix")]
${DEPOSITAR_BOLETO}             xpath=//android.view.View[contains(@content-desc,"Boleto")]
${DEPOSITAR_TED}                xpath=//android.view.View[contains(@content-desc,"TED/DOC")]
${DEPOSITAR_SALÁRIO}            xpath=//android.view.View[contains(@content-desc,"Trazer seu salário")]
${EMPRÉSTIMOS_TELA}             xpath=//android.view.View[@content-desc="O valor disponível no momento é de R$ 10.000,00"]
${VALOR_PODE_MUDAR}             xpath=//android.view.View[contains(@content-desc,"Este valor pode mudar")]
${ENTENDA_COMO_FUNCIONA}        xpath=//android.view.View[@content-desc="Entenda como funciona >"]
${NOVO_EMPRÉSTIMO}              xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]
${NÃO_POSSUI_EMPREST}           xpath=//android.view.View[@content-desc="Você não possui nenhum empréstimo ativo."]
${TELA_TODA}                    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View
${INPUT_RECARGA}                xpath=//android.widget.EditText
${INPUT_COBRAR}                 xpath=//android.widget.EditText
${MSG_FATURA_ATUAL}             xpath=//android.view.View[@content-desc="Fatura atual"]
${MSG_VALOR_FATURA}             xpath=//android.view.View[@content-desc="R$ 780,72"]
${MSG_LIMITE_DISP}              xpath=//android.view.View[@content-desc="Limite disponível R$ 806,78"]
${TELA_CARTÃO_CRÉDITO}          xpath=new UiSelector().className("android.widget.ScrollView")
${CARROSEL_CRÉDITO}             xpath=//android.widget.HorizontalScrollView
${BTN_PAGAR_FATURA}             xpath=//android.view.View[@content-desc="Pagar fatura"]
${BTN_RESUMO_FATURA}            xpath=//android.view.View[@content-desc="Resumo de faturas"]
${BTN_AJUSTAR_LIMITES}          xpath=//android.view.View[@content-desc="Ajustar limites"]
${BTN_CARTÃO_VIRTUAL}           xpath=//android.view.View[@content-desc="Cartão virtual"]
${BTN_BLOQUEAR_CARTÃO}          xpath=//android.view.View[@content-desc="Bloquear cartão"]
${BTN_INDICAR_AMIGOS}           xpath=//android.view.View[@content-desc="Indicar amigos"]
${PGTO_RECEBIDO}                xpath=//android.view.View[contains(@content-desc,"Pagamento recebido")]
${PGTO_SUPERMERCADO}            xpath=//android.view.View[contains(@content-desc,"Supermercado")]
${PGTO_BRENO}                   xpath=//android.view.View[contains(@content-desc,"Transferência enviada")]
${BTN_DÚVIDAS}                  xpath=//android.widget.Button[3]
${IMAGEM_INVISTA}               xpath=//android.widget.ImageView
${TÍTULO_INVISTA}               xpath=//android.view.View[contains(@content-desc,"Invista sem taxas e burocracia!")]
${MSG_INVISTA_1}                xpath=//android.view.View[contains(@content-desc,"Estamos convidando alguns clientes do Nubank")]
${MSG_INVISTA_2}                xpath=//android.view.View[contains(@content-desc,"Além de não pagar nada para abrir a conta")]
${BTN_SETA_INVISTA}             xpath=//android.widget.Button


*** Keywords ***
Dado que o usuário esta logado no app
    Wait Until Element Is Visible    ${CONTA_E_SALDO}

Dado que o usuário acessou a tela inicial de sua conta
    Element Should Be Visible    ${MENSAGEM_OLÁ}
    Page Should Contain Element    ${MENSAGEM_OLÁ}

Dado que o usuário acessou a tela de indicação de amigos
    Click Element    ${BOTÃO_CONVITE}

Dado que o usuário acessou a tela de informações de saldo e extrato da Conta
    Click Element    ${CONTA_E_SALDO}

Dado que o usuário acessou a tela da área pix da conta
    Click Element    ${CARROSSEL_1}

Dado que o usuário acessou a tela da área Pagar da conta
    Click Element    ${CARROSSEL_2}

Dado que o usuário acessou a tela da área Transferir da conta
    Click Element    ${CARROSSEL_3}

Dado que o usuário acessou a tela da área Depositar da conta
    Click Element    ${CARROSSEL_4}

Dado que o usuário acessou a tela da área Empréstimos da conta
    Swipe By Percent    85    50    10    50
    Wait Until Page Contains Element    ${CARROSSEL_1}
    Click Element    ${CARROSSEL_1}

Dado que o usuário acessou a tela da área Recarregar de celular
    Swipe By Percent    85    50    15    50
    Wait Until Page Contains Element    ${CARROSSEL_3}
    Click Element    ${CARROSSEL_3}

Dado que o usuário acessou a tela da área Cobrar
    Swipe By Percent    85    50    15    50
    Wait Until Page Contains Element    ${CARROSSEL_4}
    Click Element    ${CARROSSEL_4}

Dado que o usuário acessou a tela Cartão de Crédito
    Swipe By Percent    50    50    50    10
    Wait Until Element Is Visible    ${FUNÇÃO_CARTÃO_CRÉDITO}
    Click Element    ${FUNÇÃO_CARTÃO_CRÉDITO}

Dado que o usuário acessou a tela de Investimentos
    Swipe By Percent    50    70    50    10
    Wait Until Element Is Visible    ${FUNÇÃO_INVESTIMENTOS}
    Click Element    ${FUNÇÃO_INVESTIMENTOS}

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
    Click Element    ${BTN_TOPO_ESQ}

Quando visualizar a funcionalidade histórico da conta
    Wait Until Element Is Visible    ${HISTÓRICO}

Quando acessar o botão < localizado no canto superior esquerdo da tela
    Click Element    ${BTN_TOPO_ESQ}

Quando acessar a funcionalidade Pix
    Click Element    ${CARROSSEL_1}

Quando acessar a funcionalidade Pagar
    Click Element    ${CARROSSEL_2}

Quando acessar a funcionalidade Transferir
    Click Element    ${CARROSSEL_3}

Quando acessar a funcionalidade Empréstimos
    Swipe By Percent    85    50    10    50
    Wait Until Page Contains Element    ${CARROSSEL_1}
    Click Element    ${CARROSSEL_1}

Quando acessar a funcionalidade Recarga de celular
    Swipe By Percent    85    50    15    50
    Wait Until Page Contains Element    ${CARROSSEL_3}
    Click Element    ${CARROSSEL_3}

Quando acessar a funcionalidade Cobrar
    Swipe By Percent    85    50    15    50
    Wait Until Page Contains Element    ${CARROSSEL_4}
    Click Element    ${CARROSSEL_4}

Quando preencher um valor no campo de inserir valor para transferencia
    Wait Until Element Is Visible    ${TRANSFERIR}
    Input Text    ${TRANSFERIR}    256,98

Quando acessar a funcionalidade Depositar
    Click Element    ${CARROSSEL_4}

Quando preencher um número no campo de inserir número do celular
    Wait Until Element Is Visible    ${INPUT_RECARGA}
    Input Text    ${INPUT_RECARGA}    11941170887

Quando preencher um valor no campo de valor a ser cobrado
    Wait Until Element Is Visible    ${INPUT_COBRAR}
    Input Text    ${INPUT_COBRAR}    986,50

Quando acessar a funcionalidade Cartão de Crédito
    Swipe By Percent    50    50    50    10
    Wait Until Element Is Visible    ${FUNÇÃO_CARTÃO_CRÉDITO}
    Click Element    ${FUNÇÃO_CARTÃO_CRÉDITO}

Quando acessar a funcionalidade Investimentos
    Swipe By Percent    50    70    50    10
    Wait Until Element Is Visible    ${FUNÇÃO_INVESTIMENTOS}
    Click Element    ${FUNÇÃO_INVESTIMENTOS}

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

Então visualizará um botão com descrição: indicar amigos
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

Então visualizará o valor do saldo disponível na conta
    Element Should Be Visible    ${SALDO_DISPONÍVEL}
    Page Should Contain Element    ${SALDO_DISPONÍVEL}
    Verifica se o contentDesc contains text    ${SALDO_DISPONÍVEL}    Saldo disponível
    Element Should Be Visible    ${VALOR_SALDO_DISP}
    Page Should Contain Element    ${VALOR_SALDO_DISP}
    Verifica se o contentDesc contains text    ${VALOR_SALDO_DISP}    R$ 181,79

Então visualizará o valor do dinheiro guardado na conta
    Element Should Be Visible    ${DINHEIRO_GUARDADO}
    Page Should Contain Element    ${DINHEIRO_GUARDADO}
    Verifica se o contentDesc contains text    ${DINHEIRO_GUARDADO}    Dinheiro guardado
    Verifica se o contentDesc contains text    ${DINHEIRO_GUARDADO}    R$ 240,02

Então visualizará o rendimento total da conta
    Element Should Be Visible    ${RENDIMENTO_CONTA}
    Page Should Contain Element    ${RENDIMENTO_CONTA}
    Verifica se o contentDesc contains text    ${RENDIMENTO_CONTA}    Rendimento total da conta
    Verifica se o contentDesc contains text    ${RENDIMENTO_CONTA}    +R$ 0,20 este mês

Então visualizará as informações das transações realizadas
    Swipe By Percent    50    90    50    10
    Element Should Be Visible    ${TRANSF_PATRICIA}
    Page Should Contain Element    ${TRANSF_PATRICIA}
    Verifica se o contentDesc contains text    ${TRANSF_PATRICIA}    Transferência enviada
    Verifica se o contentDesc contains text    ${TRANSF_PATRICIA}    PATRICIA COSTA
    Verifica se o contentDesc contains text    ${TRANSF_PATRICIA}    R$ 30,00
    Verifica se o contentDesc contains text    ${TRANSF_PATRICIA}    Pix
    Verifica se o contentDesc contains text    ${TRANSF_PATRICIA}    Ontem
    Element Should Be Visible    ${TRANSF_JEY}
    Page Should Contain Element    ${TRANSF_JEY}
    Verifica se o contentDesc contains text    ${TRANSF_JEY}    Transferência recebida
    Verifica se o contentDesc contains text    ${TRANSF_JEY}    ANDRE JEY
    Verifica se o contentDesc contains text    ${TRANSF_JEY}    R$ 30,00
    Verifica se o contentDesc contains text    ${TRANSF_JEY}    Pix
    Verifica se o contentDesc contains text    ${TRANSF_JEY}    Ontem
    Element Should Be Visible    ${TRANSF_ERIKO}
    Page Should Contain Element    ${TRANSF_ERIKO}
    Verifica se o contentDesc contains text    ${TRANSF_ERIKO}    Transferência recebida
    Verifica se o contentDesc contains text    ${TRANSF_ERIKO}    ERIKO BARBOSA
    Verifica se o contentDesc contains text    ${TRANSF_ERIKO}    R$ 30,00
    Verifica se o contentDesc contains text    ${TRANSF_ERIKO}    Pix
    Verifica se o contentDesc contains text    ${TRANSF_ERIKO}    Ontem
    Element Should Be Visible    ${TRANSF_IVAN}
    Page Should Contain Element    ${TRANSF_IVAN}
    Verifica se o contentDesc contains text    ${TRANSF_IVAN}    Transferência recebida
    Verifica se o contentDesc contains text    ${TRANSF_IVAN}    IVAN COELHO
    Verifica se o contentDesc contains text    ${TRANSF_IVAN}    R$ 30,00
    Verifica se o contentDesc contains text    ${TRANSF_IVAN}    Pix
    Verifica se o contentDesc contains text    ${TRANSF_IVAN}    Ontem

Então deverá visualizar o botão de acesso para funcionalidade Depositar
    Element Should Be Visible    ${CARROSSEL_EXT_1}
    Page Should Contain Element    ${CARROSSEL_EXT_1}
    Element Should Be Visible    ${BTN_EXT_DEPOSITAR}
    Verifica se o contentDesc contains text    ${BTN_EXT_DEPOSITAR}    Depositar

Então deverá visualizar o botão de acesso para funcionalidade Pagar
    Element Should Be Visible    ${CARROSSEL_EXT_2}
    Page Should Contain Element    ${CARROSSEL_EXT_2}
    Element Should Be Visible    ${BTN_EXT_PAGAR}
    Verifica se o contentDesc contains text    ${BTN_EXT_PAGAR}    Pagar

Então deverá visualizar o botão de acesso para funcionalidade Transferir
    Element Should Be Visible    ${CARROSSEL_EXT_3}
    Page Should Contain Element    ${CARROSSEL_EXT_3}
    Element Should Be Visible    ${BTN_EXT_TRANSFERIR}
    Verifica se o contentDesc contains text    ${BTN_EXT_TRANSFERIR}    Transferir

Então deverá visualizar o botão de acesso para funcionalidade Empréstimos
    Element Should Be Visible    ${CARROSSEL_EXT_4}
    Page Should Contain Element    ${CARROSSEL_EXT_4}
    Element Should Be Visible    ${BTN_EXT_EMPRÉSTIMOS}
    Verifica se o contentDesc contains text    ${BTN_EXT_EMPRÉSTIMOS}    Empréstimos

Então deverá visualizar o botão de acesso para funcionalidade Cobrar
    Swipe By Percent    70    70    20    70
    Element Should Be Visible    ${CARROSSEL_EXT_4}
    Page Should Contain Element    ${CARROSSEL_EXT_4}
    Element Should Be Visible    ${BTN_EXT_COBRAR}
    Verifica se o contentDesc contains text    ${BTN_EXT_COBRAR}    Cobrar

Então deverá visualizar o botão de acesso para dúvidas da tela de saldo e extrato da Conta
    Element Should Be Visible    ${BTN_TOPO_DIR}
    Page Should Contain Element    ${BTN_TOPO_DIR}
    Click Element    ${BTN_TOPO_DIR}

Então terá acesso a tela de informações da área pix da conta
    Element Should Be Visible    ${ÁREA_PIX}
    Page Should Contain Element    ${ÁREA_PIX}

Então visualizará a mensagem informando que esta na área pix
    Element Should Be Visible    ${ÁREA_PIX}
    Page Should Contain Element    ${ÁREA_PIX}
    Verifica se o contentDesc contains text    ${ÁREA_PIX}    Minha área Pix

Então visualizará a mensagem informando que esta tela é tudo que o usuário precisa
    Element Should Be Visible    ${ÁREA_PIX}
    Page Should Contain Element    ${ÁREA_PIX}
    Verifica se o contentDesc contains text    ${ÁREA_PIX}    Tudo o que você precisa para pagar, transferir ou cobrar

Então visualizará a funcionalidade Minhas chaves
    Element Should Be Visible    ${MINHAS_CHAVES}
    Page Should Contain Element    ${MINHAS_CHAVES}
    Verifica se o contentDesc contains text    ${MINHAS_CHAVES}    Minhas chaves

Então visualizará a funcionalidade Meu limite Pix
    Element Should Be Visible    ${MEU_LIMITE_PIX}
    Page Should Contain Element    ${MEU_LIMITE_PIX}
    Verifica se o contentDesc contains text    ${MEU_LIMITE_PIX}    Meu limite Pix

Então visualizará a funcionalidade Me ajuda
    Element Should Be Visible    ${ME_AJUDA_PIX}
    Page Should Contain Element    ${ME_AJUDA_PIX}
    Verifica se o contentDesc contains text    ${ME_AJUDA_PIX}    Me ajuda

Então terá acesso a tela de informações da área Pagar da conta
    Verifica se o contentDesc contains text    ${PAGAR_C_PIX}    Pagar

Então visualizará a funcionalidade Pagar com Pix
    Element Should Be Visible    ${PAGAR_C_PIX}
    Page Should Contain Element    ${PAGAR_C_PIX}
    Verifica se o contentDesc contains text    ${PAGAR_C_PIX}    Pagar com Pix
    Verifica se o contentDesc contains text    ${PAGAR_C_PIX}    Leia um QR Code ou cole o código

Então visualizará a funcionalidade Pagar fatura do cartão
    Element Should Be Visible    ${PAGAR_FAT_CARTÃO}
    Page Should Contain Element    ${PAGAR_FAT_CARTÃO}
    Verifica se o contentDesc contains text    ${PAGAR_FAT_CARTÃO}    Pagar fatura do cartão
    Verifica se o contentDesc contains text    ${PAGAR_FAT_CARTÃO}    Libera o limite do seu Cartão de Crédito

Então visualizará a funcionalidade Pagar um boleto
    Element Should Be Visible    ${PAGAR_BOLETO}
    Page Should Contain Element    ${PAGAR_BOLETO}
    Verifica se o contentDesc contains text    ${PAGAR_BOLETO}    Pagar um boleto
    Verifica se o contentDesc contains text    ${PAGAR_BOLETO}    Contas de luz, água, etc

Então terá acesso a tela de informações da área Transferir da conta
    Element Should Be Visible    ${TRANSFERIR}
    Page Should Contain Element    ${TRANSFERIR}

Então visualizará o valor preenchido no campo de inserir o valor para transferencia
    Element Should Be Visible    ${TRANSFERIR}
    Page Should Contain Element    ${TRANSFERIR}
    Element Should Contain Text    ${TRANSFERIR}    R$ 0,00

Então visualizará o valor preenchido no campo inserir valor para transferencia
    Element Should Be Visible    ${TRANSFERIR}
    Page Should Contain Element    ${TRANSFERIR}
    Element Should Contain Text    ${TRANSFERIR}    256,98

Então visualizará a mensagem Qual é o valor da transferência
    Element Should Be Visible    ${TRANSFERIR}
    Page Should Contain Element    ${TRANSFERIR}
    Element Should Contain Text    ${MSG_TRANSFERIR}    Qual é o valor da transferência?

Então deverá visualizar o botão QRCODE no canto superior direito da tela
    Element Should Be Visible    ${BTN_TOPO_DIR}
    Page Should Contain Element    ${BTN_TOPO_DIR}
    Click Element    ${BTN_TOPO_DIR}

Então terá acesso a tela de informações da área Depositar da conta
    Verifica se o contentDesc contains text    ${COMO_DEPOSITAR}    Como você quer depositar na sua conta do Nubank

Então visualizará a funcionalidade de depositar com Pix
    Element Should Be Visible    ${DEPOSITAR_PIX}
    Page Should Contain Element    ${DEPOSITAR_PIX}
    Verifica se o contentDesc contains text    ${DEPOSITAR_PIX}    Pix
    Verifica se o contentDesc contains text
    ...    ${DEPOSITAR_PIX}
    ...    Sem custo e cai na hora, mesmo de madrugada e fim de semana

Então visualizará a funcionalidade de depositar com Boleto
    Element Should Be Visible    ${DEPOSITAR_BOLETO}
    Page Should Contain Element    ${DEPOSITAR_BOLETO}
    Verifica se o contentDesc contains text    ${DEPOSITAR_BOLETO}    Boleto
    Verifica se o contentDesc contains text
    ...    ${DEPOSITAR_BOLETO}
    ...    Sem custo e pode levar 3 dias úteis para o dinheiro cair

Então visualizará a funcionalidade de depositar com TED/DOC
    Element Should Be Visible    ${DEPOSITAR_TED}
    Page Should Contain Element    ${DEPOSITAR_TED}
    Verifica se o contentDesc contains text    ${DEPOSITAR_TED}    TED/DOC
    Verifica se o contentDesc contains text
    ...    ${DEPOSITAR_TED}
    ...    Pode ter custo e cai somente em horário comercial de dias úteis

Então visualizará a funcionalidade de Trazer seu salário via depósito
    Element Should Be Visible    ${DEPOSITAR_SALÁRIO}
    Page Should Contain Element    ${DEPOSITAR_SALÁRIO}
    Verifica se o contentDesc contains text    ${DEPOSITAR_SALÁRIO}    Trazer seu salário
    Verifica se o contentDesc contains text
    ...    ${DEPOSITAR_SALÁRIO}
    ...    Receba todo mês direto aqui na sua conta, sem custo

Então terá acesso a tela da área Empréstimos da conta
    Element Should Be Visible    ${EMPRÉSTIMOS_TELA}
    Page Should Contain Element    ${EMPRÉSTIMOS_TELA}

Então visualizará a mensagem informando o valor de empréstimo disponível para sua conta
    Element Should Be Visible    ${EMPRÉSTIMOS_TELA}
    Page Should Contain Element    ${EMPRÉSTIMOS_TELA}
    Verifica se o contentDesc contains text    ${EMPRÉSTIMOS_TELA}    O valor disponível no momento é de R$ 10.000,00

Então visualizará a mensagem informando que o valor do empréstimo pode mudar
    Element Should Be Visible    ${VALOR_PODE_MUDAR}
    Page Should Contain Element    ${VALOR_PODE_MUDAR}
    Verifica se o contentDesc contains text
    ...    ${VALOR_PODE_MUDAR}
    ...    Este valor pode mudar diariamente devido à nossa análise de crédito.

Então visualizará o link com a mensagem: Entenda como funciona
    Element Should Be Visible    ${ENTENDA_COMO_FUNCIONA}
    Page Should Contain Element    ${ENTENDA_COMO_FUNCIONA}
    Verifica se o contentDesc contains text    ${ENTENDA_COMO_FUNCIONA}    Entenda como funciona >

Então visualizará o botão de Novo Empréstimo
    Element Should Be Visible    ${NOVO_EMPRÉSTIMO}
    Page Should Contain Element    ${NOVO_EMPRÉSTIMO}
    Verifica se o contentDesc contains text    ${NOVO_EMPRÉSTIMO}    NOVO EMPRÉSTIMO

Então terá acesso a tela de informações da área Recarga de celular
    Element Should Be Visible    ${TELA_TODA}
    Page Should Contain Element    ${TELA_TODA}

Então visualizará o campo de preenchimento do número do celular
    Element Should Be Visible    ${INPUT_RECARGA}
    Page Should Contain Element    ${INPUT_RECARGA}

Então visualizará o valor preenchido no campo inserir número para recarga
    Element Should Be Visible    ${INPUT_RECARGA}
    Page Should Contain Element    ${INPUT_RECARGA}
    Element Should Contain Text    ${INPUT_RECARGA}    (11) 94117-0887

Então terá acesso a tela de informações da área Cobrar
    Element Should Be Visible    ${TELA_TODA}
    Page Should Contain Element    ${TELA_TODA}

Então visualizará a mensagem: Qual valor voce quer receber? Não especificar um valor
    Element Should Be Visible    ${INPUT_COBRAR}
    Page Should Contain Element    ${INPUT_COBRAR}
    Element Attribute Should Match
    ...    ${INPUT_COBRAR}
    ...    hint
    ...    Qual valor você quer receber?
    ...    Não especificar um valor >

Então visualizará o campo de preenchimento do valor a ser cobrado
    Element Should Be Visible    ${INPUT_COBRAR}
    Page Should Contain Element    ${INPUT_COBRAR}

Então visualizará o valor preenchido no campo de inserir valor a ser cobrado
    Element Should Be Visible    ${INPUT_COBRAR}
    Page Should Contain Element    ${INPUT_COBRAR}
    Element Should Contain Text    ${INPUT_COBRAR}    986,50

Então terá acesso a tela Cartão de Crédito
    Element Should Be Visible    ${MSG_FATURA_ATUAL}
    Page Should Contain Element    ${MSG_FATURA_ATUAL}

Então visualizará o valor da fatura atual
    Element Should Be Visible    ${MSG_FATURA_ATUAL}
    Page Should Contain Element    ${MSG_FATURA_ATUAL}
    Verifica se o contentDesc contains text    ${MSG_FATURA_ATUAL}    Fatura atual
    Element Should Be Visible    ${MSG_VALOR_FATURA}
    Page Should Contain Element    ${MSG_VALOR_FATURA}
    Verifica se o contentDesc contains text    ${MSG_VALOR_FATURA}    R$ 780,72

Então visualizará o valor de limite disponível
    Element Should Be Visible    ${MSG_LIMITE_DISP}
    Page Should Contain Element    ${MSG_LIMITE_DISP}
    Verifica se o contentDesc contains text    ${MSG_LIMITE_DISP}    Limite disponível R$ 806,78

Então visualizará o botão de acesso para funcionalidade Pagar fatura
    Swipe By Percent    50    70    50    10
    Wait Until Element Is Visible    ${BTN_PAGAR_FATURA}
    Page Should Contain Element    ${BTN_PAGAR_FATURA}

Então visualizará o botão de acesso para funcionalidade Resumo de faturas
    Swipe By Percent    50    70    50    10
    Wait Until Element Is Visible    ${BTN_RESUMO_FATURA}
    Page Should Contain Element    ${BTN_RESUMO_FATURA}

Então visualizará o botão de acesso para funcionalidade Ajustar limites
    Swipe By Percent    50    70    50    10
    Wait Until Element Is Visible    ${BTN_AJUSTAR_LIMITES}
    Page Should Contain Element    ${BTN_AJUSTAR_LIMITES}

Então visualizará o botão de acesso para funcionalidade Cartão virtual
    Swipe By Percent    50    70    50    50
    Swipe By Percent    80    80    20    80
    Wait Until Element Is Visible    ${BTN_CARTÃO_VIRTUAL}
    Page Should Contain Element    ${BTN_CARTÃO_VIRTUAL}

Então visualizará o botão de acesso para funcionalidade Bloquear cartão
    Swipe By Percent    50    70    50    50
    Swipe By Percent    80    80    20    80
    Wait Until Element Is Visible    ${BTN_BLOQUEAR_CARTÃO}
    Page Should Contain Element    ${BTN_BLOQUEAR_CARTÃO}

Então visualizará o botão de acesso para funcionalidade Indicar amigos
    Swipe By Percent    50    70    50    50
    Swipe By Percent    80    80    20    80
    Wait Until Element Is Visible    ${BTN_INDICAR_AMIGOS}
    Page Should Contain Element    ${BTN_INDICAR_AMIGOS}

Então visualizará o historico da fatura e suas informações
    Swipe By Percent    50    70    50    10
    Element Should Be Visible    ${PGTO_RECEBIDO}
    Page Should Contain Element    ${PGTO_RECEBIDO}
    Verifica se o contentDesc contains text    ${PGTO_RECEBIDO}    Pagamento recebido
    Verifica se o contentDesc contains text    ${PGTO_RECEBIDO}    VOCÊ PAGOU R$ 50,00
    Verifica se o contentDesc contains text    ${PGTO_RECEBIDO}    R$ 30,00
    Verifica se o contentDesc contains text    ${PGTO_RECEBIDO}    Pix
    Verifica se o contentDesc contains text    ${PGTO_RECEBIDO}    Ontem
    Element Should Be Visible    ${PGTO_SUPERMERCADO}
    Page Should Contain Element    ${PGTO_SUPERMERCADO}
    Verifica se o contentDesc contains text    ${PGTO_SUPERMERCADO}    Supermercado
    Verifica se o contentDesc contains text    ${PGTO_SUPERMERCADO}    BRENO FREITAS
    Verifica se o contentDesc contains text    ${PGTO_SUPERMERCADO}    R$ 30,00
    Verifica se o contentDesc contains text    ${PGTO_SUPERMERCADO}    Pix
    Verifica se o contentDesc contains text    ${PGTO_SUPERMERCADO}    Ontem
    Element Should Be Visible    ${PGTO_BRENO}
    Page Should Contain Element    ${PGTO_BRENO}
    Verifica se o contentDesc contains text    ${PGTO_BRENO}    Transferência enviada
    Verifica se o contentDesc contains text    ${PGTO_BRENO}    BRENO FREITAS
    Verifica se o contentDesc contains text    ${PGTO_BRENO}    R$ 30,00
    Verifica se o contentDesc contains text    ${PGTO_BRENO}    Pix
    Verifica se o contentDesc contains text    ${PGTO_BRENO}    Ontem

Então deverá visualizar o botão de acesso para busca no canto superior direito da tela
    Page Should Contain Element    ${BTN_TOPO_DIR}
    Element Should Be Visible    ${BTN_TOPO_DIR}

Então deverá visualizar o botão de acesso para dúvidas sobre Cartão de Crédito
    Page Should Contain Element    ${BTN_DÚVIDAS}
    Element Should Be Visible    ${BTN_DÚVIDAS}

Então o usuário deverá ser redirecionado para tela inical onde acessou a função cartão de crédito
    Page Should Contain Element    ${FUNÇÃO_CARTÃO_CRÉDITO}
    Element Should Be Visible    ${FUNÇÃO_CARTÃO_CRÉDITO}

Então terá acesso a tela de Investimentos
    Element Should Be Visible    ${TÍTULO_INVISTA}
    Page Should Contain Element    ${TÍTULO_INVISTA}

Então visualizará uma imagem na tela
    Element Should Be Visible    ${IMAGEM_INVISTA}
    Page Should Contain Element    ${IMAGEM_INVISTA}

Então visualizará uma mensagem para investir sem taxas e burocracia
    Element Should Be Visible    ${TÍTULO_INVISTA}
    Page Should Contain Element    ${TÍTULO_INVISTA}
    Verifica se o contentDesc contains text    ${TÍTULO_INVISTA}    Invista sem taxas e burocracia!

Então visualizará uma mensagem informando que o banco esta convidando clientes para investir
    Element Should Be Visible    ${MSG_INVISTA_1}
    Page Should Contain Element    ${MSG_INVISTA_1}
    Verifica se o contentDesc contains text
    ...    ${MSG_INVISTA_1}
    ...    Estamos convidando alguns clientes do Nubank para serem os primeiros a fazer parte desta revolução roxa nos investimentos, e você é um deles!

Então visualizará uma mensagem informando que o cliente terá taxa zero na corretagem
    Element Should Be Visible    ${MSG_INVISTA_2}
    Page Should Contain Element    ${MSG_INVISTA_2}
    Verifica se o contentDesc contains text
    ...    ${MSG_INVISTA_2}
    ...    Além de não pagar nada para abrir a conta, você terá taxa zero na corretagem de ações!

Então visualizará um botão para avançar página
    Page Should Contain Element    ${BTN_SETA_INVISTA}
    Element Should Be Visible    ${BTN_SETA_INVISTA}
    Click Element    ${BTN_SETA_INVISTA}

Então o usuário deverá ser redirecionado para tela inical onde acessou a função investimentos
    Page Should Contain Element    ${FUNÇÃO_INVESTIMENTOS}
    Element Should Be Visible    ${FUNÇÃO_INVESTIMENTOS}
