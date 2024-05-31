Feature: Exibição do logo no Connect Eco

  Scenario: Logo é exibido no canto superior esquerdo
    Given que acesso o Connect Eco
    Then o logo deve ser exibido no canto superior esquerdo

  Scenario: Verificar se o logo não é clicável
    Given que o logo está exibido
    Then o logo não deve ser clicável


Feature: Exibição do cabeçalho no Connect Eco

  Scenario: Cabeçalho é exibido ao acessar o Connect Eco
    Given que acesso o Connect Eco
    Then o cabeçalho deve ser exibido

  Scenario: A opção "Home" aparece no cabeçalho
    Given que o cabeçalho está exibido
    Then a opção "Home" deve aparecer no cabeçalho

  Scenario: A opção "Sobre a Connect Eco" aparece no cabeçalho
    Given que o cabeçalho está exibido
    Then a opção "Sobre a Connect Eco" deve aparecer no cabeçalho
    But o texto está incorreto, deve ser "Sobre a Connect Eco"

  Scenario: A opção "Blog" aparece no cabeçalho
    Given que o cabeçalho está exibido
    Then a opção "Blog" deve aparecer no cabeçalho

  Scenario: Texto da opção selecionada está na cor verde-escuro
    Given que uma opção do cabeçalho está selecionada
    Then o texto da opção selecionada deve estar na cor verde-escuro

  Scenario: Texto das demais opções está na cor cinza
    Given que o cabeçalho está exibido
    Then o texto das opções não selecionadas deve estar na cor cinza

  Scenario: Botão "Faça parte" é exibido corretamente
    Given que o cabeçalho está exibido
    Then o botão "Faça parte" deve ser exibido com fundo verde e texto branco

  Scenario: Localização atual é exibida corretamente
    Given que o cabeçalho está exibido
    Then a localização atual deve ser exibida com fundo verde-escuro e texto em verde-claro no canto superior direito

  Scenario: Pop-up de endereço é exibido ao clicar na localização atual
    Given que a localização atual está exibida
    When clico na localização atual
    Then o pop-up de endereço deve ser exibido


