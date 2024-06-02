Feature: Rodapé do Connect Eco

  Scenario: Exibição do ícone e texto no lado esquerdo do rodapé
    Given que estou na página do Connect Eco
    Then no rodapé do lado esquerdo deve ter um ícone verde de reciclagem e ao lado dele "CONNECT ECO" escrito em preto

  Scenario: Exibição do texto no centro do rodapé
    Given que estou na página do Connect Eco
    Then no rodapé no centro deve estar escrito "©2024 ConnectEco" em preto

  Scenario: Exibição do texto no lado direito do rodapé
    Given que estou na página do Connect Eco
    Then no rodapé do lado direito deve estar escrito "Políticas de Privacidade" em preto
