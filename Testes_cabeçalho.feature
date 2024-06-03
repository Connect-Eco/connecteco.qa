Feature: Exibição do cabeçalho no Connect Eco

  Scenario: Cabeçalho é exibido ao acessar o Connect Eco
    Given que acesso o Connect Eco
    Then o cabeçalho deve ser exibido

  Scenario: A opção "Home" é clicável e leva para página principal
    Given que o cabeçalho está exibido
    Then a opção "Home" deve aparecer no cabeçalho
    When clicar na opção "Home"
    Then deve carregar a tela de "Home'

  Scenario: A opção "Sobre a Connect Eco" aparece no cabeçalho
    Given que o cabeçalho está exibido
    Then a opção "Sobre a Connect Eco" deve aparecer no cabeçalho
    When clicar na opção "Sobre a Connect Eco"
    Then deve carregar a tela de "Sobre a Connect Eco"

  Scenario: A opção "Blog" aparece no cabeçalho
    Given que o cabeçalho está exibido
    Then a opção "Blog" deve aparecer no cabeçalho
    When clicar na opção "Blog"
    Then deve carregar a tela de "Blog"
	
  Scenario: Texto da opção selecionada fica destacado
    Given que uma opção do cabeçalho está selecionada
    Then o texto da opção selecionada deve estar em destaque

  Scenario: Botão "Faça parte"  é clicável
    Given que o cabeçalho está exibido
    Then a opção "Faça parte" deve aparecer no cabeçalho
    When clicar na opção "Faça parte"
    Then deve carregar a tela de "Faça parte"
	
  Scenario: Localização atual é exibida corretamente
    Given que o cabeçalho está exibido
    And uma localização foi selecionado
    Then a localização atual deve ser exibida no cabeçalho

  Scenario: Verificar elementos do cabeçalho na versão mobile
    Given que estou na versão mobile
    Then o logo deve aparecer no canto superior esquerdo do cabeçalho
    And um menu de navegação deve aparecer no canto superior direito do cabeçalho

  Scenario: Abrir o menu de navegação na versão mobile
    Given que estou na versão mobile
    When clico no ícone de lista no menu de navegação
    Then as opções "Home", "Sobre a Connect Eco", "Blog", o botão "Faça parte" e a localização devem ser exibidos

