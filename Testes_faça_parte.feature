Feature: Página "Faça Parte"

  Scenario: Exibição da mensagem "Faça parte"
    Given que clico no botão "Faça parte"
    Then a página deve abrir com a mensagem "Faça parte" na cor verde, com a legenda "Preencha o formulário abaixo e tenha seu ponto de coleta em destaque" na cor cinza

  Scenario: Imagem ao lado do texto "Faça parte"
    Given que estou na página "Faça Parte"
    Then uma imagem com pneus para reciclagem deve aparecer ao lado do texto "Faça parte"

  Scenario: Exibição do texto "FORMULÁRIO DE REGISTRO"
    Given que estou na página "Faça Parte"
    Then o texto "FORMULÁRIO DE REGISTRO" deve ser exibido em caixa alta e na cor preta abaixo do banner

  Scenario: Exibição do formulário de registro
    Given que estou na página "Faça Parte"
    Then o "Formulário de registro" deve aparecer abaixo do texto