Feature: Exibição do logo no Connect Eco

  Scenario: Logo é exibido no canto superior esquerdo
    Given que acesso o Connect Eco
    Then o logo deve ser exibido no canto superior esquerdo

  Scenario: Verificar se o logo não é clicável
    Given que o logo está exibido
    Then o logo não deve ser clicável