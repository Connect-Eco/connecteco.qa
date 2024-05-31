Feature: Página Home do Connect Eco

  Scenario: Página Home é aberta por padrão
    Given que acesso o Connect Eco
    Then a página "Home" deve ser aberta por padrão

  Scenario: Pop-up de endereço é exibido na página Home
    Given que acesso o Connect Eco
    Then o pop-up de endereço deve ser exibido na página Home

  Scenario: Elementos exibidos ao clicar em "Home"
    Given que acesso o Connect Eco
    When clico em "Home"
    Then um banner, uma lista de materiais e um campo de pesquisa de endereço devem ser exibidos

  Scenario: Exibição do banner abaixo do anúncio
    Given que estou na página "Home"
    Then o banner deve ser exibido abaixo do anúncio

  Scenario: Mensagem e legenda no banner
    Given que o banner está exibido
    Then a mensagem "Encontre pontos de reciclagem perto de você!" na cor verde, com a legenda "Para um futuro sustentável, veja onde reciclar!" na cor cinza devem ser exibidas no banner

  Scenario: Imagem de pneus no banner
    Given que o banner está exibido
    Then uma imagem com vários pneus deve ser exibida ao lado da mensagem do banner

  Scenario: Texto abaixo do banner
    Given que o banner está exibido
    Then o texto "Qual tipo de material você gostaria de descartar?" deve ser exibido na cor cinza abaixo do banner

  Scenario: Materiais disponíveis para descarte
    Given que o texto "Qual tipo de material você gostaria de descartar?" está exibido
    Then os materiais disponíveis para descarte devem aparecer abaixo do texto

  Scenario: Seleção padrão de todos os materiais
    Given que estou na página "Home"
    Then a opção de selecionar "Todos" os materiais deve ser escolhida por padrão

  Scenario: Exibição da opção selecionada
    Given que uma opção de material está selecionada
    Then a opção selecionada deve ficar com o fundo na cor verde e o texto em branco

  Scenario: Exibição das opções não selecionadas
    Given que uma opção de material está selecionada
    Then o restante das opções devem ficar com o fundo branco e o texto em verde

  Scenario: Seleção de material "Plástico"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Plástico"

  Scenario: Seleção de material "Papel"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Papel"

  Scenario: Seleção de material "Vidro"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Vidro"

  Scenario: Seleção de material "Metal"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Metal"

  Scenario: Seleção de material "Lâmpadas"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Lâmpadas"

  Scenario: Seleção de material "Madeira"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Madeira"

  Scenario: Seleção de material "Móveis"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Móveis"

  Scenario: Seleção de apenas um material
    Given que estou na página "Home"
    When seleciono um material
    Then deve ser possível selecionar apenas um material

  Scenario: Seleção de mais de um material
    Given que estou na página "Home"
    When seleciono mais de um material
    Then deve ser possível selecionar mais de um material

  Scenario: Exibição do texto "Principais Pontos de Coleta"
    Given que estou na página "Home"
    Then o texto "Principais Pontos de Coleta" deve ser exibido em negrito na cor cinza abaixo dos materiais

  Scenario: Exibição do botão para selecionar Estado
    Given que estou na página "Home"
    Then um botão para selecionar o Estado deve ser exibido ao lado do texto "Principais Pontos de Coleta"

  Scenario: Placeholder do botão "Estado"
    Given que o botão "Estado" está exibido
    Then o placeholder do botão deve conter um ícone de localização e o texto "Estado" em seguida

  Scenario: Cor do botão "Estado"
    Given que o botão "Estado" está exibido
    Then o botão "Estado" deve ter a cor verde-escuro com o texto em verde-claro

  Scenario: Ação ao clicar no botão "Estado"
    Given que o botão "Estado" está exibido
    When clico no botão "Estado"
    Then a ação correspondente deve ser executada

  Scenario: Exibição do botão para selecionar Cidade
    Given que estou na página "Home"
    Then um botão para selecionar a Cidade deve ser exibido ao lado do botão "Estado"

  Scenario: Placeholder do botão "Cidade"
    Given que o botão "Cidade" está exibido
    Then o placeholder do botão deve conter um ícone de localização e o texto "Cidade" em seguida

  Scenario: Cor do botão "Cidade"
    Given que o botão "Cidade" está exibido
    Then o botão "Cidade" deve ter a cor verde-escuro com o texto em verde-claro

  Scenario: Ação ao clicar no botão "Cidade"
    Given que o botão "Cidade" está exibido
    When clico no botão "Cidade"
    Then a ação correspondente deve ser executada

  Scenario: Placeholder da caixa de seleção
    Given que a caixa de seleção está exibida
    Then o placeholder da caixa de seleção deve conter o texto "Selecione Bairro" na cor cinza

  Scenario: Ação ao clicar no campo "Selecionar Bairro"
    Given que a caixa de seleção está exibida
    When clico no campo "Selecionar Bairro"
    Then a ação correspondente deve ser executada

  Scenario: Exibição de postos de coletas
    Given que estou na página "Home"
    Then os postos de coletas não devem ser exibidos sem as informações obrigatórias de endereço (estado e cidade)

  Scenario: Atualização da página ao clicar em "Home"
    Given que estou na página "Home"
    When clico em "Home"
    Then a página deve ser atualizada e a lista de endereços deve desaparecer