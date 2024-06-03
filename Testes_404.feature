Feature: 404 - Página Não Encontrada

  Scenario: Exibição da mensagem "404 :("
    Given que tento acessar uma página do Connect Eco que não existe
    Then a mensagem "404 :(" em verde, com a legenda "Ops! Página não encontrada" em cinza deve ser exibida

  Scenario: Exibição do botão "Voltar para página inicial"
    Given que a mensagem "404 :(" está exibida
    Then o botão "Voltar para página inicial" deve ser exibido na cor verde com o texto em branco abaixo da mensagem

  Scenario: Ação ao clicar no botão "Voltar para página inicial"
    Given que a mensagem "404 :(", com a legenda "Ops! Página não encontrada" em cinza deve ser exibida
    When clico no botão "Voltar para página inicial"
    Then o usuário deve ser direcionado para a página "Home" completa
