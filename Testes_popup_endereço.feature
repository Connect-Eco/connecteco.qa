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