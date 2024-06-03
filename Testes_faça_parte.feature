Feature: Página "Faça Parte"

  Scenario: Abrir a página "Faça parte" clicando no botão do cabeçalho
    Given que estou na página inicial
    When clico no botão "Faça parte" no cabeçalho
    Then a página "Faça parte" deve ser aberta

  Scenario: Abrir a página "Faça parte" clicando no botão do banner
    Given que estou na página inicial
    When clico no botão "Faça parte" no terceiro banner
    Then a página "Faça parte" deve ser aberta

  Scenario: Exibição da mensagem de página em construção
    Given que estou na página "Faça Parte"
    Then a página deve abrir com a mensagem "Em construção. Entre em contato pelo e-mail connectecoads@gmail.com"

  Scenario: Voltar para página "Home"
    Given que estou na página "Faça Parte"
    When clicar no botão "Home" abaixo da mensagem de página em construção
    Then retorno para página principal.
