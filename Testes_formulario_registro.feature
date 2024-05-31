Feature: Formulário de Registro da Empresa

  Scenario: Acessando o formulário de registro
    Given que estou na página inicial
    When clico no botão "Faça parte" no cabeçalho
    Then um pop-up deve abrir com o formulário de registro da empresa

  Scenario: Inserindo um nome de ponto de coleta inválido
    Given que estou no formulário de registro da empresa
    When clico no campo "Nome do ponto de coleta"
    And digito um nome de ponto de coleta inválido
    Then uma mensagem vermelha "Digite um nome válido" deve aparecer abaixo do campo

  Scenario: Inserindo um nome de ponto de coleta válido
    Given que estou no formulário de registro da empresa
    When clico no campo "Nome do ponto de coleta"
    And digito um nome de ponto de coleta válido
    Then nenhuma mensagem deve ser exibida abaixo do campo

  Scenario: Inserindo uma categoria de coleta inválida
    Given que estou no formulário de registro da empresa
    When clico no campo "Categoria de coleta"
    And digito uma categoria de coleta inválida
    Then uma mensagem vermelha "Digite uma categoria de coleta válida" deve aparecer abaixo do campo

  Scenario: Inserindo uma categoria de coleta válida
    Given que estou no formulário de registro da empresa
    When clico no campo "Categoria de coleta"
    And digito uma categoria de coleta válida
    Then nenhuma mensagem deve ser exibida abaixo do campo

  Scenario: Inserindo um endereço inválido
    Given que estou no formulário de registro da empresa
    When clico no campo "Endereço"
    And digito um endereço inválido
    Then uma mensagem vermelha "Digite um endereço válido" deve aparecer abaixo do campo

  Scenario: Inserindo um endereço válido
    Given que estou no formulário de registro da empresa
    When clico no campo "Endereço"
    And digito um endereço válido
    Then nenhuma mensagem deve ser exibida abaixo do campo

  Scenario: Inserindo um email inválido
    Given que estou no formulário de registro da empresa
    When clico no campo "Email"
    And digito um email inválido
    Then uma mensagem vermelha "Digite um email válido" deve aparecer abaixo do campo

  Scenario: Inserindo um email válido
    Given que estou no formulário de registro da empresa
    When clico no campo "Email"
    And digito um email válido
    Then nenhuma mensagem deve ser exibida abaixo do campo

  Scenario: Inserindo um nome de responsável inválido
    Given que estou no formulário de registro da empresa
    When clico no campo "Nome do responsável"
    And digito um nome de responsável inválido
    Then uma mensagem vermelha "Digite um nome de responsável válido" deve aparecer abaixo do campo

  Scenario: Inserindo um nome de responsável válido
    Given que estou no formulário de registro da empresa
    When clico no campo "Nome do responsável"
    And digito um nome de responsável válido
    Then nenhuma mensagem deve ser exibida abaixo do campo

  Scenario: Inserindo uma senha inválida
    Given que estou no formulário de registro da empresa
    When clico no campo "Senha"
    And digito uma senha inválida
    Then uma mensagem vermelha "Digite uma senha válida" deve aparecer abaixo do campo

  Scenario: Inserindo uma senha válida
    Given que estou no formulário de registro da empresa
    When clico no campo "Senha"
    And digito uma senha válida
    Then nenhuma mensagem deve ser exibida abaixo do campo

  Scenario: Validando o botão de enviar
    Given que estou no formulário de registro da empresa
    When valido corretamente todos os campos
    Then o botão "Criar ponto de coleta" deve estar ativo

  Scenario: Validação de campo incorreto
    Given que estou no formulário de registro da empresa
    When valido incorretamente qualquer campo
    Then o botão "Criar ponto de coleta" deve estar inativo

  Scenario: Criação de ponto de coleta bem-sucedida
    Given que preenchi corretamente todos os campos no formulário de registro da empresa
    And o botão "Criar ponto de coleta" está ativo
    When clico no botão "Criar ponto de coleta"
    Then deve aparecer o pop-up "Ponto de coleta criado com sucesso"
