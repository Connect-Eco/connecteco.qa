Feature: Primeiro acesso no Connect Eco

Scenario: Exibição do pop-up "Conhecer a sua localização" no primeiro acesso
    Given que estou acessando o Connect Eco pela primeira vez
    When a página inicial é carregada
    Then um pop-up deve aparecer com a mensagem "Conhecer a sua localização"
    And dois botões na cor azul devem ser exibidos: "Permitir" e "Bloquear"


Scenario: Ação do botão "Permitir" no pop-up "Conhecer a sua localização"
    Given que estou acessando o Connect Eco pela primeira vez
    When o pop-up "Conhecer a sua localização" é exibido
    And clico no botão "Permitir"
    Then a localização deve ser exibida no canto superior direito da página na cor verde


Scenario: Ação ao clicar na localização exibida no canto superior esquerdo após permitir o acesso
    Given que permiti o acesso à localização e ela é exibida no canto superior esquerdo
    When clico na localização exibida
    Then nada deve acontecer

Scenario: Ação do botão "Bloquear" no pop-up "Conhecer a sua localização"
    Given que estou acessando o Connect Eco pela primeira vez
    When o pop-up "Conhecer a sua localização" é exibido
    And clico no botão "Bloquear"
    Then a mensagem "Seu navegador está bloqueando solicitações de localização. Para uma melhor experiência, por favor, habilite a localização nas configurações do seu navegador." deve ser exibida
    And um botão "Ok" em azul deve ser exibido


Scenario: Ação ao clicar em "Bloquear" e "Ok" no pop-up "Conhecer a sua localização"
    Given que estou acessando o Connect Eco pela primeira vez
    When o pop-up "Conhecer a sua localização" é exibido
    And clico no botão "Bloquear"
    And a mensagem "Seu navegador está bloqueando solicitações de localização. Para uma melhor experiência, por favor, habilite a localização nas configurações do seu navegador." é exibida
    And clico no botão "Ok"
    Then a localização não deve ser exibida no canto superior esquerdo
    And um botão na cor verde, com um ícone de mapa e o texto "Obter Localização" em branco deve ser exibido no canto superior esquerdo


Scenario: Ação ao clicar no botão "Obter Localização" após bloquear a localização
    Given que estou na página inicial com a localização bloqueada
    When clico no botão "Obter Localização" no canto superior esquerdo
    Then a mensagem "Seu navegador está bloqueando solicitações de localização. Para uma melhor experiência, por favor, habilite a localização nas configurações do seu navegador." deve ser exibida novamente
    And o botão "Ok" deve ser exibido abaixo da mensagem