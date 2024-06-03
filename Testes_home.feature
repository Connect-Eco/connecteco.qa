Feature: Página Home do Connect Eco

  Scenario: Página Home é aberta por padrão
    Given que acesso o Connect Eco
    Then a página "Home" deve ser aberta por padrão

  Scenario: Elementos exibidos ao clicar em "Home"
    Given que acesso o Connect Eco
    When clico em "Home"
    Then os banners, uma lista de materiais, um campo de seleção de endereço para estado, cidade e bairro e os cards dos pontos de coletas devem ser exibidos

  Scenario: Exibição de cinco banners com duração de 6 segundos cada
    Given que estou na página inicial
    When os banners são exibidos abaixo do anúncio
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

  Scenario: Seleção de material "Plástico"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Plástico"

  Scenario: Seleção de material "Papel"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Papel"

  Scenario: Seleção de material "Cápsulas de café"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Cápsulas de café"

  Scenario: Seleção de material "Borracha"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Borracha"

  Scenario: Seleção de material "Vidro"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Vidro"

  Scenario: Seleção de material "Eletrônicos"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Eletrônicos"

  Scenario: Seleção de material "Medicamentos"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Medicamentos"

  Scenario: Seleção de material "Têxtil"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Têxtil"

 Scenario: Seleção de material "Construção civil"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Construção civil"

  Scenario: Seleção de material "Óleo de cozinha"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Óleo de cozinha"

  Scenario: Seleção de material "Embalagens de cosméticos"
    Given que estou na página "Home"
    Then deve ser possível selecionar o material "Embalagens de cosméticos"

  Scenario: Seleção de apenas um material
    Given que estou na página "Home"
    When seleciono um material
    Then deve ser possível selecionar apenas um material

  Scenario: Não é possível a seleção de mais de um material
    Given que estou na página "Home"
    When seleciono mais de um material
    Then deve ser impossível selecionar mais de um material

  Scenario: Exibição automática dos cards dos pontos de coleta ao selecionar um material
    Given que estou na página "Home"
    When seleciono um material
    Then os cards dos pontos de coleta do material selecionado devem ser exibidos automaticamente

  Scenario: Exibição dos materiais "Plástico", "Papel", "Borracha", "Construção civil" e "Óleo de cozinha" como "Coleta seletiva" nos cards
    Given que estou na página "Home"
    When os cards dos pontos de coleta são exibidos
    Then os materiais "Plástico", "Papel" e "Borracha" devem aparecer como "Coleta seletiva"

   Scenario: Exibição dos demais materiais com o próprio nome nos cards
    Given que estou na página "Home"
    When os cards dos pontos de coleta são exibidos
    Then os materiais "Vidro", "Eletrônicos", "Medicamentos", "Têxtil" e "Embalagens de cosméticos" devem ser exibidos com o nome do próprio material

  Scenario: Exibição da mensagem de erro ao selecionar um material não disponível em um ponto de coleta
    Given que estou na página "Home"
    When seleciono um material não disponível em um ponto de coleta
    Then a mensagem "Desculpe! Não conseguimos encontrar eco pontos para o material selecionado. Estamos trabalhando para manter nossas bases de dados sempre atualizadas." com um emoji triste deve ser exibida no lugar dos cards
    
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
    Then uma caixa de seleção com todos os estados existentes deve aparecer

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
    Then todos os cards dos pontos de coleta do estado selecionado devem ser exibidos

  Scenario: Verificar a exibição e estilo do botão "Cidade"
    Given que estou na página inicial
    Then um botão para selecionar a Cidade deve ser exibido ao lado do botão "Estado"
    And o botão "Cidade" deve ter a cor verde
    And o texto do botão deve ser em branco

  Scenario: Ação ao clicar no botão "Cidade"
    Given que o botão "Cidade" está exibido
    When clico no botão "Cidade"
    Then uma caixa de seleção com todas as cidades disponíveis deve aparecer

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
    Then todos os cards dos pontos de coleta do estado e cidade selecionados devem ser exibidos

 Scenario: Verificar a exibição e estilo do botão "Bairro"
    Given que estou na página inicial
    And o botão "Bairro" está visível ao lado do botão "Cidade"
    Then o botão "Bairro" deve ter a cor branca
    And o placeholder do botão "Bairro" deve conter o texto "Selecione Bairro" na cor cinza quando inativo
    And o placeholder do botão "Bairro" deve conter o texto "Selecione Bairro" na cor preta quando ativo

  Scenario: Ação ao clicar no botão "Bairro"
    Given que o botão "Bairro" está exibido
    When clico no botão "Bairro"
    Then uma caixa de seleção com todos os bairros disponíveis deve aparecer  

  Scenario: Verificar a impossibilidade de selecionar mais de um bairro por vez
    Given que estou na página inicial
    When seleciono um bairro no botão "Bairro"
    And tento selecionar um segundo bairro
    Then deve ser impossível selecionar mais de um bairro por vez

  Scenario: Exibição dos cards dos pontos de coletas abaixo dos botões "Estado", "Cidade" e "Bairro"
    Given que estou na página "Home"
    When os cards dos pontos de coletas são exibidos
    Then os cards devem ser exibidos abaixo dos botões "Estado", "Cidade" e "Bairro"

  Scenario: Separar pontos de coleta em cards com imagem e informações
    Given que os pontos de coleta são exibidos na página
    Then os pontos de coleta são separados em cards
    And há uma imagem verde à esquerda de cada card
    And as informações dos pontos de coleta são exibidas à direita da imagem

  Scenario: Exibir detalhes dos pontos de coleta no card
    Given que os pontos de coleta são exibidos na página
    Then o tipo de material que o ponto coleta é exibido primeiro na cor cinza
    And o nome da empresa é exibido em negrito, na cor verde e com uma fonte maior logo abaixo do tipo de material
    And abaixo do nome da empresa, há um ícone de mapa na cor verde, seguido pelo endereço do ponto de coleta na cor preta
    And abaixo do endereço, há um ícone de calendário seguido pelos dias de funcionamento do ponto de coleta, que aparecem em negrito
    And o horário de funcionamento aparece abaixo dos dias de funcionamento na cor preta
    And o texto "Como chegar" e o ícone de uma seta apontada para cima estão na cor verde e aparecem abaixo do horário de funcionamento

  Scenario: Link clicável "Como chegar"
    Given que o usuário está visualizando um card de ponto de coleta
    When o usuário clica no texto "Como chegar"
    Then o usuário deve ser redirecionado para uma página do Google Maps com a localização do ponto de coleta

  Scenario: Exibir no máximo 12 cards por página
    Given que os pontos de coleta são exibidos na página
    Then no máximo 12 cards devem ser exibidos por página

  Scenario: Alternar páginas clicando nos números
    Given que há mais de 12 cards de pontos de coleta exibidos na página
    And uma caixa de seleção para alternar páginas é exibida com números de páginas
    When o usuário clica em um número de página na caixa de seleção
    Then os cards de pontos de coleta correspondentes à página selecionada devem ser exibidos
    And o número da página selecionada deve aparecer na cor verde

Scenario: Alternar páginas clicando nas setas da caixa de seleção
    Given que há mais de 12 cards de pontos de coleta exibidos na página
    And uma caixa de seleção para alternar páginas é exibida com setas para navegação
    When o usuário clica na seta para a próxima página na caixa de seleção
    Then os cards de pontos de coleta correspondentes à próxima página devem ser exibidos

    When o usuário clica na seta para a página anterior na caixa de seleção
    Then os cards de pontos de coleta correspondentes à página anterior devem ser exibidos
