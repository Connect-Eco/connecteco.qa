Feature: Página "Blog" do Connect Eco

  Scenario: Exibição das publicações na seção "Últimos posts"
    Given que estou na página "Blog"
    Then cada publicação na seção "Últimos posts" deve aparecer acompanhada de uma prévia do texto no lado direito e uma foto no lado esquerdo

  Scenario: Exibição do botão "Visualizar" nas publicações
    Given que estou na página "Blog"
    Then o botão "Visualizar" deve aparecer abaixo de cada prévia de texto

  Scenario: Estilo do botão "Visualizar"
    Given que estou na página "Blog"
    Then o botão "Visualizar" deve aparecer envolto na cor verde com a escrita na cor branca

  Scenario: Exibição do post mais recente em tamanho maior
    Given que estou na página "Blog"
    Then o post mais recente deve aparecer em um tamanho maior que os publicados anteriormente

  Scenario: Número máximo de publicações na seção "Últimos posts"
    Given que estou na página "Blog"
    Then o máximo de publicações que aparecem na página deve ser 6

  Scenario: Ação ao clicar no botão "Visualizar"
    Given que estou na página "Blog"
    When clico no botão "Visualizar"
    Then uma nova página deve ser aberta com o título do post na parte superior e a publicação completa com a sua imagem referente no final da página
