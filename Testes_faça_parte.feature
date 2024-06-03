Feature: Página "Faça Parte"

  Scenario: Exibição da mensagem de página em construção
    Given que estou na página "Faça Parte"
    Then a página deve abrir com a mensagem "Em construção."

  Scenario: Voltar para página "Home"
    Given que estou na página "Faça Parte"
    When clicar no botão "Home" abaixo da mensagem de página em construção
    Then retorno para página principal.
