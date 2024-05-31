Feature: Página "Blog" do Connect Eco

  Scenario: Exibição do banner "Nosso Blog"
    Given que estou na página "Blog"
    Then um banner com o texto "Nosso Blog" envolto numa caixa na cor branca deve aparecer

  Scenario: Texto abaixo do título "Nosso Blog"
    Given que estou na página "Blog"
    Then o texto "Fique por dentro de todas as novidades e informações sobre reciclagem e sustentabilidade" deve aparecer abaixo do título "Nosso Blog"

  Scenario: Imagem ao lado do texto "Nosso Blog"
    Given que estou na página "Blog"
    Then uma imagem com pneus para reciclagem deve aparecer ao lado do texto "Nosso Blog"

  Scenario: Exibição da seção "Últimos posts"
    Given que estou na página "Blog"
    Then a seção "Últimos posts" deve aparecer abaixo do título "Nosso Blog"

  Scenario: Exibição das publicações na seção "Últimos posts"
    Given que estou na página "Blog"
    Then cada publicação na seção "Últimos posts" deve aparecer acompanhada de uma prévia do texto no lado direito e uma foto no lado esquerdo
    But somente o post mais recente aparece com a prévia do texto

  Scenario: Exibição do botão "Visualizar" nas publicações
    Given que estou na seção "Últimos posts"
    Then o botão "Visualizar" deve aparecer abaixo de cada prévia de texto
    But há um erro de digitação

  Scenario: Estilo do botão "Visualizar"
    Given que estou na seção "Últimos posts"
    Then o botão "Visualizar" deve aparecer envolto na cor verde com a escrita na cor branca

  Scenario: Exibição do post mais recente em tamanho maior
    Given que estou na seção "Últimos posts"
    Then o post mais recente deve aparecer em um tamanho maior que os publicados anteriormente

  Scenario: Número máximo de publicações na seção "Últimos posts"
    Given que estou na seção "Últimos posts"
    Then o máximo de publicações que aparecem na página deve ser 6

  Scenario: Ação ao clicar no botão "Visualizar"
    Given que estou na seção "Últimos posts"
    When clico no botão "Visualizar"
    Then uma nova página deve ser aberta com o título do post na parte superior e a publicação completa com a sua imagem referente no final da página