Feature: Página Home do Connect Eco

  Scenario: Página Home é aberta por padrão
    Given que acesso o Connect Eco
    Then a página "Home" deve ser aberta por padrão

  Scenario: Exibição do pop-up "Endereço" no primeiro acesso ao Connect Eco
    Given que estou acessando o Connect Eco pela primeira vez
    When a página inicial é carregada
    Then o pop-up "Endereço" deve ser exibido por padrão

  Scenario: Pop-up "Endereço" não é exibido se a localização já foi definida
    Given que o usuário já definiu uma localização
    When o usuário clica no botão "Home" novamente
    Then o pop-up "Endereço" não deve ser exibido  

  Scenario: Elementos exibidos ao clicar em "Home"
    Given que acesso o Connect Eco
    When clico em "Home"
    Then um banner, uma lista de materiais, os principais pontos de coletas e um campo de seleção de endereço para estado, cidade e bairro devem ser exibidos

  Scenario: Exibição do banner abaixo do anúncio
    Given que estou na página "Home"
    Then o banner deve ser exibido abaixo do anúncio

  Scenario: Exibição de cinco banners com duração de 6 segundos cada
    Given que estou na página inicial
    When os banners são exibidos
    Then cinco banners devem ser exibidos
    And cada banner deve ter uma duração de aproximadamente 6 segundos  

  Scenario: Verificar a exibição do primeiro banner
    Given que estou na página inicial
    When o primeiro banner é exibido
    Then a mensagem "Encontre pontos de reciclagem perto de você!" deve ser exibida
    And a legenda "Para um futuro sustentável, veja onde reciclar!" deve ser exibida
    And uma imagem de uma mão segurando uma planta deve ser exibida

  Scenario: Verificar a exibição do segundo banner
    Given que estou na página inicial
    When o segundo banner é exibido
    Then a mensagem "Junte-se a nós por um planeta sustentável." deve ser exibida
    And a legenda "Fique por dentro de todas as novidades e informações sobre reciclagem e sustentabilidade" deve ser exibida
    And uma imagem de mãos na terra com uma planta no meio deve ser exibida

  Scenario: Verificar a exibição do terceiro banner
    Given que estou na página inicial
    When o terceiro banner é exibido
    Then a mensagem "Faça parte de um futuro mais verde." deve ser exibida
    And a legenda "Preencha o formulário abaixo e tenha seu ponto de coleta em destaque." deve ser exibida
    And uma imagem do planeta terra deve ser exibida

  Scenario: Verificar a exibição do quarto banner
    Given que estou na página inicial
    When o quarto banner é exibido
    Then a mensagem "Prefira empresas ligadas a ideias sustentáveis!" deve ser exibida
    And a legenda "A gente pode te ajudar nisso!" deve ser exibida
    And uma imagem de uma lixeira deve ser exibida

  Scenario: Verificar a exibição do quinto banner
    Given que estou na página inicial
    When o quinto banner é exibido
    Then a mensagem "Você sabe o que são os 5R's?" deve ser exibida
    And a legenda "Repensar, Recusar, Reduzir, Reutilizar e Reciclar" deve ser exibida
    And uma imagem de uma mão segurando uma planta com o símbolo de reciclagem deve ser exibida

  Scenario: Verificar se é impossível interagir com os banners
    Given que estou na página inicial
    When os banners são exibidos
    Then não deve ser possível interagir com os banners
    And não deve ser possível clicar na barra de rolagem para selecionar um banner

  Scenario: Texto abaixo do banner
    Given que o banner está exibido
    Then o texto "Qual tipo de material você gostaria de descartar?" deve ser exibido na cor preta abaixo do banner

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
    Then o restante das opções devem ficar com o fundo branco e o texto em preto

  Scenario: Seleção de material "Plásticos"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Plásticos"

  Scenario: Seleção de material "Papel"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Papel"

  Scenario: Seleção de material "Vidro"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Vidro"

  Scenario: Seleção de material "Eletrônicos"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Eletrônicos"

  Scenario: Seleção de material "Metais"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Metais"

  Scenario: Seleção de material "Medicamentos"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Medicamentos"

  Scenario: Seleção de material "Têxtil"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Têxtil"

  Scenario: Seleção de apenas um material
    Given que estou na página "Home"
    When seleciono um material
    Then deve ser possível selecionar apenas um material

  Scenario: Seleção de mais de um material
    Given que estou na página "Home"
    When seleciono mais de um material
    Then deve ser impossível selecionar mais de um material

  Scenario: Exibição do texto "Principais Pontos de Coleta"
    Given que estou na página "Home"
    Then o texto "Principais Pontos de Coleta" deve ser exibido em negrito na cor cinza abaixo dos materiais

 Scenario: Verificar a exibição e estilo do botão "Estado"
    Given que estou na página inicial
    Then um botão para selecionar o Estado deve ser exibido ao lado do texto "Principais Pontos de Coleta"
    And o botão "Estado" deve ter a cor verde
    And o texto do botão deve ser em branco
    
  Scenario: Ação ao clicar no botão "Estado"
    Given que o botão "Estado" está exibido
    When clico no botão "Estado"
    Then uma caixa de seleção deve aparecer

  Scenario: Verificar a impossibilidade de selecionar mais de um estado por vez
    Given que estou na página inicial
    When seleciono um estado no botão "Estado"
    And tento selecionar um segundo estado
    Then deve ser impossível selecionar mais de um estado por vez  

  Scenario: Verificar que a seleção de "Estado" desativa "Cidade" e "Bairro"
    Given que estou na página inicial
    When seleciono a opção "Estado" no botão "Estado"
    Then os botões "Cidade" e "Bairro" devem ficar inativos
    And deve ser impossível selecionar "Cidade" e "Bairro"

  Scenario: Exibir todos os pontos de coleta ao selecionar Estado sem selecionar Cidade e Bairro
    Given que estou na página inicial
    When seleciono um "Estado" no botão "Estado"
    And não seleciono "Cidade" ou "Bairro"
    Then todos os pontos de coleta do estado selecionado devem ser exibidos

  Scenario: Verificar a exibição e estilo do botão "Cidade"
    Given que estou na página inicial
    Then um botão para selecionar a Cidade deve ser exibido ao lado do botão "Estado"
    And o botão "Cidade" deve ter a cor verde
    And o texto do botão deve ser em branco

  Scenario: Ação ao clicar no botão "Cidade"
    Given que o botão "Cidade" está exibido
    When clico no botão "Cidade"
    Then uma caixa de seleção deve aparecer

  Scenario: Verificar a impossibilidade de selecionar mais de uma cidade por vez
    Given que estou na página inicial
    When seleciono uma cidade no botão "Cidade"
    And tento selecionar uma segunda cidade
    Then deve ser impossível selecionar mais de uma cidade por vez

  Scenario: Verificar que a seleção de "Cidade" desativa "Bairro"
    Given que estou na página inicial
    When seleciono a opção "Cidade" no botão "Cidade"
    Then o botão "Bairro" deve ficar inativo
    And deve ser impossível selecionar "Bairro"

  Scenario: Exibir os pontos de coleta ao selecionar Estado e Cidade sem selecionar Bairro
    Given que estou na página inicial
    When seleciono um "Estado" no botão "Estado" 
    And seleciono uma "Cidade" no botão "Cidade"
    And não seleciono "Bairro"
    Then todos os pontos de coleta do estado e cidade selecionados devem ser exibidos

 Scenario: Verificar a exibição e estilo do botão "Bairro"
    Given que estou na página inicial
    And o botão "Bairro" está visível ao lado do botão "Cidade"
    Then o botão "Bairro" deve ter a cor branca
    And o placeholder do botão "Bairro" deve conter o texto "Selecione Bairro" na cor cinza quando inativo
    And o placeholder do botão "Bairro" deve conter o texto "Selecione Bairro" na cor preta quando ativo

  Scenario: Ação ao clicar no botão "Bairro"
    Given que o botão "Bairro" está exibido
    When clico no botão "Bairro"
    Then uma caixa de seleção deve aparecer  

  Scenario: Verificar a impossibilidade de selecionar mais de um bairro por vez
    Given que estou na página inicial
    When seleciono um bairro no botão "Bairro"
    And tento selecionar um segundo bairro
    Then deve ser impossível selecionar mais de um bairro por vez
 
  Scenario: Exibição de postos de coletas
    Given que estou na página "Home"
    Then os postos de coletas não devem ser exibidos sem as informações obrigatórias de endereço    

  Scenario: Atualização da página ao clicar em "Home"
    Given que estou na página "Home"
    When clico em "Home"
    Then a página deve ser atualizada e a lista de endereços deve desaparecer