Feature: Pop-up de endereço no Connect Eco

  Scenario: Pop-up de endereço é aberto automaticamente no primeiro acesso
    Given que é o primeiro acesso do usuário em um novo dispositivo/navegador
    Then o pop-up de endereço deve ser aberto automaticamente

  Scenario: Pop-up de endereço não é exibido após o primeiro acesso
    Given que não é o primeiro acesso do usuário em um novo dispositivo/navegador
    Then o pop-up de endereço não deve ser exibido

  Scenario: Exibição do pop-up de endereço ao clicar em "Endereço"
    Given que acesso o Connect Eco
    When clico em "Endereço"
    Then o pop-up de endereço deve ser exibido

  Scenario: Mensagem no pop-up de endereço
    Given que o pop-up de endereço está exibido
    Then a mensagem "Em qual cidade do Brasil você gostaria de fazer seu descarte?" deve ser exibida na cor verde

  Scenario: Opções de entrada no pop-up de endereço
    Given que o pop-up de endereço está exibido
    Then deve haver três opções de entrada: Estado, Cidade e Bairro, e o botão "Confirmar"

  Scenario: Exibição do texto "Qual estado?" no pop-up de endereço
    Given que o pop-up de endereço está exibido
    Then a opção "Qual estado?" deve estar escrita na cor cinza com o sinal "*" em vermelho

  Scenario: Seleção obrigatória do estado
    Given que o pop-up de endereço está exibido
    Then a opção para selecionar "Qual estado?" deve ser obrigatória

  Scenario: Caixa de seleção abaixo da opção "Qual estado?"
    Given que o pop-up de endereço está exibido
    Then deve haver uma caixa de seleção abaixo da opção "Qual estado? *"

  Scenario: Validação do campo "Qual estado?"
    Given que o pop-up de endereço está exibido
    Then deve ser impossível preencher o campo "Qual estado?" com um estado que não existe

  Scenario: Exibição das cidades correspondentes ao estado selecionado
    Given que um estado foi selecionado
    Then apenas as cidades do estado correspondente devem ser exibidas

  Scenario: Exibição do texto "Qual cidade?" no pop-up de endereço
    Given que o pop-up de endereço está exibido
    Then a opção "Qual cidade?" deve estar escrita na cor cinza com o sinal "*" em vermelho

  Scenario: Seleção obrigatória da cidade
    Given que o pop-up de endereço está exibido
    Then a opção para selecionar "Qual cidade?" deve ser obrigatória

  Scenario: Caixa de seleção abaixo da opção "Qual cidade?"
    Given que o pop-up de endereço está exibido
    Then deve haver uma caixa de seleção abaixo da opção "Qual cidade? *"

  Scenario: Validação do campo "Qual cidade?"
    Given que o pop-up de endereço está exibido
    Then deve ser impossível preencher o campo "Qual cidade?" com uma cidade que não existe

  Scenario: Exibição dos bairros correspondentes à cidade selecionada
    Given que uma cidade foi selecionada
    Then apenas os bairros da cidade correspondente devem ser exibidos

  Scenario: Exibição do texto "Qual bairro?" no pop-up de endereço
    Given que o pop-up de endereço está exibido
    Then a opção "Qual bairro?" deve estar escrita na cor cinza
    But o texto está incorreto, deve ser com letra minúscula

  Scenario: Seleção opcional do bairro
    Given que o pop-up de endereço está exibido
    Then a opção para selecionar "Qual bairro?" deve ser opcional

  Scenario: Caixa de seleção abaixo da opção "Qual bairro?"
    Given que o pop-up de endereço está exibido
    Then deve haver uma caixa de seleção abaixo da opção "Qual bairro?"

  Scenario: Validação do campo "Qual bairro?"
    Given que o pop-up de endereço está exibido
    Then deve ser impossível preencher o campo "Qual bairro?" com um bairro que não existe

  Scenario: Botão "Confirmar" no pop-up de endereço
    Given que o pop-up de endereço está exibido
    Then o botão "Confirmar" deve aparecer abaixo da caixa de seleção da opção "Qual bairro?" e deve ter a cor verde com o texto em branco

  Scenario: Ativação do botão "Confirmar" com campos obrigatórios preenchidos
    Given que os campos obrigatórios "estado" e "cidade" estão preenchidos
    Then o botão "Confirmar" deve ficar ativo

  Scenario: Inativação do botão "Confirmar" sem campos obrigatórios preenchidos
    Given que os campos obrigatórios "estado" e "cidade" não estão preenchidos
    Then o botão "Confirmar" deve ficar inativo

  Scenario: Ativação do botão "Confirmar" sem campo opcional preenchido
    Given que os campos obrigatórios "estado" e "cidade" estão preenchidos e o campo "bairro" está vazio
    Then o botão "Confirmar" deve ficar ativo

  Scenario: Impossibilidade de filtrar endereços sem selecionar estado
    Given que o estado não está selecionado
    Then deve ser impossível filtrar os endereços

  Scenario: Impossibilidade de filtrar endereços sem selecionar cidade
    Given que a cidade não está selecionada
    Then deve ser impossível filtrar os endereços

  Scenario: Possibilidade de filtrar endereços sem selecionar bairro
    Given que os campos obrigatórios "estado" e "cidade" estão preenchidos e o campo "bairro" está vazio
    Then deve ser possível filtrar os endereços


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


Feature: Página "Sobre a Connect Eco"

  Scenario: Exibição dos textos na página "Sobre a Connect Eco"
    Given que estou na página "Sobre a Connect Eco"
    Then os textos "Missão", "Visão", "Valores" e "Como nasceu" devem ser exibidos


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


Feature: Página Não Encontrada

  Scenario: Exibição da mensagem "404 :("
    Given que tento acessar uma página do Connect Eco que não existe
    Then a mensagem "404 :(" em verde, com a legenda "Ops! Página não encontrada" em cinza deve ser exibida

  Scenario: Exibição do botão "Voltar para página inicial"
    Given que a mensagem "404 :(" está exibida
    Then o botão "Voltar para página inicial" deve ser exibido na cor verde com o texto em branco abaixo da mensagem

  Scenario: Ação ao clicar no botão "Voltar para página inicial"
    Given que a mensagem "404 :(" está exibida
    When clico no botão "Voltar para página inicial"
    Then o usuário deve ser direcionado para a página "Home"


Feature: Rodapé do Connect Eco

  Scenario: Exibição do ícone e texto no lado esquerdo do rodapé
    Given que estou na página do Connect Eco
    Then no rodapé do lado esquerdo deve ter um ícone verde de reciclagem e ao lado dele "CONNECT ECO" escrito em preto

  Scenario: Exibição do texto no centro do rodapé
    Given que estou na página do Connect Eco
    Then no rodapé no centro deve estar escrito "Todos os direitos reservados" em cinza

  Scenario: Exibição do texto no lado direito do rodapé
    Given que estou na página do Connect Eco
    Then no rodapé do lado direito deve estar escrito "Políticas de Privacidade" em cinza
